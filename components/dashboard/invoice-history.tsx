'use client'

import { Download, FileX } from 'lucide-react'

// No mock data defined
const invoices: any[] = []

export function InvoiceHistory() {
    return (
        <div className="bg-[var(--bg-card)] rounded-2xl border border-[var(--border-light)] shadow-sm overflow-hidden min-h-[300px] flex flex-col">
            <div className="p-8 border-b border-[var(--border-light)] flex justify-between items-center">
                <h3 className="font-bold text-lg text-[var(--text-primary)]">Invoice History</h3>
            </div>

            <div className="flex-1 flex flex-col items-center justify-center p-12 text-center">
                <div className="w-16 h-16 bg-gray-50 rounded-full flex items-center justify-center mb-6">
                    <FileX className="w-8 h-8 text-gray-300" />
                </div>
                <h4 className="font-bold text-gray-900 text-lg">No Invoices Yet</h4>
                <p className="text-gray-500 text-sm mt-2 max-w-xs">
                    You haven&apos;t been billed yet. Once your subscription is active, your invoices will appear here.
                </p>
            </div>

            <div className="p-8 border-t border-[var(--border-light)] flex justify-between items-center text-xs text-gray-400">
                <p className="font-medium tracking-tight">Showing 0 invoices</p>
                <div className="flex gap-2">
                    <button disabled className="px-5 py-2 border border-[var(--border-light)] rounded-xl opacity-50 font-bold text-[var(--text-primary)] flex items-center gap-2 cursor-not-allowed">
                        Previous
                    </button>
                    <button disabled className="px-5 py-2 border border-[var(--border-light)] rounded-xl opacity-50 font-bold text-[var(--text-primary)] flex items-center gap-2 cursor-not-allowed">
                        Next
                    </button>
                </div>
            </div>
        </div>
    )
}
