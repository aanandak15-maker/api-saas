'use client'

import { Phone, Clock, FileCheck } from 'lucide-react'

interface StatsProps {
    data: {
        total_calls: number
        calls_today: number
        active_products: number
    }
}

export function StatsCards({ data }: StatsProps) {
    return (
        <div className="grid gap-6 md:grid-cols-3">
            {/* Total Calls */}
            <div className="bg-[var(--bg-card)] p-6 rounded-xl border border-[var(--border-light)] shadow-sm">
                <div className="flex justify-between items-start">
                    <div>
                        <p className="text-[var(--text-secondary)] text-sm font-medium">Total Calls</p>
                        <h3 className="text-3xl font-bold mt-2 text-[var(--text-primary)]">{data.total_calls.toLocaleString()}</h3>
                        <p className="text-xs text-[var(--status-success-text)] mt-2 font-medium flex items-center">
                            <span className="bg-[var(--status-success-bg)] px-1.5 py-0.5 rounded">↗ +12% this week</span>
                        </p>
                    </div>
                    <div className="bg-[var(--status-success-bg)] p-3 rounded-xl">
                        <Phone className="w-6 h-6 text-[var(--status-success-text)]" />
                    </div>
                </div>
            </div>

            {/* Calls Today */}
            <div className="bg-[var(--bg-card)] p-6 rounded-xl border border-[var(--border-light)] shadow-sm">
                <div className="flex justify-between items-start">
                    <div>
                        <p className="text-[var(--text-secondary)] text-sm font-medium">Calls Today</p>
                        <h3 className="text-3xl font-bold mt-2 text-[var(--text-primary)]">{data.calls_today.toLocaleString()}</h3>
                        <p className="text-xs text-[var(--text-secondary)] mt-2">Daily average: 1,350</p>
                    </div>
                    <div className="bg-[var(--status-success-bg)] p-3 rounded-xl">
                        <Clock className="w-6 h-6 text-[var(--status-success-text)]" />
                    </div>
                </div>
            </div>

            {/* Active Products */}
            <div className="bg-[var(--bg-card)] p-6 rounded-xl border border-[var(--border-light)] shadow-sm">
                <div className="flex justify-between items-start">
                    <div>
                        <p className="text-[var(--text-secondary)] text-sm font-medium">Active Products</p>
                        <h3 className="text-3xl font-bold mt-2 text-[var(--text-primary)]">{data.active_products}</h3>
                        <p className="text-xs text-[var(--text-secondary)] mt-2">All systems operational</p>
                    </div>
                    <div className="bg-[var(--status-success-bg)] p-3 rounded-xl">
                        <FileCheck className="w-6 h-6 text-[var(--status-success-text)]" />
                    </div>
                </div>
            </div>
        </div>
    )
}
