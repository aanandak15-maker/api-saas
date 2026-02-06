'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { supabase } from '@/lib/supabase'

export default function Dashboard() {
    const router = useRouter()

    // Auth & Client State
    const [client, setClient] = useState<any>(null)
    const [loading, setLoading] = useState(true)
    const [activeTab, setActiveTab] = useState('inventory') // inventory, map, api, billing

    // Data State
    const [products, setProducts] = useState<any[]>([])
    const [mappings, setMappings] = useState<any[]>([])
    const [diseases, setDiseases] = useState<any[]>([])
    const [usageStats, setUsageStats] = useState({ total_calls: 0, calls_today: 0 })
    const [billingStats, setBillingStats] = useState<any>(null)

    const API_URL = process.env.NEXT_PUBLIC_API_URL || 'http://localhost:8000'

    // Forms State
    const [productForm, setProductForm] = useState({
        name: '',
        link: '',
        category: 'chemical'
    })
    const [mappingForm, setMappingForm] = useState({
        disease_id: '',
        product_id: '',
        treatment_type: 'chemical'
    })

    // Load Data
    useEffect(() => {
        async function loadData() {
            try {
                let email = ''

                // 1. Auth Check (Bypass for Dev)
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

                // 2. Fetch Client Profile
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
                            company_name: 'Test Company',
                            email: email || 'test@example.com',
                            id: 'mock_client_id'
                        }
                        setClient(mockClient)
                        apiKey = mockClient.api_key
                    } else {
                        throw err
                    }
                }

                if (!apiKey) return

                // 3. Fetch Data Parallel
                const headers = { 'X-API-Key': apiKey }

                const [prodRes, mapRes, disRes, statsRes, billRes] = await Promise.all([
                    fetch(`${API_URL}/products`, { headers }).catch(() => null),
                    fetch(`${API_URL}/mappings`, { headers }).catch(() => null),
                    fetch(`${API_URL}/diseases/list`, { headers }).catch(() => null),
                    fetch(`${API_URL}/client/usage-stats`, { headers }).catch(() => null),
                    fetch(`${API_URL}/client/billing-stats`, { headers }).catch(() => null)
                ])

                if (prodRes?.ok) {
                    const data = await prodRes.json()
                    setProducts(data.products || [])
                }

                if (billRes?.ok) {
                    const data = await billRes.json()
                    setBillingStats(data)
                }

                if (mapRes?.ok) {
                    const data = await mapRes.json()
                    setMappings(data.mappings || [])
                }

                if (disRes?.ok) {
                    const data = await disRes.json()
                    setDiseases(data.diseases || [])
                } else {
                    // Fallback diseases if API fails
                    setDiseases([
                        { disease_id: 'TOM-0680', disease_name: 'Tomato Early Blight' },
                        { disease_id: 'POT-0530', disease_name: 'Potato Early Blight' }
                    ])
                }

                if (statsRes?.ok) {
                    const data = await statsRes.json()
                    setUsageStats(data)
                }

            } catch (e) {
                console.error("Dashboard Load Error:", e)
            } finally {
                setLoading(false)
            }
        }
        loadData()
    }, [router])

    // --- ACTIONS ---

    const [copied, setCopied] = useState(false)

    async function handleCopyKey() {
        if (!client?.api_key) return
        await navigator.clipboard.writeText(client.api_key)
        setCopied(true)
        setTimeout(() => setCopied(false), 2000)
    }

    async function handleRotateKey() {
        if (!confirm("Are you sure? Your old key will stop working immediately.")) return

        try {
            // If dev mode with mock client, just fake it
            if (process.env.NODE_ENV === 'development' && client.id === 'mock_client_id') {
                const newKey = 'mock_rotated_' + Math.random().toString(36).substring(7)
                setClient({ ...client, api_key: newKey })
                alert("Key rotated! (Mock Mode)")
                return
            }

            const res = await fetch(`${API_URL}/client/regenerate-key`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ email: client.email })
            })

            if (!res.ok) throw new Error("Failed to rotate key")

            const data = await res.json()
            setClient({ ...client, api_key: data.api_key })
            alert(`Key Rotated! Secret: ${data.api_secret}\n(This is the only time you will see the secret.)`)

        } catch (err: any) {
            alert(err.message)
        }
    }

    async function handleAddProduct(e: React.FormEvent) {
        e.preventDefault()
        if (!client) return

        try {
            const res = await fetch(`${API_URL}/products`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json', 'X-API-Key': client.api_key },
                body: JSON.stringify({
                    product_name: productForm.name,
                    product_url: productForm.link,
                    category: productForm.category
                })
            })
            if (!res.ok) throw new Error("Failed to create product")

            const data = await res.json()
            setProducts([...products, data.product])
            setProductForm({ name: '', link: '', category: 'chemical' }) // Reset
        } catch (err: any) {
            alert(err.message)
        }
    }

    async function handleDeleteProduct(id: string) {
        if (!confirm("Are you sure? This will delete the product.")) return
        try {
            await fetch(`${API_URL}/products/${id}`, {
                method: 'DELETE',
                headers: { 'X-API-Key': client.api_key }
            })
            setProducts(products.filter(p => p.id !== id))
        } catch (err) {
            console.error(err)
        }
    }

    async function handleMapProduct(e: React.FormEvent) {
        e.preventDefault()
        try {
            const res = await fetch(`${API_URL}/mappings`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json', 'X-API-Key': client.api_key },
                body: JSON.stringify(mappingForm)
            })

            if (!res.ok) {
                const err = await res.json()
                throw new Error(err.error || "Mapping failed")
            }

            const data = await res.json()
            // Re-fetch mappings specifically to get join data if needed, 
            // OR manually construct object if simple. 
            // For now, let's just re-fetch all mappings to keep sync easy
            const mapRes = await fetch(`${API_URL}/mappings`, {
                headers: { 'X-API-Key': client.api_key }
            })
            if (mapRes.ok) {
                const mapData = await mapRes.json()
                setMappings(mapData.mappings || [])
            }

            setMappingForm({ ...mappingForm, disease_id: '' }) // Reset disease selection
        } catch (err: any) {
            alert(err.message)
        }
    }

    async function handleDeleteMapping(id: string) {
        if (!confirm("Remove this mapping?")) return
        try {
            await fetch(`${API_URL}/mappings/${id}`, {
                method: 'DELETE',
                headers: { 'X-API-Key': client.api_key }
            })
            setMappings(mappings.filter(m => m.id !== id))
        } catch (err) {
            console.error(err)
        }
    }

    // Helpers to look up names
    const getProductName = (id: string) => products.find(p => p.id === id)?.product_name || id
    const getDiseaseName = (id: string) => diseases.find(d => d.id === id || d.disease_id === id)?.disease_name || id

    if (loading) return <div className="p-8">Loading...</div>

    return (
        <div className="min-h-screen bg-gray-50 font-sans">
            <header className="bg-white shadow">
                <div className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8 flex justify-between items-center">
                    <h1 className="text-3xl font-bold tracking-tight text-gray-900">Dashboard {process.env.NODE_ENV === 'development' && '(Demo)'}</h1>
                    <button onClick={() => router.push('/login')} className="text-sm text-green-600 hover:text-green-800">Logout</button>
                </div>
            </header>

            <main className="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">

                {/* API Key */}
                <div className="bg-white shadow rounded-lg mb-8 p-6">
                    <div className="flex justify-between items-start">
                        <div>
                            <h3 className="text-base font-semibold text-gray-900">Your API Access</h3>
                            <div className="mt-2 text-sm text-gray-500 max-w-xl">
                                Use this key to authenticate your requests. Keep it secret!
                            </div>
                        </div>
                        <div className="flex space-x-3">
                            <button onClick={handleCopyKey} className="text-sm border border-gray-300 rounded px-3 py-1 hover:bg-gray-50 text-gray-700">
                                {copied ? 'Copied!' : 'Copy Key'}
                            </button>
                            <button onClick={handleRotateKey} className="text-sm border border-red-200 text-red-600 rounded px-3 py-1 hover:bg-red-50">
                                Rotate Key
                            </button>
                        </div>
                    </div>
                    <nav className="flex space-x-4 border-b border-gray-200 mt-4">
                        <button
                            onClick={() => setActiveTab('inventory')}
                            className={`px-4 py-2 text-sm font-medium border-b-2 ${activeTab === 'inventory' ? 'border-blue-500 text-blue-600' : 'border-transparent text-gray-500 hover:text-gray-700'}`}
                        >
                            Products
                        </button>
                        <button
                            onClick={() => setActiveTab('map')}
                            className={`px-4 py-2 text-sm font-medium border-b-2 ${activeTab === 'map' ? 'border-blue-500 text-blue-600' : 'border-transparent text-gray-500 hover:text-gray-700'}`}
                        >
                            Mappings
                        </button>
                        <button
                            onClick={() => setActiveTab('api')}
                            className={`px-4 py-2 text-sm font-medium border-b-2 ${activeTab === 'api' ? 'border-blue-500 text-blue-600' : 'border-transparent text-gray-500 hover:text-gray-700'}`}
                        >
                            Developer API
                        </button>
                        <button
                            onClick={() => setActiveTab('billing')}
                            className={`px-4 py-2 text-sm font-medium border-b-2 ${activeTab === 'billing' ? 'border-blue-500 text-blue-600' : 'border-transparent text-gray-500 hover:text-gray-700'}`}
                        >
                            Usage & Billing
                        </button>
                    </nav>
                    <div className="mt-4 flex items-center">
                        <code className="bg-gray-100 px-3 py-2 rounded text-sm font-mono break-all border border-gray-200 w-full sm:w-auto">
                            {client?.api_key || 'Loading...'}
                        </code>
                    </div>
                </div>

                {/* Usage Stats (New for Step 3) */}
                <div className="bg-white shadow rounded-lg mb-8 overflow-hidden">
                    <div className="px-6 py-5 border-b border-gray-200">
                        <h3 className="text-base font-semibold leading-6 text-gray-900">Usage Analytics</h3>
                    </div>
                    <div className="px-6 py-5 grid grid-cols-1 md:grid-cols-3 gap-6">
                        <div className="bg-gray-50 rounded-lg p-4 text-center border border-gray-100">
                            <dt className="text-xs font-medium text-gray-500 uppercase tracking-wide">Total Calls</dt>
                            <dd className="mt-1 text-3xl font-semibold text-green-600">{usageStats.total_calls}</dd>
                        </div>
                        <div className="bg-gray-50 rounded-lg p-4 text-center border border-gray-100">
                            <dt className="text-xs font-medium text-gray-500 uppercase tracking-wide">Calls Today</dt>
                            <dd className="mt-1 text-3xl font-semibold text-gray-900">{usageStats.calls_today}</dd>
                        </div>
                        <div className="bg-gray-50 rounded-lg p-4 text-center border border-gray-100 opcaity-50">
                            <dt className="text-xs font-medium text-gray-500 uppercase tracking-wide">Plan Limit</dt>
                            <dd className="mt-1 text-lg font-medium text-gray-500 mt-2">Unlimited (Beta)</dd>
                        </div>
                    </div>
                </div>

                {activeTab === 'inventory' && (
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-8">

                        {/* LEFT COLUMN: PRODUCTS */}
                        <div>
                            <div className="bg-white shadow rounded-lg p-6 mb-6">
                                <h3 className="text-lg font-semibold text-gray-900 mb-4">1. Manage Products</h3>

                                {/* Add Product Form */}
                                <form onSubmit={handleAddProduct} className="space-y-4 mb-8 border-b pb-6">
                                    <div>
                                        <label className="block text-sm font-medium text-gray-700">Product Name</label>
                                        <input type="text" required
                                            className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 sm:text-sm px-3 py-2 border"
                                            value={productForm.name}
                                            onChange={e => setProductForm({ ...productForm, name: e.target.value })}
                                            placeholder="e.g. Acme Pesticide X"
                                        />
                                    </div>
                                    <div>
                                        <label className="block text-sm font-medium text-gray-700">Buying Link</label>
                                        <input type="url" required
                                            className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 sm:text-sm px-3 py-2 border"
                                            value={productForm.link}
                                            onChange={e => setProductForm({ ...productForm, link: e.target.value })}
                                            placeholder="https://..."
                                        />
                                    </div>
                                    <button type="submit" className="w-full bg-green-600 text-white py-2 px-4 rounded-md hover:bg-green-700 text-sm font-medium">
                                        Add New Product
                                    </button>
                                </form>

                                {/* Products List */}
                                <h4 className="text-sm font-medium text-gray-500 uppercase tracking-wide mb-3">Your Inventory</h4>
                                <ul className="divide-y divide-gray-100">
                                    {products.length === 0 && <p className="text-sm text-gray-400 italic">No products added yet.</p>}
                                    {products.map(p => (
                                        <li key={p.id} className="py-3 flex justify-between items-center group">
                                            <div>
                                                <p className="text-sm font-medium text-gray-900">{p.product_name}</p>
                                                <a href={p.product_url} target="_blank" className="text-xs text-green-600 hover:underline truncate block max-w-[200px]">{p.product_url}</a>
                                            </div>
                                            <button onClick={() => handleDeleteProduct(p.id)} className="text-red-400 hover:text-red-600 text-xs opacity-0 group-hover:opacity-100 transition-opacity">Delete</button>
                                        </li>
                                    ))}
                                </ul>
                            </div>
                        </div>

                        {/* RIGHT COLUMN: MAPPINGS */}
                        <div>
                            <div className="bg-white shadow rounded-lg p-6">
                                <h3 className="text-lg font-semibold text-gray-900 mb-4">2. Map to Diseases</h3>

                                {/* Map Form */}
                                <form onSubmit={handleMapProduct} className="space-y-4 mb-8 border-b pb-6">
                                    <div>
                                        <label className="block text-sm font-medium text-gray-700">Select Product</label>
                                        <select required
                                            className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 sm:text-sm px-3 py-2 border bg-white"
                                            value={mappingForm.product_id}
                                            onChange={e => setMappingForm({ ...mappingForm, product_id: e.target.value })}
                                        >
                                            <option value="">-- Choose Product --</option>
                                            {products.map(p => <option key={p.id} value={p.id}>{p.product_name}</option>)}
                                        </select>
                                    </div>

                                    <div>
                                        <label className="block text-sm font-medium text-gray-700">Select Disease</label>
                                        <select required
                                            className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 sm:text-sm px-3 py-2 border bg-white"
                                            value={mappingForm.disease_id}
                                            onChange={e => setMappingForm({ ...mappingForm, disease_id: e.target.value })}
                                        >
                                            <option value="">-- Choose Disease --</option>
                                            {diseases.map(d => (
                                                <option key={d.id || d.disease_id} value={d.disease_id}>{d.disease_name} ({d.crop})</option>
                                            ))}
                                        </select>
                                    </div>

                                    <button type="submit" disabled={products.length === 0}
                                        className="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 text-sm font-medium disabled:opacity-50 disabled:cursor-not-allowed">
                                        Create Mapping
                                    </button>
                                </form>

                                {/* Mappings List */}
                                <h4 className="text-sm font-medium text-gray-500 uppercase tracking-wide mb-3">Active Mappings</h4>
                                <ul className="divide-y divide-gray-100">
                                    {mappings.length === 0 && <p className="text-sm text-gray-400 italic">No mappings active.</p>}
                                    {mappings.map(m => (
                                        <li key={m.id} className="py-3 flex justify-between items-start group">
                                            <div>
                                                <span className="inline-flex items-center rounded-md bg-blue-50 px-2 py-1 text-xs font-medium text-blue-700 ring-1 ring-inset ring-blue-700/10 mb-1">{m.treatment_type}</span>
                                                <p className="text-sm text-gray-900">
                                                    <strong>{getProductName(m.product_id)}</strong>
                                                    <span className="text-gray-400 mx-1">→</span>
                                                    {getDiseaseName(m.disease_id)}
                                                </p>
                                            </div>
                                            <button onClick={() => handleDeleteMapping(m.id)} className="text-red-400 hover:text-red-600 text-xs opacity-0 group-hover:opacity-100 transition-opacity">Unmap</button>
                                        </li>
                                    ))}
                                </ul>
                            </div>
                        </div>

                    </div>
                )}

                {activeTab === 'billing' && (
                    <div className="bg-white shadow rounded-lg overflow-hidden mt-8">
                        <div className="px-6 py-5 border-b border-gray-200 bg-gray-50 flex justify-between items-center">
                            <div>
                                <h3 className="text-lg font-semibold leading-6 text-gray-900">Usage & Billing</h3>
                                <p className="mt-1 text-sm text-gray-500">Track your API consumption and estimated costs.</p>
                            </div>
                            <span className="inline-flex items-center rounded-md bg-blue-50 px-2 py-1 text-xs font-medium text-blue-700 ring-1 ring-inset ring-blue-700/10">
                                {billingStats?.plan || 'Starter'} Plan
                            </span>
                        </div>
                        <div className="p-6">
                            <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                                <div className="bg-white p-6 rounded-lg border border-gray-200">
                                    <div className="text-sm font-medium text-gray-500">Total Calls</div>
                                    <div className="mt-2 text-3xl font-bold text-gray-900">
                                        {billingStats?.calls_this_month || usageStats?.total_calls || 0}
                                    </div>
                                    <div className="text-xs text-gray-400 mt-1">all time</div>
                                </div>
                                <div className="bg-white p-6 rounded-lg border border-gray-200">
                                    <div className="text-sm font-medium text-gray-500">Estimated Cost</div>
                                    <div className="mt-2 text-3xl font-bold text-gray-900 text-green-600">
                                        ${billingStats?.estimated_cost?.toFixed(2) || '0.00'}
                                    </div>
                                    <div className="text-xs text-gray-400 mt-1">based on usage</div>
                                </div>
                                <div className="bg-white p-6 rounded-lg border border-gray-200 flex flex-col justify-center items-center">
                                    <a
                                        href={`${API_URL}/client/export-usage`}
                                        target="_blank"
                                        className="w-full flex items-center justify-center gap-2 px-4 py-2 bg-blue-600 text-white rounded-md shadow hover:bg-blue-700 transition"
                                    >
                                        <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
                                        </svg>
                                        Export Usage (CSV)
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                )}

                {/* API Documentation Section */}
                {activeTab === 'api' && (
                    <div className="mt-12 bg-white shadow rounded-lg overflow-hidden">
                        <div className="px-6 py-5 border-b border-gray-200 bg-gray-50">
                            <h3 className="text-lg font-semibold leading-6 text-gray-900">Developer API Reference</h3>
                            <p className="mt-1 text-sm text-gray-500">Integrate Disease Intelligence directly into your applications.</p>
                        </div>
                        <div className="p-6">
                            <div className="prose prose-blue max-w-none">
                                <h4 className="text-md font-medium text-gray-900 mt-4 mb-2">Authentication</h4>
                                <p className="text-sm text-gray-600 mb-4">
                                    Include your API key in the header of every request: <code className="bg-gray-100 px-2 py-1 rounded">X-API-Key: {client?.api_key || 'YOUR_API_KEY'}</code>
                                </p>

                                <div className="border rounded-md mb-6 overflow-hidden">
                                    <div className="bg-gray-100 px-4 py-2 border-b text-sm font-medium flex justify-between">
                                        <span>POST /detect</span>
                                        <span className="text-gray-500">Analyze Plant Image</span>
                                    </div>
                                    <div className="p-4 bg-gray-50 text-sm font-mono overflow-x-auto">
                                        <span className="text-purple-600">curl</span> -X POST http://localhost:8000/detect \<br />
                                        &nbsp;&nbsp;-H <span className="text-green-600">&quot;X-API-Key: {client?.api_key || 'YOUR_KEY'}&quot;</span> \<br />
                                        &nbsp;&nbsp;-F <span className="text-blue-600">&quot;image=@/path/to/tomato_leaf.jpg&quot;</span>
                                    </div>
                                    <div className="p-4 border-t text-sm">
                                        <p className="font-semibold mb-2">Response Example:</p>
                                        <pre className="bg-gray-900 text-green-400 p-3 rounded text-xs overflow-x-auto">
                                            {`{
  "success": true,
  "detected_disease": {
    "disease_name": "Tomato Early Blight",
    "confidence": 0.94,
    "crop": "Tomato"
  },
  "advisory_url": "https://api.disease-intel.com/disease/TOM-0045"
}`}
                                        </pre>
                                    </div>
                                </div>

                                <div className="border rounded-md mb-6 overflow-hidden">
                                    <div className="bg-gray-100 px-4 py-2 border-b text-sm font-medium flex justify-between">
                                        <span>POST /detect-result</span>
                                        <span className="text-gray-500">Get Treatment & Products</span>
                                    </div>
                                    <div className="p-4 text-sm text-gray-600 border-b">
                                        Use this if you run your own ML model and just need our agronomy data and your mapped products.
                                    </div>
                                    <div className="p-4 bg-gray-50 text-sm font-mono overflow-x-auto">
                                        <span className="text-purple-600">curl</span> -X POST http://localhost:8000/detect-result \<br />
                                        &nbsp;&nbsp;-H <span className="text-green-600">&quot;X-API-Key: {client?.api_key || 'YOUR_KEY'}&quot;</span> \<br />
                                        &nbsp;&nbsp;-d <span className="text-blue-600">&apos;{`{"crop": "Tomato", "disease": "Early Blight"}'`}&apos;</span>
                                    </div>
                                </div>

                                <div className="mt-6">
                                    <a href="http://localhost:8000/docs" target="_blank" className="text-blue-600 hover:text-blue-800 text-sm font-medium hover:underline">
                                        View Full Swagger Documentation &rarr;
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                )}
            </main>
        </div>
    )
}
