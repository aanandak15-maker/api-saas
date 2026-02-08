'use client'

import { useState } from 'react'
import { Badge } from '@/components/ui/badge'
import { Filter, Download, MoreVertical, FlaskConical, Radio, Cpu, BarChart, Edit, Trash2, Link as LinkIcon, Plus } from 'lucide-react'
import { AttachDiseasesModal } from './AttachDiseasesModal'

interface Product {
    id: string
    product_name: string
    product_url: string
    image_url?: string
    category: string
}

interface ProductListProps {
    products: Product[]
    onDelete: (id: string) => void
    onEdit?: (product: Product) => void
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

export function ProductList({ products, onDelete, onEdit }: ProductListProps) {
    const [selectedProduct, setSelectedProduct] = useState<Product | null>(null)
    const [isAttachModalOpen, setIsAttachModalOpen] = useState(false)

    const handleAttachClick = (product: Product) => {
        setSelectedProduct(product)
        setIsAttachModalOpen(true)
    }

    return (
        <div className="flex-1">
            <div className="flex justify-between items-center mb-6">
                <h3 className="font-bold text-lg text-[var(--text-primary)]">Product List</h3>
                <div className="flex items-center gap-4 text-gray-400">
                    <Filter className="w-5 h-5 cursor-pointer hover:text-gray-600" />
                    <Download className="w-5 h-5 cursor-pointer hover:text-gray-600" />
                </div>
            </div>

            {products.length === 0 ? (
                <div className="bg-white rounded-2xl border border-gray-100 p-12 text-center text-gray-500">
                    No products found. Add one to get started.
                </div>
            ) : (
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {products.map((product) => (
                        <div key={product.id} className="bg-white rounded-2xl border border-gray-100 shadow-sm hover:shadow-md transition-shadow overflow-hidden flex flex-col">
                            {/* Product Image */}
                            <div className="aspect-video bg-gray-50 relative overflow-hidden group">
                                {product.image_url ? (
                                    <img
                                        src={product.image_url}
                                        alt={product.product_name}
                                        className="w-full h-full object-cover transition-transform duration-500 group-hover:scale-105"
                                    />
                                ) : (
                                    <div className="w-full h-full flex items-center justify-center text-gray-300 bg-gray-100">
                                        <FlaskConical className="w-12 h-12 opacity-50" />
                                    </div>
                                )}
                                <div className="absolute top-3 right-3 flex gap-2">
                                    <Badge variant="outline" className={`${product.category === 'Diagnostic Tool' ? 'bg-purple-100 text-purple-700 border-purple-200' :
                                        product.category === 'Hardware Sensor' ? 'bg-orange-100 text-orange-700 border-orange-200' :
                                            'bg-green-100 text-green-700 border-green-200'} shadow-sm backdrop-blur-md`}>
                                        {product.category}
                                    </Badge>
                                </div>
                            </div>

                            {/* Content */}
                            <div className="p-5 flex-1 flex flex-col">
                                <h4 className="font-bold text-lg text-gray-900 mb-1 line-clamp-1">{product.product_name}</h4>
                                <a href={product.product_url} target="_blank" rel="noreferrer" className="text-xs text-gray-500 hover:text-blue-500 flex items-center gap-1 mb-4 truncate">
                                    <LinkIcon className="w-3 h-3" />
                                    {product.product_url || 'No URL provided'}
                                </a>

                                <div className="mt-auto pt-4 border-t border-gray-50 flex items-center justify-between gap-2">
                                    <button
                                        onClick={() => handleAttachClick(product)}
                                        className="flex-1 bg-gray-900 hover:bg-gray-800 text-white text-xs font-bold py-2.5 px-4 rounded-xl transition-colors flex items-center justify-center gap-2"
                                    >
                                        <Plus className="w-3.5 h-3.5" />
                                        Attach Diseases
                                    </button>
                                    <div className="flex gap-1">
                                        <button onClick={() => onEdit?.(product)} className="p-2 text-gray-400 hover:text-blue-600 hover:bg-blue-50 rounded-lg transition-colors">
                                            <Edit className="w-4 h-4" />
                                        </button>
                                        <button onClick={() => onDelete(product.id)} className="p-2 text-gray-400 hover:text-red-600 hover:bg-red-50 rounded-lg transition-colors">
                                            <Trash2 className="w-4 h-4" />
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))}
                </div>
            )}

            {/* Modal */}
            {selectedProduct && (
                <AttachDiseasesModal
                    isOpen={isAttachModalOpen}
                    onClose={() => setIsAttachModalOpen(false)}
                    product={selectedProduct}
                    onSuccess={() => {
                        // Optionally refresh product list or show toast
                    }}
                />
            )}
        </div>
    )
}
