'use client';

import Image from 'next/image';
import { motion } from 'framer-motion';

export function DashboardPreview() {
    const screenshots = [
        { title: 'Disease Mapping', desc: 'Real-time outbreak visualization', color: 'bg-blue-100' },
        { title: 'Product Dashboard', desc: 'Manage inventory & recommendations', color: 'bg-green-100' },
        { title: 'Analytics Panel', desc: 'Deep user insights & trends', color: 'bg-purple-100' },
    ];

    return (
        <section className="py-24 bg-white overflow-hidden">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="text-center mb-16">
                    <h2 className="text-3xl font-black text-gray-900 mb-4">Built for Businesses, Not Just Farmers</h2>
                    <p className="text-lg text-gray-500">
                        Powerful admin tools to manage your entire operation.
                    </p>
                </div>

                <div className="relative">
                    {/* Background Glow */}
                    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-full h-full max-w-4xl bg-gradient-to-r from-green-50 to-blue-50 blur-3xl rounded-full opacity-50 -z-10"></div>

                    <div className="grid lg:grid-cols-3 gap-8">
                        {screenshots.map((shot, idx) => (
                            <motion.div
                                key={idx}
                                initial={{ opacity: 0, y: 20 }}
                                whileInView={{ opacity: 1, y: 0 }}
                                viewport={{ once: true }}
                                transition={{ delay: idx * 0.2 }}
                                className="group"
                            >
                                {/* Placeholder for Screenshot */}
                                <div className={`aspect-[4/3] rounded-2xl ${shot.color} border-4 border-white shadow-2xl mb-6 overflow-hidden relative flex items-center justify-center`}>
                                    <div className="absolute inset-0 bg-white/50 backdrop-blur-sm opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
                                        <span className="font-bold text-gray-900">View Details</span>
                                    </div>
                                    <span className="text-gray-400 font-bold uppercase tracking-widest text-sm">{shot.title} Preview</span>
                                </div>
                                <h3 className="text-center font-bold text-gray-900">{shot.title}</h3>
                                <p className="text-center text-sm text-gray-500">{shot.desc}</p>
                            </motion.div>
                        ))}
                    </div>
                </div>
            </div>
        </section>
    );
}
