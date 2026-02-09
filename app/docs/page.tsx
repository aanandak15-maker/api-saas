'use client';

import { Navbar } from '@/components/landing/Navbar';
import { Footer } from '@/components/landing/Footer';
import { Terminal, Copy, Check, Server, Shield } from 'lucide-react';
import { useState } from 'react';
import Link from 'next/link';

export default function DocsPage() {
    const [copied, setCopied] = useState(false);

    // Use the actual production URL
    const baseUrl = "https://plantdiseaseapi-akg4bxfbaegvfteg.southeastasia-01.azurewebsites.net";

    const handleCopy = (text: string) => {
        navigator.clipboard.writeText(text);
        setCopied(true);
        setTimeout(() => setCopied(false), 2000);
    };

    return (
        <div className="bg-white min-h-screen font-sans selection:bg-[#13ec13]/30">
            <Navbar />

            <main className="pt-32 pb-24">
                <div className="max-w-4xl mx-auto px-6 lg:px-8">

                    {/* Header */}
                    <div className="mb-16">
                        <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-blue-50 text-blue-600 text-xs font-black uppercase tracking-widest mb-6">
                            <Terminal className="w-3 h-3" />
                            <span>API Reference</span>
                        </div>
                        <h1 className="text-4xl font-black text-gray-900 mb-4">
                            Developer Documentation
                        </h1>
                        <p className="text-lg text-gray-500">
                            Integrate reliable plant disease detection into your applications.
                        </p>
                    </div>

                    {/* Base URL */}
                    <section className="mb-16">
                        <h2 className="text-2xl font-bold text-gray-900 mb-6 flex items-center gap-2">
                            <Server className="w-5 h-5 text-[#13ec13]" /> Base URL
                        </h2>
                        <div className="bg-gray-900 rounded-xl p-4 flex items-center justify-between group">
                            <code className="text-white font-mono text-sm break-all">
                                {baseUrl}
                            </code>
                            <button
                                onClick={() => handleCopy(baseUrl)}
                                className="p-2 rounded-lg bg-white/10 hover:bg-white/20 text-gray-400 hover:text-white transition-colors"
                            >
                                {copied ? <Check className="w-4 h-4 text-[#13ec13]" /> : <Copy className="w-4 h-4" />}
                            </button>
                        </div>
                    </section>

                    {/* Authentication */}
                    <section className="mb-16">
                        <h2 className="text-2xl font-bold text-gray-900 mb-6 flex items-center gap-2">
                            <Shield className="w-5 h-5 text-[#13ec13]" /> Authentication
                        </h2>
                        <p className="text-gray-600 mb-4">
                            All API requests must include your API key in the <code className="bg-gray-100 px-1 py-0.5 rounded text-sm font-mono text-gray-800">x-api-key</code> header.
                        </p>
                        <div className="bg-blue-50 border border-blue-100 rounded-xl p-6">
                            <p className="text-sm text-blue-800">
                                <strong>Note:</strong> You can generate your API key in the <Link href="/dashboard" className="underline hover:text-blue-600">Dashboard</Link> after signing up.
                            </p>
                        </div>
                    </section>

                    {/* Endpoints */}
                    <section>
                        <h2 className="text-2xl font-bold text-gray-900 mb-8">Endpoints</h2>

                        {/* /detect */}
                        <div className="border border-gray-200 rounded-2xl overflow-hidden mb-12">
                            <div className="bg-gray-50 px-6 py-4 border-b border-gray-200 flex items-center gap-4">
                                <span className="bg-green-100 text-green-700 font-black text-xs px-2 py-1 rounded uppercase">POST</span>
                                <code className="font-mono text-gray-700 font-bold">/detect</code>
                            </div>
                            <div className="p-6">
                                <p className="text-gray-600 mb-6">
                                    Analyze a plant leaf image to detect diseases, get confidence scores, and receive treatment recommendations.
                                </p>

                                <h3 className="font-bold text-gray-900 mb-4 text-sm uppercase tracking-wider">Request Body (Multipart/Form-Data)</h3>
                                <div className="overflow-x-auto">
                                    <table className="w-full text-left text-sm mb-8">
                                        <thead className="bg-gray-50 border-b border-gray-100 text-gray-500">
                                            <tr>
                                                <th className="px-4 py-3 font-medium">Field</th>
                                                <th className="px-4 py-3 font-medium">Type</th>
                                                <th className="px-4 py-3 font-medium">Description</th>
                                            </tr>
                                        </thead>
                                        <tbody className="divide-y divide-gray-100">
                                            <tr>
                                                <td className="px-4 py-3 font-mono text-blue-600">image</td>
                                                <td className="px-4 py-3 text-gray-500">File</td>
                                                <td className="px-4 py-3 text-gray-600">The leaf image file (JPEG, PNG).</td>
                                            </tr>
                                            <tr>
                                                <td className="px-4 py-3 font-mono text-blue-600">crop</td>
                                                <td className="px-4 py-3 text-gray-500">String</td>
                                                <td className="px-4 py-3 text-gray-600">Wait (optional), e.g., &quot;Tomato&quot;. Defaults to auto-detect if omitted.</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <h3 className="font-bold text-gray-900 mb-4 text-sm uppercase tracking-wider">Example Response</h3>
                                <div className="bg-[#1e293b] rounded-xl p-6 overflow-x-auto">
                                    <pre className="text-sm font-mono text-blue-300 leading-relaxed">
                                        {`{
  "diagnosis": "Early Blight",
  "confidence": 0.98,
  "crop": "Tomato",
  "treatment": {
    "organic": "Remove infected leaves...",
    "chemical": "Apply fungicide..."
  },
  "products": [
    {
       "name": "FungiStop",
       "link": "https://..."
    }
  ]
}`}
                                    </pre>
                                </div>
                            </div>
                        </div>

                    </section>

                </div>
            </main>

            <Footer />
        </div>
    );
}
