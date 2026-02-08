'use client';

import Link from 'next/link';
import { ArrowRight, Upload, Scan, FileText, ShoppingBag, CheckCircle2 } from 'lucide-react';
import { motion } from 'framer-motion';

export function HeroSection() {
    const trustLines = [
        'Vision AI Powered',
        'Multi-Crop Detection',
        'White-Label Ready',
    ];

    return (
        <section className="relative pt-32 pb-40 px-6 lg:px-8 overflow-hidden bg-white">
            <div className="max-w-7xl mx-auto grid lg:grid-cols-2 gap-16 items-center">

                {/* Left: Text Content */}
                <motion.div
                    className="text-left space-y-8 z-10"
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.5 }}
                >
                    <h1 className="text-5xl sm:text-6xl lg:text-7xl font-black tracking-tighter leading-[1.1] text-gray-900">
                        AI Disease Intelligence for <br />
                        <span className="text-transparent bg-clip-text bg-gradient-to-r from-[#13ec13] to-green-600">
                            Agri Businesses
                        </span>
                    </h1>

                    <p className="text-xl text-gray-500 font-medium leading-relaxed max-w-lg">
                        Detect crop diseases, deliver advisory, and promote your own products — all through a single API.
                    </p>

                    {/* Trust Lines */}
                    <div className="flex flex-wrap gap-x-6 gap-y-3">
                        {trustLines.map((line) => (
                            <div key={line} className="flex items-center gap-2">
                                <CheckCircle2 className="w-5 h-5 text-[#13ec13]" />
                                <span className="text-sm font-bold text-gray-400 uppercase tracking-wide">
                                    {line}
                                </span>
                            </div>
                        ))}
                    </div>

                    {/* CTAs */}
                    <div className="flex flex-col sm:flex-row gap-4 pt-4">
                        <Link
                            href="/signup"
                            className="bg-[#13ec13] hover:bg-[#0fb30f] text-white font-black px-8 py-4 rounded-xl shadow-lg shadow-green-500/30 transition-all text-lg flex items-center justify-center gap-2 transform hover:-translate-y-1"
                        >
                            Get API Access <ArrowRight className="w-5 h-5" />
                        </Link>
                        <Link
                            href="/playground"
                            className="bg-white border-2 border-gray-100 hover:border-[#13ec13] text-gray-700 hover:text-[#13ec13] font-bold px-8 py-4 rounded-xl transition-all text-lg flex items-center justify-center gap-2"
                        >
                            View Live Demo
                        </Link>
                    </div>
                </motion.div>

                {/* Right: Visual Flow */}
                <div className="relative z-10 lg:h-[500px] flex items-center justify-center">
                    {/* Background Decorative Blob */}
                    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-green-50 rounded-full blur-3xl -z-10 opacity-50"></div>

                    <div className="grid grid-cols-2 gap-6 w-full max-w-lg relative">

                        {/* Card 1: Upload */}
                        <motion.div
                            initial={{ opacity: 0, scale: 0.9 }}
                            animate={{ opacity: 1, scale: 1 }}
                            transition={{ delay: 0.2 }}
                            className="bg-white p-6 rounded-2xl shadow-xl border border-gray-100 flex flex-col items-center text-center hover:border-green-200 transition-colors group"
                        >
                            <div className="w-12 h-12 bg-blue-50 rounded-full flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                                <Upload className="w-6 h-6 text-blue-500" />
                            </div>
                            <h3 className="font-bold text-gray-900">1. Image Upload</h3>
                            <p className="text-xs text-gray-400 mt-1">From your mobile app</p>
                        </motion.div>

                        {/* Card 2: Detect */}
                        <motion.div
                            initial={{ opacity: 0, scale: 0.9 }}
                            animate={{ opacity: 1, scale: 1 }}
                            transition={{ delay: 0.4 }}
                            className="bg-white p-6 rounded-2xl shadow-xl border border-gray-100 flex flex-col items-center text-center hover:border-green-200 transition-colors group"
                        >
                            <div className="w-12 h-12 bg-[#dcfce7] rounded-full flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                                <Scan className="w-6 h-6 text-[#13ec13]" />
                            </div>
                            <h3 className="font-bold text-gray-900">2. Disease Detect</h3>
                            <p className="text-xs text-gray-400 mt-1">99.8% Accuracy Model</p>
                        </motion.div>

                        {/* Card 3: Advisory */}
                        <motion.div
                            initial={{ opacity: 0, scale: 0.9 }}
                            animate={{ opacity: 1, scale: 1 }}
                            transition={{ delay: 0.6 }}
                            className="bg-white p-6 rounded-2xl shadow-xl border border-gray-100 flex flex-col items-center text-center hover:border-green-200 transition-colors group"
                        >
                            <div className="w-12 h-12 bg-orange-50 rounded-full flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                                <FileText className="w-6 h-6 text-orange-500" />
                            </div>
                            <h3 className="font-bold text-gray-900">3. Advisory</h3>
                            <p className="text-xs text-gray-400 mt-1">Treatment & prevention</p>
                        </motion.div>

                        {/* Card 4: Products */}
                        <motion.div
                            initial={{ opacity: 0, scale: 0.9 }}
                            animate={{ opacity: 1, scale: 1 }}
                            transition={{ delay: 0.8 }}
                            className="bg-white p-6 rounded-2xl shadow-xl border border-gray-100 flex flex-col items-center text-center hover:border-green-200 transition-colors group"
                        >
                            <div className="w-12 h-12 bg-purple-50 rounded-full flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                                <ShoppingBag className="w-6 h-6 text-purple-500" />
                            </div>
                            <h3 className="font-bold text-gray-900">4. Product Recs</h3>
                            <p className="text-xs text-gray-400 mt-1">Monetize your sales</p>
                        </motion.div>

                    </div>
                </div>

            </div>
        </section>
    );
}
