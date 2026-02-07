'use client'

import React, { useState } from 'react'
import Link from 'next/link'
import { Upload, ChevronRight, AlertTriangle, CheckCircle2, FlaskConical, Github, ArrowRight, Play, Search, Leaf } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'

export default function LandingPage() {
  const [analyzing, setAnalyzing] = useState(false)
  const [result, setResult] = useState<any>(null)
  const [selectedFile, setSelectedFile] = useState<any>(null)

  const handleRunDiagnosis = () => {
    setAnalyzing(true)
    setTimeout(() => {
      setResult({
        disease: 'Late Blight',
        latin: 'Phytophthora infestans',
        confidence: 0.982,
        advisory: 'Immediate fungicidal treatment is highly recommended. Isolate affected plants to prevent spread to neighboring crops. Monitor humidity levels.',
        treatment: 'Copper-based Fungicide'
      })
      setAnalyzing(false)
    }, 2000)
  }

  return (
    <div className="min-h-screen bg-[#f8fafb] text-[#111827] font-sans selection:bg-[#13ec13]/30">
      {/* Header */}
      <nav className="h-20 border-b border-gray-200/60 flex items-center justify-between px-10 bg-white/80 backdrop-blur-md sticky top-0 z-50">
        <div className="flex items-center gap-12">
          <div className="flex items-center gap-2">
            <div className="bg-[#13ec13] p-1.5 rounded-lg">
              <Leaf className="w-5 h-5 text-white fill-white" />
            </div>
            <span className="font-black text-xl tracking-tight">DiagAPI</span>
          </div>
          <div className="hidden md:flex items-center gap-8 text-sm font-bold text-gray-400">
            <Link href="#" className="hover:text-black transition-colors">Products</Link>
            <Link href="#" className="hover:text-black transition-colors">Solutions</Link>
            <Link href="#" className="hover:text-black transition-colors">Pricing</Link>
            <Link href="#" className="hover:text-black transition-colors">Docs</Link>
          </div>
        </div>
        <div className="flex items-center gap-6">
          <button className="text-gray-400 hover:text-black transition-colors">
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364-6.364l-.707.707M6.364 17.636l-.707.707M6.364 6.364l.707.707m11.314 11.314l.707.707M12 5a7 7 0 100 14 7 7 0 000-14z" strokeLinecap="round" strokeLinejoin="round" strokeWidth="2"></path></svg>
          </button>
          <Link href="/login" className="bg-[#13ec13] hover:bg-[#0fb30f] text-white font-black px-6 py-2.5 rounded-lg shadow-lg shadow-green-500/20 transition-all text-sm">
            Contact Sales
          </Link>
        </div>
      </nav>

      <main className="max-w-7xl mx-auto px-10 pt-20 pb-40">
        {/* Badge */}
        <div className="flex justify-center mb-10">
          <div className="bg-[#dcfce7] border border-[#bbf7d0] rounded-full px-4 py-1.5 flex items-center gap-2">
            <span className="text-[#13ec13]">⚡</span>
            <span className="text-[#166534] text-xs font-black uppercase tracking-widest">V2.0 Model Live</span>
          </div>
        </div>

        {/* Hero Section */}
        <div className="text-center max-w-4xl mx-auto mb-20">
          <h1 className="text-7xl font-black tracking-tighter leading-[1.05] text-[#111827] mb-8">
            Instant Plant Pathology <br /> Analysis Engine
          </h1>
          <p className="text-xl text-gray-500 font-medium leading-relaxed max-w-2xl mx-auto mb-12">
            Upload an image of crop tissue to test our diagnostic API. Detect over 150 pathogens with 99.8% enterprise-grade accuracy.
          </p>
        </div>

        {/* Upload Interface */}
        <div className="max-w-3xl mx-auto mb-32">
          <div className={`bg-white border-2 border-dashed ${selectedFile ? 'border-[#13ec13]' : 'border-gray-200'} rounded-2xl p-20 flex flex-col items-center justify-center text-center transition-all shadow-sm`}>
            <div className="w-16 h-16 bg-gray-50 rounded-full flex items-center justify-center mb-6">
              <Upload className="w-8 h-8 text-gray-400" />
            </div>
            <h3 className="font-bold text-lg mb-2"><span className="text-[#13ec13]">Click to upload</span> or drag and drop</h3>
            <p className="text-sm text-gray-400 font-medium tracking-tight">SVG, PNG, JPG or GIF (MAX. 10MB)</p>
          </div>

          <div className="flex justify-center mt-6 items-center gap-2 text-xs text-gray-400 font-bold uppercase tracking-widest cursor-pointer hover:text-gray-600 transition-colors">
            <Search size={14} /> Try with a sample image
          </div>

          <div className="flex justify-center mt-12">
            <button
              onClick={handleRunDiagnosis}
              disabled={analyzing}
              className="bg-[#13ec13] hover:bg-[#0fb30f] text-white font-black px-12 py-4 rounded-xl shadow-2xl shadow-green-500/30 transition-all flex items-center gap-3 text-lg active:scale-95 disabled:opacity-50"
            >
              <div className="w-6 h-6"><Play className="fill-white" /></div>
              {analyzing ? 'Analyzing Crop...' : 'Run Diagnosis'}
            </button>
          </div>
        </div>

        {/* Analysis Result Section */}
        <AnimatePresence>
          {result && (
            <motion.div
              initial={{ opacity: 0, y: 30 }}
              animate={{ opacity: 1, y: 0 }}
              className="max-w-4xl mx-auto"
            >
              <div className="flex justify-center items-center gap-4 mb-8">
                <div className="h-[1px] flex-1 bg-gray-200"></div>
                <span className="text-[10px] font-black text-gray-400 uppercase tracking-[0.2em]">Analysis Result</span>
                <div className="h-[1px] flex-1 bg-gray-200"></div>
              </div>

              <div className="bg-white rounded-[32px] p-4 shadow-2xl shadow-black/5 border border-gray-100 flex flex-col md:flex-row gap-8">
                {/* Leaf Image */}
                <div className="w-full md:w-[320px] h-[320px] rounded-[24px] overflow-hidden relative group">
                  <img
                    src="https://images.unsplash.com/photo-1598214811340-025c27633c7f?q=80&w=2671&auto=format&fit=crop"
                    alt="Analyzed Leaf"
                    className="w-full h-full object-cover grayscale-[0.2] transition-all group-hover:scale-110 duration-700"
                  />
                  <div className="absolute top-4 left-4 bg-black/60 backdrop-blur-md px-3 py-1.5 rounded-full flex items-center gap-2 border border-white/20">
                    <div className="w-4 h-4 rounded-full bg-[#13ec13] flex items-center justify-center">
                      <CheckCircle2 className="text-white w-3 h-3" />
                    </div>
                    <span className="text-xs text-white font-black uppercase tracking-wider">Processed</span>
                  </div>
                </div>

                {/* Result Content */}
                <div className="flex-1 py-4 pr-6 space-y-8">
                  <div className="flex justify-between items-start">
                    <div>
                      <div className="flex items-center gap-2">
                        <h2 className="text-3xl font-black text-[#111827]">{result.disease}</h2>
                        <AlertTriangle className="text-red-500 w-6 h-6" />
                      </div>
                      <p className="text-sm font-mono text-gray-400 italic mt-1">{result.latin}</p>
                    </div>
                    <div className="bg-gray-50 border border-gray-100 px-4 py-2 rounded-xl flex items-center gap-3">
                      <div className="text-right">
                        <p className="text-[10px] font-black uppercase text-gray-400 leading-none">Confidence</p>
                        <p className="text-sm font-black text-[#166534] mt-1">{(result.confidence * 100).toFixed(1)}%</p>
                      </div>
                      <div className="w-10 h-10 rounded-full border-4 border-gray-100 flex items-center justify-center relative">
                        <svg className="w-10 h-10 absolute -rotate-90">
                          <circle cx="20" cy="20" r="16" fill="none" stroke="#13ec13" strokeWidth="4" strokeDasharray={`${result.confidence * 100} 100`} />
                        </svg>
                      </div>
                    </div>
                  </div>

                  <div className="bg-[#fcfdfe] border-l-4 border-[#13ec13] p-6 rounded-r-2xl">
                    <div className="flex items-center gap-2 mb-3">
                      <Search size={16} className="text-gray-900" />
                      <h4 className="font-black text-sm text-[#111827] uppercase tracking-wider">Pathology Advisory</h4>
                    </div>
                    <p className="text-[13px] text-gray-500 font-medium leading-relaxed">
                      {result.advisory}
                    </p>
                  </div>

                  <div className="flex items-center justify-between pt-4 border-t border-gray-100">
                    <div className="flex items-center gap-4">
                      <div className="bg-blue-50 p-2.5 rounded-xl text-blue-500">
                        <FlaskConical size={20} />
                      </div>
                      <div>
                        <p className="text-[10px] font-black uppercase text-gray-400 leading-none mb-1">Recommended Treatment</p>
                        <p className="font-black text-[var(--text-primary)]">{result.treatment}</p>
                      </div>
                    </div>
                    <button className="bg-black hover:bg-gray-800 text-white font-black px-6 py-3 rounded-xl transition-all flex items-center gap-2 text-xs">
                      View Product
                      <ArrowRight size={14} />
                    </button>
                  </div>
                </div>
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </main>

      {/* Footer */}
      <footer className="text-center py-20 border-t border-gray-200/60 bg-white">
        <div className="flex justify-center items-center gap-2 mb-4 text-[#111827]/40">
          <div className="w-4 h-4"><svg fill="currentColor" viewBox="0 0 20 20"><path fillRule="evenodd" d="M12.395 2.553a1 1 0 00-1.45-.385c-.345.23-.614.558-.822.944l-1.111 2.064c-.201.374-.467.68-.78.913a.913.913 0 01-1.096 0 2.27 2.27 0 00-.78-.913l-1.111-2.064a1.888 1.888 0 00-.822-.944 1 1 0 10-1.065 1.693c.243.153.44.385.584.654l1.111 2.064c.552 1.025 1.503 1.802 2.625 2.148v.56a2.27 2.27 0 00.781.913.913.913 0 011.096 0 2.27 2.27 0 00.78-.913v-.56c1.123-.346 2.074-1.123 2.626-2.148l1.11-2.064a1.888 1.888 0 00.585-.654 1 1 0 00-1.066-1.693zM10 18a8 8 0 100-16 8 8 0 000 16z" clipRule="evenodd"></path></svg></div>
          <p className="text-[10px] font-black uppercase tracking-[0.3em]">Powered by DiagAPI Enterprise Engine</p>
        </div>
        <p className="text-[10px] text-gray-400 font-bold uppercase tracking-widest">© 2024 DiagAPI Inc. All rights reserved.</p>
      </footer>
    </div>
  )
}
