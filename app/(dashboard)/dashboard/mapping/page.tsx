'use client'

import { useEffect, useState } from 'react'
import { MappingForm } from '@/components/dashboard/mapping-form'
import { MappingList } from '@/components/dashboard/mapping-list'
import { api } from '@/lib/api-client'

export default function MappingPage() {
    const [diseases, setDiseases] = useState([])
    const [products, setProducts] = useState([])
    const [mappings, setMappings] = useState([])
    const [loading, setLoading] = useState(true)

    const loadData = async () => {
        setLoading(true)
        try {
            const [disData, prodData, mapData] = await Promise.all([
                api.get('/diseases/list').catch(() => ({ diseases: [] })),
                api.get('/products').catch(() => ({ products: [] })),
                api.get('/mappings').catch(() => ({ mappings: [] }))
            ])

            setDiseases(disData.diseases || [])
            setProducts(prodData.products || [])

            // Enrich mappings with names if not provided by backend
            const enrichedMappings = (mapData.mappings || []).map((m: any) => ({
                ...m,
                disease_name: disData.diseases?.find((d: any) => d.disease_id === m.disease_id)?.disease_name || m.disease_id,
                product_name: prodData.products?.find((p: any) => p.id === m.product_id)?.product_name || m.product_id
            }))
            setMappings(enrichedMappings)
        } catch (error) {
            console.error("Failed to load mapping data", error)
        } finally {
            setLoading(false)
        }
    }

    useEffect(() => {
        loadData()
    }, [])

    const handleDelete = async (id: string) => {
        if (!confirm('Are you sure you want to remove this mapping?')) return
        try {
            await api.delete(`/mappings/${id}`)
            setMappings(mappings.filter((m: any) => m.id !== id))
        } catch (error) {
            console.error("Delete failed", error)
        }
    }

    return (
        <div className="space-y-4">
            <div className="flex flex-col gap-1">
                <div className="flex items-center gap-2 text-sm text-[var(--text-secondary)]">
                    <span>Dashboard</span>
                    <span>/</span>
                    <span className="text-[var(--text-primary)] font-medium">Disease Mapping</span>
                </div>
                <h2 className="text-3xl font-bold tracking-tight text-[var(--text-primary)]">Pathegon Response Mapping</h2>
                <p className="text-[var(--text-secondary)] text-sm">Target specific diseases with your product kits for precise diagnosis results.</p>
            </div>

            <div className="space-y-8 pt-6">
                <MappingForm diseases={diseases} products={products} onSuccess={loadData} />
                <MappingList mappings={mappings} onDelete={handleDelete} />
            </div>
        </div>
    )
}
