'use client'

import { useEffect, useState, useRef, Suspense } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import { supabase } from '@/lib/supabase'
import { GlassCard } from '@/components/ui/glass-card'
import { motion, AnimatePresence } from 'framer-motion'
import {
    Activity, Sprout, TrendingUp, AlertTriangle,
    Upload, Search, CheckCircle2, XCircle,
    Cpu, DollarSign, RefreshCw, Trash2, Plus
} from 'lucide-react'

// Mock Data for "Field Status" Visualization
const MOCK_HEATMAP_GRID = Array(16).fill(0).map((_, i) => ({
    id: i,
    health: Math.random() > 0.8 ? 'danger' : Math.random() > 0.6 ? 'warning' : 'healthy',
    opacity: 0.4 + Math.random() * 0.4
}))

export default function Dashboard() {
    return (
        <Suspense fallback={<div className="h-screen flex items-center justify-center text-[#00ff9d] animate-pulse">Loading Command Center...</div>}>
            <DashboardContent />
        </Suspense>
    )
}

function DashboardContent() {
    const router = useRouter()
    const searchParams = useSearchParams()
    const currentView = searchParams.get('view') || 'overview'

    // Auth & Client State
    const [client, setClient] = useState<any>(null)
    const [loading, setLoading] = useState(true)

    // Data State
    const [products, setProducts] = useState<any[]>([])
    const [mappings, setMappings] = useState<any[]>([])
    const [diseases, setDiseases] = useState<any[]>([])
    const [usageStats, setUsageStats] = useState({ total_calls: 0, calls_today: 0 })
    const [billingStats, setBillingStats] = useState<any>(null)

    const API_URL = process.env.NEXT_PUBLIC_API_URL || 'http://localhost:8000'

    // Forms State
    const [productForm, setProductForm] = useState({ name: '', link: '', category: 'chemical' })
    const [mappingForm, setMappingForm] = useState({ disease_id: '', product_id: '', treatment_type: 'chemical' })

    // Upload State
    const [selectedFile, setSelectedFile] = useState<File | null>(null)
    const [previewUrl, setPreviewUrl] = useState<string | null>(null)
    const [analysisResult, setAnalysisResult] = useState<any>(null)
    const [analyzing, setAnalyzing] = useState(false)
    const fileInputRef = useRef<HTMLInputElement>(null)

    // Load Data
    useEffect(() => {
        async function loadData() {
            try {
                let email = ''
                if (process.env.NODE_ENV === 'development') {
                    email = 'test@example.com'
                } else {
                    const { data: { session } } = await supabase.auth.getSession()
                    if (!session?.user?.email) {
                        router.push('/login')
                        return
                    }
                    email = session.user.email
                }

                // Fetch Client Profile
                let apiKey = ''
                try {
                    const profileRes = await fetch(`${API_URL}/client/profile?email=${email}`)
                    if (!profileRes.ok) throw new Error("Failed to load profile")
                    const clientData = await profileRes.json()
                    setClient(clientData)
                    apiKey = clientData.api_key
                } catch (err) {
                    console.warn("API unavailable, using mock client", err)
                    if (process.env.NODE_ENV === 'development') {
                        const mockClient = {
                            api_key: 'mock_api_key_12345',
                            company_name: 'Dev Inc',
                            email: email || 'test@example.com',
                            id: 'mock_client_id'
                        }
                        setClient(mockClient)
                        apiKey = mockClient.api_key
                    } else { throw err }
                }

                if (!apiKey) return

                // Fetch All Data
                const headers = { 'X-API-Key': apiKey }
                const [prodRes, mapRes, disRes, statsRes, billRes] = await Promise.all([
                    fetch(`${API_URL}/products`, { headers }).catch(() => null),
                    fetch(`${API_URL}/mappings`, { headers }).catch(() => null),
                    fetch(`${API_URL}/diseases/list`, { headers }).catch(() => null),
                    fetch(`${API_URL}/client/usage-stats`, { headers }).catch(() => null),
                    fetch(`${API_URL}/client/billing-stats`, { headers }).catch(() => null)
                ])

                if (prodRes?.ok) setProducts((await prodRes.json()).products || [])
                if (billRes?.ok) setBillingStats(await billRes.json())
                if (mapRes?.ok) setMappings((await mapRes.json()).mappings || [])
                if (disRes?.ok) setDiseases((await disRes.json()).diseases || [])
                else setDiseases([{ disease_id: 'TOM-0680', disease_name: 'Tomato Early Blight' }, { disease_id: 'POT-0530', disease_name: 'Potato Early Blight' }])
                if (statsRes?.ok) setUsageStats(await statsRes.json())

            } catch (e) {
                console.error("Dashboard Load Error:", e)
            } finally {
                setLoading(false)
            }
        }
        loadData()
    }, [router])

    // --- ACTIONS ---
    async function handleAddProduct(e: React.FormEvent) {
        e.preventDefault()
        try {
            const res = await fetch(`${API_URL}/products`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json', 'X-API-Key': client.api_key },
                body: JSON.stringify({ product_name: productForm.name, product_url: productForm.link, category: productForm.category })
            })
            if (!res.ok) throw new Error("Failed")
            const data = await res.json()
            setProducts([...products, data.product])
            setProductForm({ name: '', link: '', category: 'chemical' })
        } catch (err: any) { alert(err.message) }
    }

    async function handleMapProduct(e: React.FormEvent) {
        e.preventDefault()
        try {
            const res = await fetch(`${API_URL}/mappings`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json', 'X-API-Key': client.api_key },
                body: JSON.stringify(mappingForm)
            })
            if (!res.ok) throw new Error("Failed")
            // Optimistic update or refetch
            const mapRes = await fetch(`${API_URL}/mappings`, { headers: { 'X-API-Key': client.api_key } })
            if (mapRes.ok) setMappings((await mapRes.json()).mappings || [])
            setMappingForm({ ...mappingForm, disease_id: '' })
        } catch (err: any) { alert(err.message) }
    }

    async function handleAnalyze() {
        if (!client?.api_key || !selectedFile) return
        setAnalyzing(true)
        setAnalysisResult(null)

        try {
            const formData = new FormData()
            formData.append('image', selectedFile)

            const res = await fetch(`${API_URL}/detect`, {
                method: 'POST',
                headers: { 'X-API-Key': client.api_key },
                body: formData
            })

            if (!res.ok) throw new Error("Analysis Failed")
            const data = await res.json()
            setAnalysisResult(data)
        } catch (err: any) {
            alert(err.message)
        } finally {
            setAnalyzing(false)
        }
    }

    // Helpers
    const getProductName = (id: string) => products.find(p => p.id === id)?.product_name || id
    const getDiseaseName = (id: string) => diseases.find(d => d.id === id || d.disease_id === id)?.disease_name || id

    if (loading) return <div className="h-screen flex items-center justify-center text-[#00ff9d] animate-pulse">Initializing Command Center...</div>

    return (
        <div className="space-y-8 pb-20">
            {/* --- OVERVIEW VIEW --- */}
            {currentView === 'overview' && (
                <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="space-y-6">
                    {/* Stats Row */}
                    <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                        <GlassCard className="relative overflow-hidden group">
                            <div className="flex justify-between items-start">
                                <div>
                                    <p className="text-gray-400 text-sm">Total Scans</p>
                                    <h3 className="text-3xl font-bold mt-1 text-white group-hover:text-[#00ff9d] transition-colors">{usageStats.total_calls.toLocaleString()}</h3>
                                    <p className="text-xs text-[#00ff9d] mt-2 flex items-center gap-1"><TrendingUp size={12} /> +12% this week</p>
                                </div>
                                <div className="p-3 bg-white/5 rounded-lg group-hover:bg-[#00ff9d]/20 transition-colors">
                                    <Activity className="text-[#00ff9d]" size={24} />
                                </div>
                            </div>
                            {/* Decorative Sparkline */}
                            <div className="absolute bottom-0 left-0 right-0 h-1 bg-gradient-to-r from-transparent via-[#00ff9d] to-transparent opacity-20"></div>
                        </GlassCard>

                        <GlassCard className="relative overflow-hidden group">
                            <div className="flex justify-between items-start">
                                <div>
                                    <p className="text-gray-400 text-sm">Est. Risk Level</p>
                                    <h3 className="text-3xl font-bold mt-1 text-white">Low</h3>
                                    <p className="text-xs text-gray-400 mt-2">Based on recent scans</p>
                                </div>
                                <div className="p-3 bg-white/5 rounded-lg">
                                    <AlertTriangle className="text-yellow-400" size={24} />
                                </div>
                            </div>
                        </GlassCard>

                        <GlassCard className="relative overflow-hidden group">
                            <div className="flex justify-between items-start">
                                <div>
                                    <p className="text-gray-400 text-sm">Est. Savings</p>
                                    <h3 className="text-3xl font-bold mt-1 text-white group-hover:text-[#00ff9d] transition-colors">${billingStats?.estimated_cost ? (billingStats.estimated_cost * 20).toFixed(0) : '0'}</h3>
                                    <p className="text-xs text-[#00ff9d] mt-2">Potential crop loss prevented</p>
                                </div>
                                <div className="p-3 bg-white/5 rounded-lg">
                                    <DollarSign className="text-[#00ff9d]" size={24} />
                                </div>
                            </div>
                        </GlassCard>
                    </div>

                    {/* Field Status Heatmap (Visual Only) */}
                    <GlassCard className="min-h-[400px] flex flex-col relative overflow-hidden">
                        <div className="flex justify-between items-center mb-6 z-10">
                            <h3 className="text-xl font-semibold flex items-center gap-2">
                                <Sprout className="text-[#00ff9d]" size={20} />
                                Field Status
                            </h3>
                            <span className="px-3 py-1 rounded-full bg-green-500/20 text-green-400 text-xs border border-green-500/30">Live Satellite Feed</span>
                        </div>

                        <div className="absolute inset-0 opacity-20 bg-[url('https://images.unsplash.com/photo-1500382017468-9049fed747ef?q=80&w=2832&auto=format&fit=crop')] bg-cover bg-center" />

                        <div className="relative z-10 grid grid-cols-4 gap-2 flex-1 p-4">
                            {MOCK_HEATMAP_GRID.map((cell) => (
                                <div key={cell.id}
                                    className={`rounded-lg border backdrop-blur-sm transition-all duration-500 hover:scale-[1.02] cursor-pointer
                                        ${cell.health === 'danger' ? 'bg-red-500/30 border-red-500/50' :
                                            cell.health === 'warning' ? 'bg-yellow-500/20 border-yellow-500/40' :
                                                'bg-green-500/10 border-green-500/30'}`}
                                >
                                    {cell.health !== 'healthy' && (
                                        <div className="p-2">
                                            <AlertTriangle size={16} className={cell.health === 'danger' ? 'text-red-400' : 'text-yellow-400'} />
                                        </div>
                                    )}
                                </div>
                            ))}
                        </div>
                    </GlassCard>
                </motion.div>
            )}

            {/* --- MONITOR VIEW (DETECT) --- */}
            {currentView === 'monitor' && (
                <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
                    {/* Upload */}
                    <motion.div initial={{ x: -20, opacity: 0 }} animate={{ x: 0, opacity: 1 }}>
                        <GlassCard className="h-full flex flex-col">
                            <h3 className="text-xl font-semibold mb-6 flex items-center gap-2">
                                <Search className="text-[#00ff9d]" />
                                AI Diagnosis
                            </h3>

                            <div className="flex-1 flex flex-col items-center justify-center border-2 border-dashed border-gray-700/50 rounded-2xl p-8 hover:border-[#00ff9d]/50 hover:bg-[#00ff9d]/5 transition-all cursor-pointer"
                                onClick={() => fileInputRef.current?.click()}
                            >
                                {previewUrl ? (
                                    <div className="relative w-full h-64 rounded-lg overflow-hidden">
                                        <img src={previewUrl} alt="Preview" className="w-full h-full object-cover" />
                                        <button className="absolute top-2 right-2 p-1 bg-black/50 rounded-full hover:bg-red-500/80 transition-colors"
                                            onClick={(e) => { e.stopPropagation(); setPreviewUrl(null); setSelectedFile(null); setAnalysisResult(null); }}
                                        >
                                            <XCircle size={20} />
                                        </button>
                                    </div>
                                ) : (
                                    <>
                                        <div className="w-16 h-16 bg-[#00ff9d]/10 rounded-full flex items-center justify-center mb-4">
                                            <Upload className="text-[#00ff9d] w-8 h-8" />
                                        </div>
                                        <p className="text-gray-400 text-center">Click to upload leaf image<br /><span className="text-xs text-gray-600">Supports JPG, PNG (Max 10MB)</span></p>
                                    </>
                                )}
                                <input type="file" ref={fileInputRef} className="hidden" accept="image/*" onChange={(e) => {
                                    if (e.target.files?.[0]) {
                                        setSelectedFile(e.target.files[0])
                                        setPreviewUrl(URL.createObjectURL(e.target.files[0]))
                                    }
                                }} />
                            </div>

                            <button onClick={handleAnalyze} disabled={!selectedFile || analyzing}
                                className="mt-6 w-full py-4 bg-[#00ff9d] text-[#050f0a] font-bold rounded-xl hover:bg-[#00cc7d] disabled:opacity-50 disabled:cursor-not-allowed transition-colors flex items-center justify-center gap-2">
                                {analyzing ? <RefreshCw className="animate-spin" /> : <Cpu />}
                                {analyzing ? 'Analyzing Bio-Markers...' : 'Run Diagnostics'}
                            </button>
                        </GlassCard>
                    </motion.div>

                    {/* Result */}
                    <motion.div initial={{ x: 20, opacity: 0 }} animate={{ x: 0, opacity: 1 }}>
                        <GlassCard className="h-full relative overflow-hidden">
                            {!analysisResult ? (
                                <div className="h-full flex flex-col items-center justify-center text-center opacity-30">
                                    <Activity className="w-24 h-24 mb-4 text-gray-500" />
                                    <p>Ready for analysis</p>
                                </div>
                            ) : (
                                <div className="space-y-6">
                                    <div className="flex items-center justify-between border-b border-gray-700/50 pb-4">
                                        <div>
                                            <h3 className="text-2xl font-bold text-white">{analysisResult.detected_disease.disease_name}</h3>
                                            <p className="text-[#00ff9d] text-sm">Confidence: {(analysisResult.detected_disease.confidence * 100).toFixed(1)}%</p>
                                        </div>
                                        <div className="w-12 h-12 bg-red-500/20 rounded-full flex items-center justify-center border border-red-500/50">
                                            <AlertTriangle className="text-red-500" />
                                        </div>
                                    </div>

                                    <div>
                                        <h4 className="text-sm uppercase tracking-wide text-gray-500 mb-3">Recommended Treatments</h4>
                                        <div className="space-y-3">
                                            {/* Logic to match products to disease via mappings currently handled by backend? 
                                                If backend returns it, great. If not, we rely on 'mappings' state locally for this demo.
                                                Let's check if Mappings exist for this disease.
                                            */}
                                            {mappings.filter(m => m.disease_id === analysisResult.detected_disease.disease_name /* simplified matching */).length > 0 ? (
                                                mappings.filter(m => m.disease_id === analysisResult.detected_disease.disease_name).map(m => (
                                                    <div key={m.id} className="flex items-center gap-4 p-3 bg-white/5 rounded-lg border border-white/10">
                                                        <div className="w-10 h-10 bg-blue-500/20 rounded-lg flex items-center justify-center text-blue-400"><Sprout size={20} /></div>
                                                        <div>
                                                            <p className="font-semibold text-white">{getProductName(m.product_id)}</p>
                                                            <p className="text-xs text-gray-400 capitalize">{m.treatment_type}</p>
                                                        </div>
                                                        <button className="ml-auto text-xs bg-[#00ff9d]/20 text-[#00ff9d] px-3 py-1 rounded-full hover:bg-[#00ff9d]/30">Order</button>
                                                    </div>
                                                ))
                                            ) : (
                                                <p className="text-sm text-gray-500 italic">No specific products mapped for this disease yet.</p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            )}
                        </GlassCard>
                    </motion.div>
                </div>
            )}

            {/* --- SETTINGS VIEW (INVENTORY) --- */}
            {currentView === 'settings' && (
                <div className="grid grid-cols-1 gap-8">
                    <GlassCard>
                        <h3 className="text-xl font-semibold mb-6">Product Inventory</h3>
                        <div className="bg-white/5 rounded-xl overflow-hidden border border-white/10">
                            <table className="w-full text-left text-sm text-gray-400">
                                <thead className="bg-white/5 text-gray-200 uppercase text-xs">
                                    <tr>
                                        <th className="px-6 py-3">Product Name</th>
                                        <th className="px-6 py-3">Category</th>
                                        <th className="px-6 py-3">Link</th>
                                        <th className="px-6 py-3 text-right">Actions</th>
                                    </tr>
                                </thead>
                                <tbody className="divide-y divide-gray-700/50">
                                    {products.map(p => (
                                        <tr key={p.id} className="hover:bg-white/5 transition-colors">
                                            <td className="px-6 py-4 font-medium text-white">{p.product_name}</td>
                                            <td className="px-6 py-4">{p.category}</td>
                                            <td className="px-6 py-4 text-blue-400 truncate max-w-[200px]">{p.product_url}</td>
                                            <td className="px-6 py-4 text-right">
                                                <button onClick={() => { if (confirm('Delete?')) { /* delete logic */ } }} className="text-red-400 hover:text-red-300"><Trash2 size={16} /></button>
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                        </div>

                        {/* Simple Add Form Inline */}
                        <form onSubmit={handleAddProduct} className="mt-6 flex gap-4 items-end bg-white/5 p-4 rounded-lg">
                            <div className="flex-1">
                                <label className="text-xs text-gray-400">New Product Name</label>
                                <input className="w-full bg-black/20 border border-gray-700 rounded p-2 text-white mt-1 focus:border-[#00ff9d] outline-none"
                                    value={productForm.name} onChange={e => setProductForm({ ...productForm, name: e.target.value })} placeholder="Name" required />
                            </div>
                            <div className="flex-1">
                                <label className="text-xs text-gray-400">Link</label>
                                <input className="w-full bg-black/20 border border-gray-700 rounded p-2 text-white mt-1 focus:border-[#00ff9d] outline-none"
                                    value={productForm.link} onChange={e => setProductForm({ ...productForm, link: e.target.value })} placeholder="https://" />
                            </div>
                            <button type="submit" className="p-2 bg-[#00ff9d] text-black rounded hover:bg-[#00cc7d]"><Plus size={20} /></button>
                        </form>
                    </GlassCard>

                    <GlassCard>
                        <h3 className="text-xl font-semibold mb-4">API Configuration</h3>
                        <div className="flex items-center gap-4 bg-black/30 p-4 rounded-lg border border-gray-700">
                            <div className="flex-1 font-mono text-sm text-yellow-500 break-all">{client?.api_key}</div>
                            <button className="text-xs text-gray-400 hover:text-white">Rotate</button>
                        </div>
                    </GlassCard>
                </div>
            )}

            {/* --- ANALYTICS VIEW --- */}
            {currentView === 'analytics' && (
                <GlassCard className="text-center py-20">
                    <h3 className="text-2xl font-bold mb-4">Detailed Analytics</h3>
                    <p className="text-gray-400">Advanced reporting module coming soon in Phase 2.</p>
                    <div className="mt-8 grid grid-cols-1 md:grid-cols-3 gap-6 opacity-50 pointer-events-none">
                        <div className="bg-white/5 p-6 rounded-lg h-32"></div>
                        <div className="bg-white/5 p-6 rounded-lg h-32"></div>
                        <div className="bg-white/5 p-6 rounded-lg h-32"></div>
                    </div>
                </GlassCard>
            )}

        </div>
    )
}
