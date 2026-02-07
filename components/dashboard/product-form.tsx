'use client'

import { useState } from 'react'
import { api } from '@/lib/api-client'
import { Plus } from 'lucide-react'

interface ProductFormProps {
    onSuccess: () => void
}

export function ProductForm({ onSuccess }: ProductFormProps) {
    const [name, setName] = useState('')
    const [url, setUrl] = useState('')
    const [category, setCategory] = useState('Diagnostic Tool')
    const [loading, setLoading] = useState(false)

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        setLoading(true)
        try {
            await api.post('/products', {
                product_name: name,
                product_url: url,
                category: category
            })
            setName('')
            setUrl('')
            setCategory('Diagnostic Tool')
            onSuccess()
            alert("Product saved successfully!")
        } catch (error) {
            console.error("Failed to save product", error)
            alert("Failed to save product. Check console for details.")
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm h-fit">
            <div className="flex items-center gap-3 mb-8">
                <div className="bg-[var(--status-success-bg)] p-2 rounded-lg">
                    <Plus className="w-5 h-5 text-[var(--status-success-text)]" />
                </div>
                <h3 className="font-bold text-lg text-[var(--text-primary)]">Add New Product</h3>
            </div>

            <form onSubmit={handleSubmit} className="space-y-6">
                <div>
                    <label className="block text-sm font-bold text-[var(--text-primary)] mb-2">Product Name</label>
                    <input
                        type="text"
                        placeholder="e.g. Soil Sensor X1"
                        className="w-full px-4 py-2.5 rounded-xl border border-[var(--border-light)] bg-gray-50/50 text-sm focus:outline-none focus:ring-2 focus:ring-[var(--accent-primary)]/20 focus:border-[var(--accent-primary)] transition-all"
                        value={name}
                        onChange={(e) => setName(e.target.value)}
                        required
                    />
                </div>

                <div>
                    <label className="block text-sm font-bold text-[var(--text-primary)] mb-2">Product URL / Endpoint</label>
                    <div className="relative">
                        <div className="absolute left-4 top-1/2 -translate-y-1/2 text-gray-400">
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.826a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1"></path></svg>
                        </div>
                        <input
                            type="url"
                            placeholder="https://api.agridiag.com/v1/..."
                            className="w-full pl-11 pr-4 py-2.5 rounded-xl border border-[var(--border-light)] bg-gray-50/50 text-sm focus:outline-none focus:ring-2 focus:ring-[var(--accent-primary)]/20 focus:border-[var(--accent-primary)] transition-all"
                            value={url}
                            onChange={(e) => setUrl(e.target.value)}
                        />
                    </div>
                </div>

                <div>
                    <label className="block text-sm font-bold text-[var(--text-primary)] mb-2">Category</label>
                    <select
                        className="w-full px-4 py-2.5 rounded-xl border border-[var(--border-light)] bg-gray-50/50 text-sm focus:outline-none focus:ring-2 focus:ring-[var(--accent-primary)]/20 focus:border-[var(--accent-primary)] transition-all appearance-none"
                        value={category}
                        onChange={(e) => setCategory(e.target.value)}
                    >
                        <option>Diagnostic Tool</option>
                        <option>Hardware Sensor</option>
                        <option>API Service</option>
                        <option>Analytics Module</option>
                    </select>
                </div>

                <button
                    type="submit"
                    disabled={loading}
                    className="w-full bg-[var(--accent-primary)] hover:bg-[var(--accent-hover)] text-white font-bold py-3 rounded-xl shadow-lg shadow-green-500/10 transition-all duration-200 disabled:opacity-50"
                >
                    {loading ? 'Saving...' : 'Save Product'}
                </button>

                <p className="text-center text-[10px] text-[var(--text-secondary)] mt-4">
                    New products are added to the &apos;Draft&apos; state by default.
                </p>
            </form>
        </div>
    )
}
