'use client'

import { useEffect, useState } from 'react'
import { ProductForm } from '@/components/dashboard/product-form'
import { ProductList } from '@/components/dashboard/product-list'
import { api } from '@/lib/api-client'

export default function ProductsPage() {
    const [products, setProducts] = useState([])
    const [loading, setLoading] = useState(true)

    const loadProducts = async () => {
        try {
            const data = await api.get('/products')
            setProducts(data.products || [])
        } catch (error) {
            console.error("Failed to load products", error)
        } finally {
            setLoading(false)
        }
    }

    useEffect(() => {
        loadProducts()
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
                <ProductForm onSuccess={loadProducts} />
                <ProductList products={products} onDelete={handleDelete} />
            </div>
        </div>
    )
}
