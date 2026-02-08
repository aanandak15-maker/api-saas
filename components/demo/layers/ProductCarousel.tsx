
import { ShoppingBag, ArrowRight } from "lucide-react";
import Link from "next/link";
import Image from "next/image";

interface ProductCarouselProps {
    organic: any[];
    chemical: any[];
}

export function ProductCarousel({ organic, chemical }: ProductCarouselProps) {
    const allProducts = [
        ...(organic || []).map((p: any) => ({ ...p, type: 'organic' })),
        ...(chemical || []).map((p: any) => ({ ...p, type: 'chemical' }))
    ];

    if (allProducts.length === 0) return null;

    return (
        <div className="mt-8 border-t border-gray-100 pt-8">
            <div className="flex items-center justify-between mb-6">
                <div className="flex items-center gap-2">
                    <ShoppingBag className="w-5 h-5 text-gray-400" />
                    <h3 className="font-bold text-gray-900">Recommended Products</h3>
                </div>
            </div>

            <div className="flex gap-4 overflow-x-auto pb-4 scrollbar-hide snap-x">
                {allProducts.map((product: any, idx: number) => (
                    <div key={idx} className="min-w-[260px] bg-white border border-gray-200 rounded-xl p-4 snap-start hover:border-[#13ec13] transition-colors group relative">
                        {/* Product Type Badge */}
                        <div className="absolute top-4 right-4 text-[10px] font-black uppercase tracking-wider text-gray-300 group-hover:text-[#13ec13]">
                            {product.type}
                        </div>

                        <div className="h-32 bg-gray-50 rounded-lg mb-4 flex items-center justify-center relative overflow-hidden">
                            {/* Placeholder for product image if not available */}
                            <ShoppingBag className="w-8 h-8 text-gray-300" />
                        </div>

                        <h4 className="font-bold text-gray-900 mb-1">{product.product_name}</h4>
                        <p className="text-xs text-gray-400 mb-4">{product.product_brand}</p>

                        <Link href={product.product_url || "#"} target="_blank" className="block w-full text-center bg-black text-white text-xs font-bold py-2.5 rounded-lg hover:bg-gray-800 transition-colors">
                            Buy Now
                        </Link>
                    </div>
                ))}
            </div>
        </div>
    );
}
