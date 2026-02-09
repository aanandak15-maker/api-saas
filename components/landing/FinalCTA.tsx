'use client';

import Link from 'next/link';
import { ArrowRight } from 'lucide-react';

export function FinalCTA() {
    return (
        <section className="py-32 bg-white">
            <div className="max-w-4xl mx-auto px-6 lg:px-8 text-center">
                <h2 className="text-4xl sm:text-5xl font-black tracking-tight text-gray-900 mb-8">
                    Ready to Power Your <br />
                    <span className="text-[#13ec13]">Agri Platform</span> with AI?
                </h2>

                <div className="flex flex-col sm:flex-row items-center justify-center gap-4 mb-8">
                    <Link
                        href="/signup"
                        className="bg-[#13ec13] hover:bg-[#0fb30f] text-white font-black px-10 py-5 rounded-xl shadow-xl shadow-green-500/30 transition-all text-xl w-full sm:w-auto transform hover:-translate-y-1"
                    >
                        Get API Access
                    </Link>
                    <a
                        href="mailto:plantsaathiai@gmail.com"
                        className="bg-gray-50 hover:bg-gray-100 text-gray-900 font-bold px-10 py-5 rounded-xl transition-all text-xl w-full sm:w-auto text-center"
                    >
                        Contact Sales
                    </a>
                </div>

                <p className="text-sm font-bold text-gray-400 uppercase tracking-widest">
                    Enterprise-Grade SLA • 99.8% Uptime
                </p>
            </div>
        </section >
    );
}
