'use client'

import { useEffect, useState } from 'react'
import { UsageChart } from '@/components/dashboard/usage-chart'
import { UsageStats } from '@/components/dashboard/usage-stats'
import { RecentActivity } from '@/components/dashboard/recent-activity'
import { api } from '@/lib/api-client'

export default function AnalyticsPage() {
    const [stats, setStats] = useState({ total_calls: 0, calls_today: 0 })
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        async function loadData() {
            try {
                const usageData = await api.get('/client/usage-stats').catch(() => ({ total_calls: 0, calls_today: 0 }))
                setStats(usageData)
            } catch (error) {
                console.error("Failed to load analytics data", error)
            } finally {
                setLoading(false)
            }
        }
        loadData()
    }, [])

    return (
        <div className="space-y-8">
            <div className="flex flex-col gap-1">
                <div className="flex items-center gap-2 text-sm text-[var(--text-secondary)]">
                    <span>Dashboard</span>
                    <span>/</span>
                    <span className="text-[var(--text-primary)] font-medium">Platform Analytics</span>
                </div>
                <h2 className="text-3xl font-bold tracking-tight text-[var(--text-primary)]">Performance Insights</h2>
                <p className="text-[var(--text-secondary)] text-sm">detailed metrics on API consumption, diagnostic success rates, and system health.</p>
            </div>

            <UsageStats totalCalls={stats.total_calls} limit={10000} />

            <div className="grid grid-cols-1 lg:grid-cols-[1fr_400px] gap-8">
                <UsageChart />
                <div className="space-y-6">
                    <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm h-full flex flex-col justify-center text-center">
                        <div className="w-16 h-16 bg-blue-50 text-blue-500 rounded-full flex items-center justify-center mx-auto mb-6">
                            <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path></svg>
                        </div>
                        <h4 className="font-bold text-gray-900">Advanced Reports</h4>
                        <p className="text-sm text-gray-500 mt-2 mb-6">Download detailed CSV/PDF reports for enterprise compliance and auditing.</p>
                        <button className="w-full py-3 border border-[var(--border-light)] hover:bg-gray-50 text-[var(--text-primary)] font-bold rounded-xl transition-colors">Export Data</button>
                    </div>
                </div>
            </div>

            <RecentActivity logs={[]} />
        </div>
    )
}
