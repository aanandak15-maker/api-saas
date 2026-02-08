'use client'

import React, { useState } from 'react'
import Link from 'next/link'
import { Leaf, Search, Phone, Mail, MapPin } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'
import { FileUpload } from '@/components/demo/FileUpload'
import { AnalysisResult } from '@/components/demo/AnalysisResult'
import { PricingSection } from '@/components/pricing/PricingSection'

export default function LandingPage() {
  const [analyzing, setAnalyzing] = useState(false)
  const [result, setResult] = useState<any>(null)
  const [error, setError] = useState<string | null>(null)

  // Crop state for the API
  const [crop, setCrop] = useState("Tomato")

  const handleFileSelect = async (selectedFile: File) => {
    setAnalyzing(true)
    setError(null)
    setResult(null)

    try {
      const formData = new FormData()
      formData.append('image', selectedFile)
      formData.append('crop_type', crop)
      // Optional: Get real location
      formData.append('location_lat', '28.7041')
      formData.append('location_lng', '77.1025')

      const res = await fetch('/api/detect', {
        method: 'POST',
        body: formData,
      })

      if (!res.ok) {
        throw new Error(`Analysis failed: ${res.statusText}`)
      }

      const data = await res.json()

      if (!data.detected_disease) {
        throw new Error("Invalid response from server. Missing disease data.");
      }

      setResult(data)
    } catch (err: any) {
      console.error(err)
      setError(err.message || 'Failed to analyze image.')
    } finally {
      setAnalyzing(false)
    }
  }

  const clearAll = () => {
    setResult(null)
    setError(null)
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
            <Link href="/docs" className="hover:text-black transition-colors">Docs</Link>
          </div>
        </div>
        <div className="flex items-center gap-6">
          <Link href="/login" className="bg-[#13ec13] hover:bg-[#0fb30f] text-white font-black px-6 py-2.5 rounded-lg shadow-lg shadow-green-500/20 transition-all text-sm">
            Get Started
          </Link>
        </div>
      </nav>

      <main className="max-w-7xl mx-auto px-10 pt-20 pb-40">
        {/* Badge */}
        <div className="flex justify-center mb-10">
          <div className="bg-[#dcfce7] border border-[#bbf7d0] rounded-full px-4 py-1.5 flex items-center gap-2">
            <span className="text-[#13ec13]">⚡</span>
            <span className="text-[#166534] text-xs font-black uppercase tracking-widest">V2.0 Engine Live</span>
          </div>
        </div>

        {/* Hero Section */}
        <div className="text-center max-w-4xl mx-auto mb-12">
          <h1 className="text-7xl font-black tracking-tighter leading-[1.05] text-[#111827] mb-8">
            Instant Plant Pathology <br /> Analysis Engine
          </h1>
          <p className="text-xl text-gray-500 font-medium leading-relaxed max-w-2xl mx-auto mb-12">
            Upload an image of crop tissue to test our diagnostic API. Detect over 150 pathogens with 99.8% enterprise-grade accuracy.
          </p>
        </div>

        {/* Upload Interface */}
        <div className="max-w-3xl mx-auto mb-32">

          {/* Crop Selector */}
          <div className="mb-8 flex justify-center">
            <div className="relative inline-block w-64">
              <select
                value={crop}
                onChange={(e) => setCrop(e.target.value)}
                className="w-full pl-4 pr-10 py-3 bg-white border-2 border-gray-200 rounded-xl font-bold text-gray-700 shadow-sm focus:outline-none focus:border-[#13ec13] appearance-none cursor-pointer hover:border-gray-300 transition-colors"
                disabled={analyzing}
              >
                <option value="Tomato">Tomato</option>
                <option value="Potato">Potato</option>
                <option value="Wheat">Wheat</option>
                <option value="Rice">Rice</option>
                <option value="Corn">Corn</option>
              </select>
              <div className="absolute inset-y-0 right-0 flex items-center px-4 pointer-events-none text-gray-400">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M19 9l-7 7-7-7"></path></svg>
              </div>
            </div>
          </div>

          <FileUpload
            onFileSelect={handleFileSelect}
            isAnalyzing={analyzing}
            onClear={clearAll}
          />

          {error && (
            <div className="mt-6 p-4 bg-red-50 border-l-4 border-red-500 text-red-700 font-medium rounded-r-lg">
              {error}
            </div>
          )}
        </div>

        {/* Analysis Result Section */}
        <AnimatePresence>
          {result && (
            <motion.div
              initial={{ opacity: 0, y: 30 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, y: 20 }}
              className="max-w-4xl mx-auto"
            >
              <div className="flex justify-center items-center gap-4 mb-8">
                <div className="h-[1px] flex-1 bg-gray-200"></div>
                <span className="text-[10px] font-black text-gray-400 uppercase tracking-[0.2em]">Analysis Result</span>
                <div className="h-[1px] flex-1 bg-gray-200"></div>
              </div>

              <AnalysisResult data={result} />

            </motion.div>
          )}
        </AnimatePresence>

        {/* Pricing Section */}
        <div className="mt-32">
          <PricingSection />
        </div>
      </main>

      {/* Footer */}
      <footer className="py-20 border-t border-gray-200/60 bg-white">
        <div className="max-w-7xl mx-auto px-10 flex flex-col items-center">
          <div className="flex items-center gap-2 mb-6 text-[#111827]/40">
            <Leaf className="w-5 h-5" />
            <p className="text-[10px] font-black uppercase tracking-[0.3em]">Powered by DiagAPI Enterprise Engine</p>
          </div>
          <p className="text-[10px] text-gray-400 font-bold uppercase tracking-widest">© 2024 DiagAPI Inc. All rights reserved.</p>
        </div>
      </footer>
    </div>
  )
}
