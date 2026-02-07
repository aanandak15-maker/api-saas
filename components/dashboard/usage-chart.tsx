'use client'

import { BarChart3 } from 'lucide-react'

export function UsageChart() {
    return (
        <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm h-[400px] flex flex-col">
            <div className="flex justify-between items-center mb-8">
                <h3 className="font-bold text-lg text-[var(--text-primary)]">API Calls Over Time</h3>
                <div className="flex gap-2">
                    <button className="px-3 py-1 text-xs border border-[var(--border-light)] rounded-lg hover:bg-gray-50 font-medium">7D</button>
                    <button className="px-3 py-1 text-xs bg-[var(--status-success-bg)] text-[var(--status-success-text)] rounded-lg font-bold">30D</button>
                </div>
            </div>

            <div className="flex-1 flex items-center justify-center relative">
                {/* Visual Placeholder for a Chart */}
                <div className="absolute inset-0 flex items-end gap-2 px-6 pb-2">
                    {[40, 60, 45, 80, 55, 90, 70, 85, 40, 65, 50, 75].map((h, i) => (
                        <div
                            key={i}
                            className="flex-1 bg-green-100 rounded-t-lg transition-all hover:bg-[var(--accent-primary)] group relative"
                            style={{ height: `${h}%` }}
                        >
                            <div className="absolute -top-8 left-1/2 -translate-x-1/2 bg-gray-900 text-white px-2 py-1 rounded text-[10px] opacity-0 group-hover:opacity-100 transition-opacity">
                                {h * 10} calls
                            </div>
                        </div>
                    ))}
                </div>
            </div>

            <div className="mt-6 pt-6 border-t border-[var(--border-light)] flex justify-between text-xs text-[var(--text-secondary)] font-medium">
                <span>Oct 01</span>
                <span>Oct 07</span>
                <span>Oct 14</span>
                <span>Oct 21</span>
                <span>Oct 31</span>
            </div>
        </div>
    )
}
