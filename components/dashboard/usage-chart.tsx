'use client'

import { BarChart3 } from 'lucide-react'

interface UsageData {
    date: string
    full_date: string
    count: number
}

interface UsageChartProps {
    data?: UsageData[]
}

export function UsageChart({ data = [] }: UsageChartProps) {
    // If no data, show empty state or placeholder
    const chartData = data.length > 0 ? data : []
    const maxCount = Math.max(...chartData.map(d => d.count), 10) // Avoid divide by zero

    return (
        <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm h-[400px] flex flex-col">
            <div className="flex justify-between items-center mb-8">
                <h3 className="font-bold text-lg text-[var(--text-primary)]">API Calls Over Time</h3>
                <div className="flex gap-2">
                    <button className="px-3 py-1 text-xs border border-[var(--border-light)] rounded-lg hover:bg-gray-50 font-medium">30D</button>
                </div>
            </div>

            <div className="flex-1 flex items-center justify-center relative">
                {chartData.length === 0 ? (
                    <div className="text-gray-400 text-sm">No usage data for this period</div>
                ) : (
                    <div className="absolute inset-0 flex items-end gap-1 px-2 pb-2">
                        {chartData.map((item, i) => (
                            <div
                                key={item.full_date}
                                className="flex-1 bg-green-100 rounded-t-sm transition-all hover:bg-[var(--accent-primary)] group relative"
                                style={{ height: `${(item.count / maxCount) * 100}%` }}
                            >
                                <div className="absolute -top-8 left-1/2 -translate-x-1/2 bg-gray-900 text-white px-2 py-1 rounded text-[10px] opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap z-10">
                                    {item.date}: {item.count} calls
                                </div>
                            </div>
                        ))}
                    </div>
                )}
            </div>

            <div className="mt-6 pt-6 border-t border-[var(--border-light)] flex justify-between text-xs text-[var(--text-secondary)] font-medium">
                {/* Show first, middle, and last date if data exists */}
                {chartData.length > 0 && (
                    <>
                        <span>{chartData[0].date}</span>
                        <span>{chartData[Math.floor(chartData.length / 2)].date}</span>
                        <span>{chartData[chartData.length - 1].date}</span>
                    </>
                )}
            </div>
        </div>
    )
}
