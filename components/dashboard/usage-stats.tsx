'use client'

import { Phone, CheckCircle2, AlertCircle } from 'lucide-react'

interface UsageStatsProps {
    totalCalls: number
    limit: number
}

export function UsageStats({ totalCalls, limit }: UsageStatsProps) {
    const percentage = Math.round((totalCalls / limit) * 100)

    return (
        <div className="grid gap-6 md:grid-cols-2">
            {/* Usage Overview Card */}
            <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
                <div className="flex justify-between items-start mb-6">
                    <div>
                        <p className="text-[var(--text-secondary)] text-sm font-medium">Subscription Usage</p>
                        <h3 className="text-3xl font-bold mt-1 text-[var(--text-primary)]">Current Plan</h3>
                    </div>
                    <div className="bg-[var(--status-success-bg)] px-3 py-1 rounded-full text-[var(--status-success-text)] text-xs font-bold">Active</div>
                </div>

                <div className="space-y-4">
                    <div className="flex justify-between text-sm">
                        <span className="text-[var(--text-secondary)]">API Calls Usage</span>
                        <span className="font-bold text-[var(--text-primary)]">{totalCalls.toLocaleString()} / {limit.toLocaleString()}</span>
                    </div>
                    <div className="h-2.5 w-full bg-gray-100 rounded-full overflow-hidden">
                        <div
                            className="h-full bg-[var(--accent-primary)] transition-all duration-500 rounded-full"
                            style={{ width: `${percentage}%` }}
                        ></div>
                    </div>
                    <div className="flex justify-between text-xs font-medium">
                        <span className="text-[var(--status-success-text)]">{percentage}% used</span>
                        <span className="text-[var(--text-secondary)]">Resets in 12 days</span>
                    </div>
                </div>

                <div className="mt-8 pt-8 border-t border-[var(--border-light)] flex gap-4">
                    <button className="flex-1 bg-[var(--accent-primary)] hover:bg-[var(--accent-hover)] text-white font-bold py-2.5 rounded-xl transition-colors">Upgrade Plan</button>
                    <button className="flex-1 border border-[var(--border-light)] hover:bg-gray-50 text-[var(--text-primary)] font-bold py-2.5 rounded-xl transition-colors">Manage Sub</button>
                </div>
            </div>

            {/* Status Card */}
            <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
                <h3 className="font-bold text-lg text-[var(--text-primary)] mb-6">Platform Status</h3>
                <div className="space-y-6">
                    <div className="flex items-center gap-4">
                        <div className="w-10 h-10 bg-green-50 rounded-full flex items-center justify-center text-green-500">
                            <CheckCircle2 size={20} />
                        </div>
                        <div>
                            <p className="font-bold text-sm text-[var(--text-primary)]">Core API Engine</p>
                            <p className="text-xs text-[var(--text-secondary)]">Operational · 99.98% Uptime</p>
                        </div>
                    </div>
                    <div className="flex items-center gap-4">
                        <div className="w-10 h-10 bg-green-50 rounded-full flex items-center justify-center text-green-500">
                            <CheckCircle2 size={20} />
                        </div>
                        <div>
                            <p className="font-bold text-sm text-[var(--text-primary)]">Diagnostic Models (v2.0)</p>
                            <p className="text-xs text-[var(--text-secondary)]">Operational · Healthy</p>
                        </div>
                    </div>
                    <div className="flex items-center gap-4">
                        <div className="w-10 h-10 bg-green-50 rounded-full flex items-center justify-center text-green-500">
                            <CheckCircle2 size={20} />
                        </div>
                        <div>
                            <p className="font-bold text-sm text-[var(--text-primary)]">Mapping Service</p>
                            <p className="text-xs text-[var(--text-secondary)]">Operational · No delays</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
