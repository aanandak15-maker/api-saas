'use client'

import { useState } from 'react'
import { api } from '@/lib/api-client'
import { Link2, ArrowRight } from 'lucide-react'

interface Disease {
    disease_id: string
    disease_name: string
}

interface Product {
    id: string
    product_name: string
}

interface MappingFormProps {
    diseases: Disease[]
    products: Product[]
    onSuccess: () => void
}

export function MappingForm({ diseases, products, onSuccess }: MappingFormProps) {
    const [diseaseId, setDiseaseId] = useState('')
    const [productId, setProductId] = useState('')
    const [loading, setLoading] = useState(false)

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        if (!diseaseId || !productId) return

        setLoading(true)
        try {
            await api.post('/mappings', {
                disease_id: diseaseId,
                product_id: productId,
                treatment_type: 'chemical' // Default
            })
            setDiseaseId('')
            setProductId('')
            onSuccess()
        } catch (error) {
            console.error("Mapping failed", error)
            alert("Failed to create mapping.")
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
            <div className="flex items-center gap-3 mb-8">
                <div className="bg-[var(--status-success-bg)] p-2 rounded-lg text-[var(--status-success-text)]">
                    <Link2 className="w-5 h-5" />
                </div>
                <h3 className="font-bold text-lg text-[var(--text-primary)]">Create New Mapping</h3>
            </div>

            <form onSubmit={handleSubmit} className="flex flex-wrap items-end gap-6">
                <div className="flex-1 min-w-[240px]">
                    <label className="block text-xs font-bold text-[var(--text-secondary)] uppercase mb-2">Select Disease</label>
                    <select
                        className="w-full px-4 py-3 rounded-xl border border-[var(--border-light)] bg-gray-50/50 text-sm focus:outline-none focus:ring-2 focus:ring-[var(--accent-primary)]/20 focus:border-[var(--accent-primary)] transition-all appearance-none"
                        value={diseaseId}
                        onChange={(e) => setDiseaseId(e.target.value)}
                        required
                    >
                        <option value="">Search or select a disease...</option>
                        {diseases.map(d => (
                            <option key={d.disease_id} value={d.disease_id}>{d.disease_name}</option>
                        ))}
                    </select>
                </div>

                <div className="flex items-center pb-3 text-gray-300">
                    <ArrowRight className="w-5 h-5" />
                </div>

                <div className="flex-1 min-w-[240px]">
                    <label className="block text-xs font-bold text-[var(--text-secondary)] uppercase mb-2">Select Product Kit</label>
                    <select
                        className="w-full px-4 py-3 rounded-xl border border-[var(--border-light)] bg-gray-50/50 text-sm focus:outline-none focus:ring-2 focus:ring-[var(--accent-primary)]/20 focus:border-[var(--accent-primary)] transition-all appearance-none"
                        value={productId}
                        onChange={(e) => setProductId(e.target.value)}
                        required
                    >
                        <option value="">Search or select a product...</option>
                        {products.map(p => (
                            <option key={p.id} value={p.id}>{p.product_name}</option>
                        ))}
                    </select>
                </div>

                <button
                    type="submit"
                    disabled={loading || !diseaseId || !productId}
                    className="bg-[var(--accent-primary)] hover:bg-[var(--accent-hover)] text-white font-bold h-[46px] px-8 rounded-xl shadow-lg shadow-green-500/10 transition-all duration-200 disabled:opacity-50 flex items-center gap-2"
                >
                    <div className="w-4 h-4 translate-y-[1px]">
                        <svg fill="currentColor" viewBox="0 0 20 20"><path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd"></path></svg>
                    </div>
                    {loading ? 'Mapping...' : 'Map Relationship'}
                </button>
            </form>
        </div>
    )
}
