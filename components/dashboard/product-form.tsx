'use client'

import { useState } from 'react'
import { api } from '@/lib/api-client'
import { Plus } from 'lucide-react'

interface ProductFormProps {
    onSuccess: () => void
    disabled?: boolean
    limitMessage?: string
}

export function ProductForm({ onSuccess, disabled, limitMessage }: ProductFormProps) {
    const [name, setName] = useState('')
    const [url, setUrl] = useState('')
    const [imageUrl, setImageUrl] = useState('')
    const [category, setCategory] = useState('Diagnostic Tool')
    const [loading, setLoading] = useState(false)

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        setLoading(true)
        try {
            await api.post('/products', {
                product_name: name,
                product_url: url,
                image_url: imageUrl,
                category: category
            })
            setName('')
            setUrl('')
            setImageUrl('')
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

    if (disabled) {
        return (
            <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-orange-200 shadow-sm h-fit bg-orange-50/50">
                <div className="flex items-center gap-3 mb-4">
                    <div className="bg-orange-100 p-2 rounded-lg">
                        <Plus className="w-5 h-5 text-orange-600 opacity-50" />
                    </div>
                    <h3 className="font-bold text-lg text-gray-400">Add New Product</h3>
                </div>
                <div className="text-center py-6">
                    <p className="font-bold text-gray-800 mb-2">Limit Reached</p>
                    <p className="text-sm text-gray-600 mb-6">{limitMessage || "You have reached the maximum number of products for your plan."}</p>
                    <button className="w-full bg-white border border-orange-200 text-orange-600 font-bold py-2.5 rounded-xl hover:bg-orange-50 transition-colors">
                        Upgrade Plan
                    </button>
                </div>
            </div>
        )
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
                    <label className="block text-sm font-bold text-[var(--text-primary)] mb-2">Product Image URL (Required)</label>
                    <div className="relative">
                        <div className="absolute left-4 top-1/2 -translate-y-1/2 text-gray-400">
                            {/* Image Icon */}
                            <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" /></svg>
                        </div>
                        <input
                            type="url"
                            placeholder="https://example.com/product-image.jpg"
                            className="w-full pl-11 pr-4 py-2.5 rounded-xl border border-[var(--border-light)] bg-gray-50/50 text-sm focus:outline-none focus:ring-2 focus:ring-[var(--accent-primary)]/20 focus:border-[var(--accent-primary)] transition-all"
                            value={imageUrl}
                            onChange={(e) => setImageUrl(e.target.value)}
                            required
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
                        <option>Organic</option>
                        <option>Chemical</option>
                        <option>Biological</option>
                        <option>Other</option>
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
