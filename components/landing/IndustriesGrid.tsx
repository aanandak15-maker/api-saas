'use client';

import { Sprout, Beaker, ShoppingCart, Landmark, Users, Store } from 'lucide-react';

export function IndustriesGrid() {
    const industries = [
        { name: 'Seed Companies', icon: Sprout },
        { name: 'Pesticide Brands', icon: Beaker },
        { name: 'Agri Marketplaces', icon: ShoppingCart },
        { name: 'Government Platforms', icon: Landmark },
        { name: 'NGOs', icon: Users },
        { name: 'Local Agri Shops', icon: Store },
    ];

    return (
        <section className="py-24 bg-[#111827] text-white">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="grid lg:grid-cols-2 gap-16 items-center">

                    <div>
                        <h2 className="text-4xl font-black mb-6 leading-tight">
                            Who Uses <span className="text-[#13ec13]">DiagAPI</span>?
                        </h2>
                        <p className="text-gray-400 text-lg mb-8 leading-relaxed">
                            Our infrastructure powers the biggest names in agriculture. From local marketplaces to national government initiatives, we provide the intelligence layer.
                        </p>

                        <div className="flex gap-8 border-t border-gray-800 pt-8">
                            <div>
                                <span className="block text-4xl font-black text-white">10k+</span>
                                <span className="text-xs text-gray-400 uppercase tracking-widest font-bold">Farmers Served</span>
                            </div>
                            <div>
                                <span className="block text-4xl font-black text-white">150+</span>
                                <span className="text-xs text-gray-400 uppercase tracking-widest font-bold">Recognized Diseases</span>
                            </div>
                        </div>
                    </div>

                    <div className="grid grid-cols-2 gap-4">
                        {industries.map((ind, idx) => (
                            <div
                                key={idx}
                                className="p-6 bg-white/5 border border-white/10 rounded-2xl hover:bg-white/10 transition-colors flex flex-col items-center text-center gap-3 group cursor-default"
                            >
                                <div className="w-12 h-12 bg-white/5 rounded-full flex items-center justify-center group-hover:bg-[#13ec13]/20 transition-colors">
                                    <ind.icon className="w-6 h-6 text-gray-400 group-hover:text-[#13ec13] transition-colors" />
                                </div>
                                <span className="font-bold text-sm text-gray-200 group-hover:text-white transition-colors">
                                    {ind.name}
                                </span>
                            </div>
                        ))}
                    </div>

                </div>
            </div>
        </section>
    );
}
