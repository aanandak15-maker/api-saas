'use client'

import { useState, useCallback } from 'react'

export default function DemoPage() {
    const [selectedFile, setSelectedFile] = useState<File | null>(null)
    const [previewUrl, setPreviewUrl] = useState<string | null>(null)
    const [loading, setLoading] = useState(false)
    const [result, setResult] = useState<any>(null)
    const [error, setError] = useState<string | null>(null)

    const API_URL = process.env.NEXT_PUBLIC_API_URL || 'http://localhost:8000'

    // Demo API Key (Note: In prod, this should be a restricted demo key)
    const DEMO_API_KEY = '9xG5rJ4vczd8ad7yOZN5LK1yUelgvY6b'

    const handleFileSelect = useCallback((e: React.ChangeEvent<HTMLInputElement>) => {
        const file = e.target.files?.[0]
        if (file) {
            setSelectedFile(file)
            setPreviewUrl(URL.createObjectURL(file))
            setResult(null)
            setError(null)
        }
    }, [])

    const handleDrop = useCallback((e: React.DragEvent) => {
        e.preventDefault()
        const file = e.dataTransfer.files?.[0]
        if (file && file.type.startsWith('image/')) {
            setSelectedFile(file)
            setPreviewUrl(URL.createObjectURL(file))
            setResult(null)
            setError(null)
        }
    }, [])

    const handleAnalyze = async () => {
        if (!selectedFile) return

        setLoading(true)
        setError(null)
        setResult(null)

        try {
            const formData = new FormData()
            formData.append('image', selectedFile)

            const res = await fetch(`${API_URL}/detect`, {
                method: 'POST',
                headers: {
                    'X-API-Key': DEMO_API_KEY
                },
                body: formData
            })

            const data = await res.json()

            if (!res.ok) {
                throw new Error(data.error || 'Detection failed')
            }

            setResult(data)
        } catch (err: any) {
            setError(err.message || 'Something went wrong')
        } finally {
            setLoading(false)
        }
    }

    const handleReset = () => {
        setSelectedFile(null)
        setPreviewUrl(null)
        setResult(null)
        setError(null)
    }

    return (
        <div className="min-h-screen bg-gradient-to-br from-green-50 via-white to-emerald-50">
            {/* Header */}
            <header className="bg-white/80 backdrop-blur-sm border-b border-green-100 sticky top-0 z-10">
                <div className="max-w-4xl mx-auto px-6 py-4 flex items-center justify-between">
                    <div>
                        <h1 className="text-xl font-bold text-green-800">🌿 Disease Intelligence</h1>
                        <p className="text-sm text-gray-500">AI-Powered Crop Health Analysis</p>
                    </div>
                    <a href="/dashboard" className="text-sm text-green-600 hover:text-green-800 font-medium">
                        Client Dashboard →
                    </a>
                </div>
            </header>

            <main className="max-w-4xl mx-auto px-6 py-12">
                {/* Hero Section */}
                <div className="text-center mb-12">
                    <h2 className="text-4xl font-bold text-gray-900 mb-4">
                        Diagnose Plant Diseases <span className="text-green-600">Instantly</span>
                    </h2>
                    <p className="text-lg text-gray-600 max-w-2xl mx-auto">
                        Upload a photo of your crop and get AI-powered diagnosis with treatment recommendations in seconds.
                    </p>
                </div>

                {/* Upload Section */}
                <div className="bg-white rounded-2xl shadow-xl overflow-hidden border border-green-100">
                    {!result ? (
                        <div className="p-8">
                            {/* Dropzone */}
                            <div
                                onDrop={handleDrop}
                                onDragOver={(e) => e.preventDefault()}
                                className={`
                                    border-2 border-dashed rounded-xl p-12 text-center transition-all cursor-pointer
                                    ${previewUrl
                                        ? 'border-green-400 bg-green-50'
                                        : 'border-gray-300 hover:border-green-400 hover:bg-green-50/50'
                                    }
                                `}
                                onClick={() => document.getElementById('fileInput')?.click()}
                            >
                                {previewUrl ? (
                                    <div className="space-y-4">
                                        <img
                                            src={previewUrl}
                                            alt="Preview"
                                            className="max-h-64 mx-auto rounded-lg shadow-md"
                                        />
                                        <p className="text-sm text-gray-500">
                                            {selectedFile?.name} • Click to change
                                        </p>
                                    </div>
                                ) : (
                                    <div className="space-y-4">
                                        <div className="w-16 h-16 mx-auto bg-green-100 rounded-full flex items-center justify-center">
                                            <svg className="w-8 h-8 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                            </svg>
                                        </div>
                                        <div>
                                            <p className="text-lg font-medium text-gray-700">Drop your image here</p>
                                            <p className="text-sm text-gray-500">or click to browse</p>
                                        </div>
                                    </div>
                                )}
                                <input
                                    id="fileInput"
                                    type="file"
                                    accept="image/*"
                                    className="hidden"
                                    onChange={handleFileSelect}
                                />
                            </div>

                            {/* Analyze Button */}
                            {selectedFile && (
                                <button
                                    onClick={handleAnalyze}
                                    disabled={loading}
                                    className={`
                                        w-full mt-6 py-4 px-6 rounded-xl font-semibold text-white text-lg
                                        transition-all transform hover:scale-[1.02]
                                        ${loading
                                            ? 'bg-gray-400 cursor-not-allowed'
                                            : 'bg-gradient-to-r from-green-600 to-emerald-600 hover:from-green-700 hover:to-emerald-700 shadow-lg hover:shadow-xl'
                                        }
                                    `}
                                >
                                    {loading ? (
                                        <span className="flex items-center justify-center gap-3">
                                            <svg className="animate-spin h-5 w-5" viewBox="0 0 24 24">
                                                <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none" />
                                                <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z" />
                                            </svg>
                                            Analyzing with AI...
                                        </span>
                                    ) : (
                                        '🔬 Analyze Image'
                                    )}
                                </button>
                            )}

                            {/* Error */}
                            {error && (
                                <div className="mt-6 p-4 bg-red-50 border border-red-200 rounded-xl text-red-700 text-center">
                                    {error}
                                </div>
                            )}
                        </div>
                    ) : (
                        /* Result Display */
                        <div>
                            {/* Result Header */}
                            <div className={`p-6 ${result.result?.status === 'healthy'
                                ? 'bg-gradient-to-r from-green-500 to-emerald-500'
                                : result.result?.status === 'unknown'
                                    ? 'bg-gradient-to-r from-yellow-500 to-orange-500'
                                    : 'bg-gradient-to-r from-red-500 to-rose-500'
                                } text-white`}>
                                <div className="flex items-center justify-between">
                                    <div>
                                        <p className="text-sm opacity-80 uppercase tracking-wide">Diagnosis</p>
                                        <h3 className="text-2xl font-bold">
                                            {result.result?.status === 'healthy'
                                                ? '✅ Healthy Plant'
                                                : result.result?.status === 'unknown'
                                                    ? '❓ Unknown Condition'
                                                    : `⚠️ ${result.detected_disease?.disease_name || 'Disease Detected'}`
                                            }
                                        </h3>
                                    </div>
                                    {result.detected_disease?.confidence && (
                                        <div className="text-right">
                                            <p className="text-sm opacity-80">Confidence</p>
                                            <p className="text-3xl font-bold">
                                                {Math.round(result.detected_disease.confidence * 100)}%
                                            </p>
                                        </div>
                                    )}
                                </div>
                            </div>

                            {/* Result Body */}
                            <div className="p-6 space-y-6">
                                {/* Image Preview */}
                                {previewUrl && (
                                    <div className="flex justify-center">
                                        <img
                                            src={previewUrl}
                                            alt="Analyzed"
                                            className="max-h-48 rounded-lg shadow-md"
                                        />
                                    </div>
                                )}

                                {/* Disease Details (if detected) */}
                                {result.detected_disease && (
                                    <div className="grid md:grid-cols-2 gap-4">
                                        <div className="bg-gray-50 rounded-xl p-4">
                                            <p className="text-sm text-gray-500 mb-1">Crop</p>
                                            <p className="font-semibold text-gray-900">{result.detected_disease.crop}</p>
                                        </div>
                                        <div className="bg-gray-50 rounded-xl p-4">
                                            <p className="text-sm text-gray-500 mb-1">Disease ID</p>
                                            <p className="font-mono text-sm text-gray-900">{result.detected_disease.disease_id}</p>
                                        </div>
                                    </div>
                                )}

                                {/* Advisory Link */}
                                {result.advisory_url && (
                                    <a
                                        href={`${API_URL}${result.advisory_url}`}
                                        target="_blank"
                                        rel="noopener noreferrer"
                                        className="block w-full py-3 px-6 bg-blue-50 hover:bg-blue-100 border border-blue-200 rounded-xl text-blue-700 font-medium text-center transition-colors"
                                    >
                                        📖 View Full Treatment Advisory →
                                    </a>
                                )}

                                {/* Try Again */}
                                <button
                                    onClick={handleReset}
                                    className="w-full py-3 px-6 bg-gray-100 hover:bg-gray-200 rounded-xl text-gray-700 font-medium transition-colors"
                                >
                                    ↩️ Analyze Another Image
                                </button>
                            </div>
                        </div>
                    )}
                </div>

                {/* Features */}
                <div className="mt-16 grid md:grid-cols-3 gap-8 text-center">
                    <div className="p-6">
                        <div className="w-12 h-12 mx-auto bg-green-100 rounded-xl flex items-center justify-center mb-4">
                            <span className="text-2xl">🧠</span>
                        </div>
                        <h3 className="font-semibold text-gray-900 mb-2">AI-Powered</h3>
                        <p className="text-sm text-gray-600">Powered by Google Gemini Vision for accurate diagnosis</p>
                    </div>
                    <div className="p-6">
                        <div className="w-12 h-12 mx-auto bg-green-100 rounded-xl flex items-center justify-center mb-4">
                            <span className="text-2xl">⚡</span>
                        </div>
                        <h3 className="font-semibold text-gray-900 mb-2">Instant Results</h3>
                        <p className="text-sm text-gray-600">Get diagnosis and treatment in seconds</p>
                    </div>
                    <div className="p-6">
                        <div className="w-12 h-12 mx-auto bg-green-100 rounded-xl flex items-center justify-center mb-4">
                            <span className="text-2xl">🛒</span>
                        </div>
                        <h3 className="font-semibold text-gray-900 mb-2">Product Matching</h3>
                        <p className="text-sm text-gray-600">Recommends your products for treatment</p>
                    </div>
                </div>

                {/* CTA */}
                <div className="mt-16 text-center bg-gradient-to-r from-green-600 to-emerald-600 rounded-2xl p-8 text-white">
                    <h3 className="text-2xl font-bold mb-2">Want This For Your Business?</h3>
                    <p className="opacity-90 mb-6">Integrate disease detection into your app or sell your products smarter.</p>
                    <a
                        href="/dashboard"
                        className="inline-block bg-white text-green-700 font-semibold py-3 px-8 rounded-xl hover:bg-green-50 transition-colors"
                    >
                        Get Started Free →
                    </a>
                </div>
            </main>

            {/* Footer */}
            <footer className="text-center py-8 text-sm text-gray-500">
                Disease Intelligence Engine • Powered by AI
            </footer>
        </div>
    )
}
