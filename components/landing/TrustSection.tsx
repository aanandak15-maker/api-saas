'use client';

import { ShieldCheck, Lock, Server, Zap } from 'lucide-react';

export function TrustSection() {
    const items = [
        {
            title: 'Secure API Keys',
            desc: 'Role-based access control with rotating keys.',
            icon: Lock,
        },
        {
            title: 'Encrypted Storage',
            desc: 'AES-256 encryption for all sensitive user data.',
            icon: ShieldCheck,
        },
        {
            title: 'Rate Limiting',
            desc: 'Intelligent throttling to prevent abuse.',
            icon: Zap,
        },
        {
            title: '99.9% Uptime',
            desc: 'Redundant infrastructure scaling on demand.',
            icon: Server,
        },
    ];

    return (
        <section className="py-20 bg-gray-50 border-y border-gray-100">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="text-center mb-12">
                    <h2 className="text-2xl font-black text-gray-900 mb-2">Built for Scale & Security</h2>
                    <p className="text-gray-500">Enterprise-grade infrastructure you can rely on.</p>
                </div>

                <div className="grid md:grid-cols-4 gap-8">
                    {items.map((item, idx) => (
                        <div key={idx} className="flex flex-col items-center text-center">
                            <div className="w-10 h-10 bg-white rounded-full shadow-sm border border-gray-100 flex items-center justify-center mb-4 text-[#13ec13]">
                                <item.icon className="w-5 h-5" />
                            </div>
                            <h3 className="font-bold text-gray-900 text-sm mb-1">{item.title}</h3>
                            <p className="text-xs text-gray-500 max-w-[180px]">{item.desc}</p>
                        </div>
                    ))}
                </div>
            </div>
        </section>
    );
}
