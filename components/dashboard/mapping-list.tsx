'use client'

import { MoreVertical, Unlink, Info } from 'lucide-react'
import { Badge } from '@/components/ui/badge'

interface Mapping {
    id: string
    disease_id: string
    product_id: string
    disease_name?: string
    product_name?: string
    created_at: string
}

interface MappingListProps {
    mappings: Mapping[]
    onDelete: (id: string) => void
}

export function MappingList({ mappings, onDelete }: MappingListProps) {
    return (
        <div className="bg-[var(--bg-card)] rounded-2xl border border-[var(--border-light)] shadow-sm overflow-hidden min-h-[400px]">
            <div className="p-6 border-b border-[var(--border-light)] flex justify-between items-center">
                <h3 className="font-bold text-lg text-[var(--text-primary)]">Existing Mappings</h3>
                <Badge variant="success" className="bg-green-100 text-green-700 hover:bg-green-100 font-bold">Active: {mappings.length}</Badge>
            </div>

            <div className="overflow-x-auto">
                <table className="w-full text-left text-sm">
                    <thead className="bg-[#f9fafb] text-[var(--text-secondary)] font-medium border-b border-[var(--border-light)]">
                        <tr>
                            <th className="px-6 py-4">DISEASE NAME</th>
                            <th className="px-6 py-4">PRODUCT NAME</th>
                            <th className="px-6 py-4">DATE MAPPED</th>
                            <th className="px-1 py-4 text-center">ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-[var(--border-light)]">
                        {mappings.length > 0 ? mappings.map((m) => (
                            <tr key={m.id} className="hover:bg-gray-50/80 transition-colors">
                                <td className="px-6 py-5">
                                    <div className="flex items-center gap-3">
                                        <div className="p-2 bg-purple-50 rounded-lg">
                                            <div className="w-4 h-4 text-purple-600">
                                                <svg fill="currentColor" viewBox="0 0 20 20"><path d="M11 3a1 1 0 10-2 0v1a1 1 0 102 0V3zM5.884 6.923a1 1 0 10-1.414-1.414l-.707.707a1 1 0 101.414 1.414l.707-.707zm8.502-1.414a1 1 0 10-1.414 1.414l.707.707a1 1 0 001.414-1.414l-.707-.707zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 14.95a1 1 0 011.414 0l.707.707a1 1 0 01-1.414 1.414l-.707-.707a1 1 0 010-1.414zm9.9 0a1 1 0 010 1.414l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 0zM3 11a1 1 0 110-2h1a1 1 0 110 2H3z"></path></svg>
                                            </div>
                                        </div>
                                        <span className="font-bold text-[var(--text-primary)]">{m.disease_name || m.disease_id}</span>
                                    </div>
                                </td>
                                <td className="px-6 py-5 text-[var(--text-secondary)] font-medium">{m.product_name || m.product_id}</td>
                                <td className="px-6 py-5 text-gray-400">
                                    {new Date(m.created_at).toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' })}
                                </td>
                                <td className="px-1 py-5 text-center">
                                    <button onClick={() => onDelete(m.id)} className="p-2 text-gray-300 hover:text-red-500 transition-colors" title="Unmap">
                                        <Unlink className="w-5 h-5" />
                                    </button>
                                </td>
                            </tr>
                        )) : (
                            <tr>
                                <td colSpan={4} className="px-6 py-12">
                                    <div className="flex flex-col items-center justify-center text-center">
                                        <div className="p-4 bg-gray-50 rounded-full mb-4">
                                            <MoreVertical className="w-8 h-8 text-gray-300" />
                                        </div>
                                        <h4 className="font-bold text-gray-900">No Mappings Found</h4>
                                        <p className="text-sm text-gray-500 max-w-[200px] mt-2">Start by selecting a disease and product above.</p>
                                    </div>
                                </td>
                            </tr>
                        )}
                    </tbody>
                </table>
            </div>

            <div className="p-6 border-t border-[var(--border-light)] flex justify-between items-center text-xs text-gray-400">
                <p>Showing <span className="font-bold text-gray-600">1-{mappings.length}</span> of <span className="font-bold text-gray-600">{mappings.length}</span> mappings</p>
                <div className="flex gap-2">
                    <button className="px-3 py-1.5 border border-[var(--border-light)] rounded-lg hover:bg-gray-50 font-medium disabled:opacity-50" disabled>Previous</button>
                    <button className="px-3 py-1.5 border border-[var(--border-light)] rounded-lg hover:bg-gray-50 font-medium disabled:opacity-50" disabled>Next</button>
                </div>
            </div>
        </div>
    )
}
