'use client';

import Link from 'next/link';
import { Leaf, Github, Twitter, Linkedin } from 'lucide-react';

export function Footer() {
    return (
        <footer className="bg-white border-t border-gray-200 pt-16 pb-12">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">

                {/* 1. Conversion Banner */}
                <div className="bg-gradient-to-br from-[#13ec13]/10 to-emerald-50 rounded-3xl p-8 md:p-12 flex flex-col md:flex-row items-center justify-between gap-8 mb-20 border border-[#13ec13]/20">
                    <div className="text-center md:text-left">
                        <h3 className="text-2xl md:text-3xl font-black text-gray-900 mb-3">
                            Ready to modernize your crop doctor?
                        </h3>
                        <p className="text-gray-600 font-medium max-w-lg">
                            Get your API key in less than 30 seconds. Start with 1,000 free scans on the Germination plan.
                        </p>
                    </div>
                    <div className="flex flex-col sm:flex-row gap-4 w-full md:w-auto">
                        <Link
                            href="/signup"
                            className="bg-[#13ec13] hover:bg-[#0fb30f] text-white font-black px-8 py-4 rounded-xl shadow-xl shadow-green-500/30 transition-all transform hover:-translate-y-1 text-center whitespace-nowrap"
                        >
                            Get API Access
                        </Link>
                        <Link
                            href="/docs"
                            className="bg-white border-2 border-gray-200 hover:border-[#13ec13] text-gray-700 hover:text-[#13ec13] font-bold px-8 py-4 rounded-xl transition-all text-center whitespace-nowrap"
                        >
                            Read Documentation
                        </Link>
                    </div>
                </div>

                <div className="grid grid-cols-2 md:grid-cols-12 gap-8 lg:gap-12 mb-16">
                    {/* Brand Column (4 cols) */}
                    <div className="col-span-2 md:col-span-4">
                        <div className="flex items-center gap-2 mb-6">
                            <div className="bg-[#13ec13] p-1.5 rounded-lg">
                                <Leaf className="w-5 h-5 text-white fill-white" />
                            </div>
                            <span className="font-black text-xl tracking-tight text-gray-900">DiagAPI</span>
                        </div>
                        <p className="text-gray-500 text-sm font-medium leading-relaxed mb-6 max-w-sm">
                            The enterprise standard for AI-driven plant pathology. We help platforms detect, analyze, and treat crop diseases at scale.
                        </p>
                        <div className="flex gap-4">
                            <a href="#" className="w-10 h-10 flex items-center justify-center bg-gray-50 rounded-lg text-gray-400 hover:text-[#13ec13] hover:bg-green-50 transition-colors">
                                <Github className="w-5 h-5" />
                            </a>
                            <a href="#" className="w-10 h-10 flex items-center justify-center bg-gray-50 rounded-lg text-gray-400 hover:text-[#13ec13] hover:bg-green-50 transition-colors">
                                <Twitter className="w-5 h-5" />
                            </a>
                            <a href="#" className="w-10 h-10 flex items-center justify-center bg-gray-50 rounded-lg text-gray-400 hover:text-[#13ec13] hover:bg-green-50 transition-colors">
                                <Linkedin className="w-5 h-5" />
                            </a>
                        </div>
                    </div>

                    {/* Links Columns (2 cols each) */}
                    <div className="col-span-1 md:col-span-2">
                        <h4 className="font-bold text-gray-900 mb-6">Product</h4>
                        <ul className="space-y-4">
                            <li><Link href="/#features" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">Features</Link></li>
                            <li><Link href="/#pricing" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">Pricing</Link></li>
                            <li><Link href="/playground" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">Playground</Link></li>
                            <li><Link href="/docs" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">API Docs</Link></li>
                        </ul>
                    </div>

                    <div className="col-span-1 md:col-span-2">
                        <h4 className="font-bold text-gray-900 mb-6">Company</h4>
                        <ul className="space-y-4">
                            <li><Link href="#" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">About Us</Link></li>
                            <li><Link href="#" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">Careers</Link></li>
                            <li><Link href="#" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">Blog</Link></li>
                            <li><Link href="#" className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors">Contact</Link></li>
                        </ul>
                    </div>

                    <div className="col-span-2 md:col-span-4 bg-gray-50 rounded-2xl p-6 border border-gray-100">
                        <h4 className="font-bold text-gray-900 mb-4">Contact Sales</h4>
                        <p className="text-sm text-gray-500 mb-4">
                            Need a custom enterprise plan? We&apos;d love to help.
                        </p>
                        <a href="mailto:plantsaathiai@gmail.com" className="text-sm font-bold text-gray-900 hover:text-[#13ec13] block mb-2">
                            plantsaathiai@gmail.com
                        </a>
                        <p className="text-sm font-bold text-gray-900">
                            +91 70047 41371
                        </p>
                    </div>
                </div>

                {/* Bottom Bar */}
                <div className="pt-8 border-t border-gray-100 flex flex-col md:flex-row justify-between items-center gap-4">
                    <p className="text-xs text-gray-400 font-medium">
                        © {new Date().getFullYear()} DiagAPI Inc. All rights reserved.
                    </p>
                    <div className="flex gap-6">
                        <Link href="#" className="text-xs font-bold text-gray-400 hover:text-gray-900">Privacy Policy</Link>
                        <Link href="#" className="text-xs font-bold text-gray-400 hover:text-gray-900">Terms of Service</Link>
                        <div className="flex items-center gap-2 ml-4">
                            <span className="w-2 h-2 rounded-full bg-[#13ec13] animate-pulse"></span>
                            <span className="text-xs font-bold text-gray-500 uppercase tracking-widest">System Operational</span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    );
}
