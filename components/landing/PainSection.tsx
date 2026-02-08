'use client';

import { Puzzle, Users, Link2, BarChart3, XCircle } from 'lucide-react';

export function PainSection() {
    const pains = [
        {
            title: 'Fragmented AI Models',
            desc: 'Building custom vision models takes months and costs a fortune to maintain.',
            icon: Puzzle,
        },
        {
            title: 'Manual Advisory Support',
            desc: 'Agronomists are expensive and cannot scale to answer thousands of farmer queries.',
            icon: Users,
        },
        {
            title: 'No Product Integration',
            desc: 'Diagnosis apps often fail to facilitate the actual sale of treatment products.',
            icon: Link2,
        },
        {
            title: 'No Usage Analytics',
            desc: 'Blindly serving users without knowing which crops or regions are most active.',
            icon: BarChart3,
        },
    ];

    return (
        <section className="py-24 bg-gray-50/50">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="text-center max-w-2xl mx-auto mb-16">
                    <h2 className="text-3xl font-black text-gray-900 mb-4">
                        Why Agri Companies Struggle Today
                    </h2>
                    <p className="text-lg text-gray-500">
                        Most platforms are stuck connecting disconnected tools.
                    </p>
                </div>

                <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
                    {pains.map((pain, idx) => (
                        <div
                            key={idx}
                            className="bg-white p-8 rounded-2xl border border-gray-100 shadow-sm hover:shadow-md transition-shadow"
                        >
                            <div className="w-12 h-12 bg-red-50 rounded-xl flex items-center justify-center mb-6">
                                <pain.icon className="w-6 h-6 text-red-500" />
                            </div>
                            <h3 className="font-bold text-gray-900 mb-2">{pain.title}</h3>
                            <p className="text-sm text-gray-500 leading-relaxed">
                                {pain.desc}
                            </p>
                        </div>
                    ))}
                </div>

                <div className="mt-16 text-center">
                    <p className="text-2xl font-black text-gray-900">
                        &ldquo;You need <span className="text-[#13ec13]">intelligence</span> + <span className="text-[#13ec13]">monetization</span> together.&rdquo;
                    </p>
                </div>
            </div>
        </section>
    );
}
