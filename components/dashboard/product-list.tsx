'use client'

import { useState } from 'react'
import { Badge } from '@/components/ui/badge'
import { Filter, Download, MoreVertical, FlaskConical, Radio, Cpu, BarChart } from 'lucide-react'

interface Product {
    id: string
    product_name: string
    product_url: string
    category: string
}

interface ProductListProps {
    products: Product[]
    onDelete: (id: string) => void
}

const CategoryIcon = ({ category }: { category: string }) => {
    switch (category) {
        case 'Diagnostic Tool': return <FlaskConical className="w-4 h-4 text-blue-500" />
        case 'Hardware Sensor': return <Radio className="w-4 h-4 text-orange-500" />
        case 'API Service': return <Cpu className="w-4 h-4 text-green-500" />
        case 'Analytics Module': return <BarChart className="w-4 h-4 text-purple-500" />
        default: return <FlaskConical className="w-4 h-4 text-gray-500" />
    }
}

const CategoryVariant = (category: string) => {
    switch (category) {
        case 'Diagnostic Tool': return 'secondary'
        case 'Hardware Sensor': return 'outline' // Needs warning or custom
        case 'API Service': return 'success'
        default: return 'outline'
    }
}

export function ProductList({ products, onDelete }: ProductListProps) {
    return (
        <div className="bg-[var(--bg-card)] rounded-2xl border border-[var(--border-light)] shadow-sm overflow-hidden flex-1">
            <div className="p-6 border-b border-[var(--border-light)] flex justify-between items-center">
                <h3 className="font-bold text-lg text-[var(--text-primary)]">Product List</h3>
                <div className="flex items-center gap-4 text-gray-400">
                    <Filter className="w-5 h-5 cursor-pointer hover:text-gray-600" />
                    <Download className="w-5 h-5 cursor-pointer hover:text-gray-600" />
                </div>
            </div>

            <div className="overflow-x-auto">
                <table className="w-full text-left text-sm">
                    <thead className="bg-[#f9fafb] text-[var(--text-secondary)] font-medium border-b border-[var(--border-light)]">
                        <tr>
                            <th className="px-6 py-4">PRODUCT NAME</th>
                            <th className="px-6 py-4">ENDPOINT / URL</th>
                            <th className="px-6 py-4">CATEGORY</th>
                            <th className="px-1 py-4 text-center">ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody className="divide-y divide-[var(--border-light)]">
                        {products.length > 0 ? products.map((item) => (
                            <tr key={item.id} className="hover:bg-gray-50/80 transition-colors">
                                <td className="px-6 py-5">
                                    <div className="flex items-center gap-3">
                                        <div className="p-2 bg-gray-50 rounded-lg">
                                            <CategoryIcon category={item.category} />
                                        </div>
                                        <span className="font-bold text-[var(--text-primary)]">{item.product_name}</span>
                                    </div>
                                </td>
                                <td className="px-6 py-5 font-medium text-gray-500 max-w-[200px] truncate">{item.product_url || '—'}</td>
                                <td className="px-6 py-5">
                                    <Badge variant="success" className={`${item.category === 'Diagnostic Tool' ? 'bg-purple-100 text-purple-700' :
                                        item.category === 'Hardware Sensor' ? 'bg-orange-100 text-orange-700' :
                                            'bg-green-100 text-green-700'}`}>
                                        {item.category}
                                    </Badge>
                                </td>
                                <td className="px-1 py-5 text-center">
                                    <button onClick={() => onDelete(item.id)} className="p-2 text-gray-400 hover:text-red-500 transition-colors">
                                        <MoreVertical className="w-5 h-5" />
                                    </button>
                                </td>
                            </tr>
                        )) : (
                            <tr>
                                <td colSpan={4} className="px-6 py-8 text-center text-gray-500">No products found. Add one to get started.</td>
                            </tr>
                        )}
                    </tbody>
                </table>
            </div>

            <div className="p-6 border-t border-[var(--border-light)] flex justify-between items-center text-xs text-gray-400">
                <p>Showing <span className="font-bold text-gray-600">1</span> to <span className="font-bold text-gray-600">{products.length}</span> of <span className="font-bold text-gray-600">{products.length}</span> results</p>
                <div className="flex gap-2">
                    <button className="px-3 py-1.5 border border-[var(--border-light)] rounded-lg hover:bg-gray-50 font-medium">Previous</button>
                    <button className="px-3 py-1.5 border border-[var(--border-light)] rounded-lg hover:bg-gray-50 font-medium">Next</button>
                </div>
            </div>
        </div>
    )
}
