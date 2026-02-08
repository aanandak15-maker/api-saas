'use client'

import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { StatsCards } from '@/components/dashboard/stats-cards'
import { RecentActivity } from '@/components/dashboard/recent-activity'
import { api } from '@/lib/api-client'

interface Log {
    id: string
    timestamp: string
    created_at: string
    endpoint: string
    status: string
    confidence: number
}

export default function DashboardPage() {
    const router = useRouter()
    const [stats, setStats] = useState({ total_calls: 0, calls_today: 0, active_products: 0 })
    const [logs, setLogs] = useState<Log[]>([])
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        async function loadData() {
            try {
                // Fetch Stats
                const usageData = await api.get('/client/usage-stats').catch(() => ({ total_calls: 0, calls_today: 0 }))
                const productsData = await api.get('/products').catch(() => ({ products: [] }))

                setStats({
                    total_calls: usageData.total_calls,
                    calls_today: usageData.calls_today,
                    active_products: productsData.products?.length || 0
                })

                // Fetch Recent Calls
                const logsData = await api.get('/client/recent-logs').catch(() => ({ logs: [] }))
                setLogs(logsData.logs || [])

            } catch (error) {
                console.error("Dashboard Load Error:", error)
            } finally {
                setLoading(false)
            }
        }
        loadData()
    }, [])

    if (loading) {
        return <div className="p-8 text-center text-gray-500">Loading Dashboard...</div>
    }

    return (
        <div className="space-y-8">
            <h2 className="text-2xl font-bold tracking-tight text-[var(--text-primary)]">Dashboard Home</h2>

            <StatsCards data={stats} />

            <div className="mt-8">
                <RecentActivity logs={logs} />
            </div>

            {/* Quick Actions */}
            <div className="flex gap-4 mt-8">
                <button
                    onClick={() => router.push('/dashboard/products')}
                    className="bg-[var(--accent-primary)] hover:bg-[var(--accent-hover)] text-white font-semibold py-2.5 px-5 rounded-lg transition-colors flex items-center gap-2 shadow-sm"
                >
                    + Add Product
                </button>
                <button
                    onClick={() => router.push('/dashboard/api-keys')}
                    className="bg-white border border-[var(--border-light)] hover:bg-gray-50 text-[var(--text-primary)] font-semibold py-2.5 px-5 rounded-lg transition-colors shadow-sm"
                >
                    {`<> View API Docs`}
                </button>
            </div>
        </div>
    )
}
