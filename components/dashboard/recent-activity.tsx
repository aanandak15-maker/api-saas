'use client'

import { ArrowRight } from 'lucide-react'
import { Badge } from '@/components/ui/badge'

interface LogEntry {
    id: string
    created_at: string
    endpoint: string
    status: string
    confidence?: number
}

interface RecentActivityProps {
    logs: LogEntry[]
}

export function RecentActivity({ logs }: RecentActivityProps) {
    return (
        <div className="bg-[var(--bg-card)] rounded-xl border border-[var(--border-light)] shadow-sm overflow-hidden">
            <div className="p-6 border-b border-[var(--border-light)] flex justify-between items-center">
                <h3 className="font-bold text-lg text-[var(--text-primary)]">Recent API Calls</h3>
                <button className="text-[var(--status-success-text)] text-sm font-medium hover:underline flex items-center gap-1">
                    View Full Log <ArrowRight className="w-4 h-4" />
                </button>
            </div>

            <div className="overflow-x-auto">
                <table className="w-full text-left text-sm">
                    <thead className="bg-[#f9fafb] text-[var(--text-secondary)] font-medium">
                        <tr>
                            <th className="px-6 py-4">DATE</th>
                            <th className="px-6 py-4">ENDPOINT</th>
                            <th className="px-6 py-4">STATUS</th>
                            <th className="px-6 py-4 text-right">CONFIDENCE</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-[var(--border-light)]">
                        {logs.length > 0 ? logs.map((log) => (
                            <tr key={log.id} className="hover:bg-gray-50 transition-colors">
                                <td className="px-6 py-4 text-[var(--text-primary)]">
                                    {new Date(log.created_at).toLocaleString('en-US', { month: 'short', day: 'numeric', hour: '2-digit', minute: '2-digit' })}
                                </td>
                                <td className="px-6 py-4 font-mono text-gray-600">{log.endpoint}</td>
                                <td className="px-6 py-4">
                                    <span className={`px-2.5 py-0.5 rounded-full text-xs font-medium border ${log.status === 'Success' || log.status === '200'
                                            ? 'bg-[#dcfce7] text-[#166534] border-[#bbf7d0]'
                                            : 'bg-[#fee2e2] text-[#991b1b] border-[#fecaca]'
                                        }`}>
                                        {log.status === '200' ? 'Success' : log.status}
                                    </span>
                                </td>
                                <td className="px-6 py-4 text-right font-medium text-[var(--text-primary)]">
                                    {log.confidence ? `${(log.confidence * 100).toFixed(1)}%` : '—'}
                                </td>
                            </tr>
                        )) : (
                            <tr>
                                <td colSpan={4} className="px-6 py-8 text-center text-gray-500">No recent activity detected.</td>
                            </tr>
                        )}
                    </tbody>
                </table>
            </div>
        </div>
    )
}
