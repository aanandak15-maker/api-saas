'use client';

import Link from 'next/link';
import { Leaf, Github, Twitter, Linkedin } from 'lucide-react';

export function Footer() {
    const footerLinks = {
        Product: [
            { name: 'Features', href: '#features' },
            { name: 'Pricing', href: '#pricing' },
            { name: 'Playground', href: '/playground' },
            { name: 'API Docs', href: '/docs' },
        ],
        Company: [
            { name: 'About', href: '#' },
            { name: 'Blog', href: '#' }, // Placeholder
            { name: 'Careers', href: '#' }, // Placeholder
            { name: 'Contact', href: '#' }, // Placeholder
        ],
        Resources: [
            { name: 'Community', href: '#' },
            { name: 'Help Center', href: '#' },
            { name: 'Status', href: '#' },
        ],
        Legal: [
            { name: 'Privacy', href: '#' },
            { name: 'Terms', href: '#' },
            { name: 'Security', href: '#' },
        ],
    };

    return (
        <footer className="bg-white border-t border-gray-200/60 pt-20 pb-12">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="grid grid-cols-2 md:grid-cols-6 gap-8 mb-16">
                    {/* Brand Column */}
                    <div className="col-span-2 text-left">
                        <div className="flex items-center gap-2 mb-6">
                            <div className="bg-[#13ec13] p-1.5 rounded-lg">
                                <Leaf className="w-5 h-5 text-white fill-white" />
                            </div>
                            <span className="font-black text-xl tracking-tight text-gray-900">DiagAPI</span>
                        </div>
                        <p className="text-gray-500 text-sm font-medium leading-relaxed max-w-xs mb-6">
                            Enterprise-grade AI disease intelligence for agricultural platforms. Detect, analyze, and advise at scale.
                        </p>
                        <div className="flex gap-4">
                            <a href="#" className="p-2 bg-gray-50 rounded-lg text-gray-400 hover:text-[#13ec13] hover:bg-green-50 transition-colors">
                                <Github className="w-5 h-5" />
                            </a>
                            <a href="#" className="p-2 bg-gray-50 rounded-lg text-gray-400 hover:text-[#13ec13] hover:bg-green-50 transition-colors">
                                <Twitter className="w-5 h-5" />
                            </a>
                            <a href="#" className="p-2 bg-gray-50 rounded-lg text-gray-400 hover:text-[#13ec13] hover:bg-green-50 transition-colors">
                                <Linkedin className="w-5 h-5" />
                            </a>
                        </div>
                    </div>

                    {/* Links Columns */}
                    {Object.entries(footerLinks).map(([category, links]) => (
                        <div key={category} className="col-span-1">
                            <h4 className="font-bold text-gray-900 mb-6">{category}</h4>
                            <ul className="space-y-4">
                                {links.map((link) => (
                                    <li key={link.name}>
                                        <Link
                                            href={link.href}
                                            className="text-sm font-medium text-gray-500 hover:text-[#13ec13] transition-colors"
                                        >
                                            {link.name}
                                        </Link>
                                    </li>
                                ))}
                            </ul>
                        </div>
                    ))}
                </div>

                {/* Bottom Bar */}
                <div className="pt-8 border-t border-gray-100 flex flex-col md:flex-row justify-between items-center gap-4">
                    <p className="text-xs text-gray-400 font-medium">
                        © {new Date().getFullYear()} DiagAPI Inc. All rights reserved.
                    </p>
                    <div className="flex gap-8">
                        <div className="flex items-center gap-2">
                            <span className="w-2 h-2 rounded-full bg-[#13ec13] animate-pulse"></span>
                            <span className="text-xs font-bold text-gray-500 uppercase tracking-widest">System Operational</span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    );
}
