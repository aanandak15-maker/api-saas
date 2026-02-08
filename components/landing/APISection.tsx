'use client';

import Link from 'next/link';
import { Terminal, Copy, Check } from 'lucide-react';
import { useState } from 'react';

export function APISection() {
    const [copied, setCopied] = useState(false);

    const codeSnippet = `curl -X POST "https://api.diagapi.com/detect" \\
  -H "x-api-key: YOUR_KEY" \\
  -F "image=@leaf.jpg" \\
  -F "crop=Tomato"`;

    const handleCopy = () => {
        navigator.clipboard.writeText(codeSnippet);
        setCopied(true);
        setTimeout(() => setCopied(false), 2000);
    };

    return (
        <section className="py-24 bg-white">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="grid lg:grid-cols-2 gap-16 items-center">

                    {/* Left: Content */}
                    <div>
                        <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-blue-50 text-blue-600 text-xs font-black uppercase tracking-widest mb-6">
                            <Terminal className="w-3 h-3" />
                            <span>Developer First</span>
                        </div>
                        <h2 className="text-4xl font-black text-gray-900 mb-6">Simple API. <br />Powerful Results.</h2>
                        <p className="text-lg text-gray-500 mb-8 max-w-md">
                            Integrate disease detection into your mobile app or website with just a few lines of code. We handle the heavy AI lifting.
                        </p>
                        <div className="flex flex-wrap gap-4">
                            <Link href="/docs" className="text-gray-900 font-bold hover:text-[#13ec13] underline underline-offset-4 decoration-2 decoration-[#13ec13]/30 hover:decoration-[#13ec13] transition-all">
                                Read Documentation
                            </Link>
                            <Link href="/playground" className="text-gray-900 font-bold hover:text-[#13ec13] underline underline-offset-4 decoration-2 decoration-gray-200 hover:decoration-[#13ec13] transition-all">
                                Try Sandbox
                            </Link>
                        </div>
                    </div>

                    {/* Right: Code Block */}
                    <div className="relative group">
                        <div className="absolute -inset-2 bg-gradient-to-r from-[#13ec13] to-blue-500 rounded-2xl blur opacity-20 group-hover:opacity-40 transition-opacity"></div>
                        <div className="relative bg-[#1e293b] rounded-xl overflow-hidden shadow-2xl border border-gray-700">

                            {/* Window Controls */}
                            <div className="flex items-center justify-between px-4 py-3 bg-[#0f172a] border-b border-gray-700">
                                <div className="flex items-center gap-1.5">
                                    <div className="w-3 h-3 rounded-full bg-red-500"></div>
                                    <div className="w-3 h-3 rounded-full bg-yellow-500"></div>
                                    <div className="w-3 h-3 rounded-full bg-green-500"></div>
                                </div>
                                <div className="text-xs text-gray-500 font-mono">bash</div>
                            </div>

                            {/* Code */}
                            <div className="p-6 font-mono text-sm relative">
                                <button
                                    onClick={handleCopy}
                                    className="absolute top-4 right-4 p-2 rounded-lg bg-white/5 hover:bg-white/10 text-gray-400 hover:text-white transition-colors"
                                >
                                    {copied ? <Check className="w-4 h-4 text-[#13ec13]" /> : <Copy className="w-4 h-4" />}
                                </button>
                                <div className="text-blue-300">
                                    <span className="text-purple-400">curl</span> <span className="text-yellow-300">-X</span> POST <span className="text-green-400">&quot;https://api.diagapi.com/detect&quot;</span> \
                                </div>
                                <div className="text-gray-300 pl-4">
                                    <span className="text-yellow-300">-H</span> <span className="text-green-400">&quot;x-api-key: YOUR_KEY&quot;</span> \
                                </div>
                                <div className="text-gray-300 pl-4">
                                    <span className="text-yellow-300">-F</span> <span className="text-green-400">&quot;image=@leaf.jpg&quot;</span> \
                                </div>
                                <div className="text-gray-300 pl-4">
                                    <span className="text-yellow-300">-F</span> <span className="text-green-400">&quot;crop=Tomato&quot;</span>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </section>
    );
}
