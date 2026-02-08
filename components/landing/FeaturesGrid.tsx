'use client';

import { Scan, MessageSquareText, ShoppingBag, BarChart2, Globe, Box, Check } from 'lucide-react';

export function FeaturesGrid() {
    const features = [
        {
            title: 'AI Crop Detection',
            desc: 'Multi-crop disease identification with 99.8% confirmed accuracy.',
            icon: Scan,
        },
        {
            title: 'Advisory Engine',
            desc: 'Automated organic, chemical & IPM guidance for every diagnosis.',
            icon: MessageSquareText,
        },
        {
            title: 'Product Slots',
            desc: 'Promote your fertilizers, pesticides, and seeds directly in results.',
            icon: ShoppingBag,
        },
        {
            title: 'Analytics Dashboard',
            desc: 'Track usage hotspots, disease trends, and user engagement.',
            icon: BarChart2,
        },
        {
            title: 'White-Label API',
            desc: 'Your branding, your domain, your customer relationship.',
            icon: Box,
        },
        {
            title: 'Multi-Language Support',
            desc: 'Serve diverse farmer audiences in their local dialect.',
            icon: Globe,
        },
    ];

    return (
        <section id="features" className="py-24 bg-gray-50/50">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="text-center mb-16">
                    <h2 className="text-3xl font-black text-gray-900 mb-4">Everything Your Agri Platform Needs</h2>
                    <p className="text-lg text-gray-500">
                        A complete suite of tools to power your agricultural business.
                    </p>
                </div>

                <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
                    {features.map((feature, idx) => (
                        <div
                            key={idx}
                            className="bg-white p-8 rounded-2xl border border-gray-100 shadow-sm hover:shadow-lg transition-all hover:border-green-100 group"
                        >
                            <div className="w-12 h-12 bg-green-50 rounded-xl flex items-center justify-center mb-6 group-hover:bg-[#13ec13] transition-colors">
                                <feature.icon className="w-6 h-6 text-[#13ec13] group-hover:text-white transition-colors" />
                            </div>
                            <h3 className="text-lg font-bold text-gray-900 mb-3">{feature.title}</h3>
                            <p className="text-sm text-gray-500 leading-relaxed font-medium">
                                {feature.desc}
                            </p>
                        </div>
                    ))}
                </div>
            </div>
        </section>
    );
}
