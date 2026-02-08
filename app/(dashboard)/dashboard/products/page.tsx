'use client'

import { useEffect, useState } from 'react'
import { ProductForm } from '@/components/dashboard/product-form'
import { ProductList } from '@/components/dashboard/product-list'
import { api } from '@/lib/api-client'

export default function ProductsPage() {
    const [products, setProducts] = useState([])
    const [loading, setLoading] = useState(true)

    const [limits, setLimits] = useState({ disabled: false, message: "" })

    const loadData = async () => {
        setLoading(true)
        try {
            // Parallel fetch for speed
            const [productsData, profileData] = await Promise.all([
                api.get('/products').catch(() => ({ products: [] })),
                api.get('/client/profile').catch(() => null)
            ])

            setProducts(productsData.products || [])

            // Check Limits
            if (profileData) {
                const max = profileData.max_products
                const current = profileData.current_products
                if (max !== -1 && current >= max) {
                    setLimits({
                        disabled: true,
                        message: `Your active plan allows ${max} product${max === 1 ? '' : 's'}. You currently have ${current}.`
                    })
                } else {
                    setLimits({ disabled: false, message: "" })
                }
            }

        } catch (error) {
            console.error("Failed to load products/profile", error)
        } finally {
            setLoading(false)
        }
    }

    useEffect(() => {
        loadData()
    }, [])

    const handleDelete = async (id: string) => {
        if (!confirm('Are you sure you want to delete this product?')) return
        try {
            await api.delete(`/products/${id}`)
            setProducts(products.filter((p: any) => p.id !== id))
        } catch (error) {
            console.error("Delete failed", error)
            alert("Failed to delete product.")
        }
    }

    return (
        <div className="space-y-4">
            <div className="flex flex-col gap-1">
                <div className="flex items-center gap-2 text-sm text-[var(--text-secondary)]">
                    <span>Dashboard</span>
                    <span>/</span>
                    <span className="text-[var(--text-primary)] font-medium">Products Management</span>
                </div>
                <h2 className="text-3xl font-bold tracking-tight text-[var(--text-primary)]">Products Management</h2>
                <p className="text-[var(--text-secondary)] text-sm">Manage your diagnostic tools, update API endpoints, and organize categories.</p>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-[380px_1fr] gap-8 items-start pt-6">
                <ProductForm
                    onSuccess={loadData}
                    disabled={limits.disabled}
                    limitMessage={limits.message}
                />
                <ProductList products={products} onDelete={handleDelete} />
            </div>
        </div>
    )
}
