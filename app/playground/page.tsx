
"use client";

import { useState } from "react";
import { FileUpload } from "@/components/demo/FileUpload";
import { AnalysisResult } from "@/components/demo/AnalysisResult";
import { Sprout } from "lucide-react";

export default function PlaygroundPage() {
    const [file, setFile] = useState<File | null>(null);
    const [crop, setCrop] = useState("Tomato");
    const [result, setResult] = useState<any>(null);
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState<string | null>(null);

    const handleFileSelect = async (selectedFile: File) => {
        setLoading(true);
        setError(null);
        setResult(null);

        try {
            const formData = new FormData();
            formData.append("image", selectedFile);
            formData.append("crop_type", crop);
            formData.append("location_lat", "28.7041");
            formData.append("location_lng", "77.1025");

            // Use Next.js API route which proxies to backend
            const res = await fetch("/api/detect", {
                method: "POST",
                body: formData,
            });

            if (!res.ok) {
                const errData = await res.json().catch(() => ({}));
                throw new Error(errData.error || `Analysis failed: ${res.statusText}`);
            }

            const detectionData = await res.json();
            setResult(detectionData);

        } catch (err: any) {
            console.error(err);
            setError(err.message || "Failed to analyze image.");
        } finally {
            setLoading(false);
        }
    };

    const clearAll = () => {
        setFile(null);
        setResult(null);
        setError(null);
    };

    return (
        <div className="min-h-screen bg-[#f8fafb] bg-[radial-gradient(#e5e7eb_1px,transparent_1px)] [background-size:16px_16px] flex flex-col items-center py-12 px-4 sm:px-6 lg:px-8">

            {/* Header */}
            <div className="text-center mb-8 space-y-2">
                <div className="inline-flex items-center justify-center p-3 bg-white rounded-2xl shadow-sm mb-4">
                    <Sprout className="w-8 h-8 text-[#13ec13]" />
                </div>
                <h1 className="text-4xl font-extrabold tracking-tight text-gray-900 sm:text-5xl">
                    Plant Disease <span className="text-transparent bg-clip-text bg-gradient-to-r from-green-600 to-[#13ec13]">Playground</span>
                </h1>
                <p className="max-w-xl mx-auto text-lg text-gray-600">
                    Upload a leaf photo to get instant diagnosis, scientific insights, and treatment recommendations.
                </p>
            </div>

            {/* Input Controls */}
            <div className="w-full max-w-lg mb-6">
                <label className="block text-sm font-medium text-gray-700 mb-2 pl-1">Select Crop Type</label>
                <div className="relative">
                    <select
                        value={crop}
                        onChange={(e) => setCrop(e.target.value)}
                        className="w-full p-3 pl-4 pr-10 bg-white border border-gray-200 rounded-xl shadow-sm focus:ring-2 focus:ring-[#13ec13] focus:border-transparent transition-all appearance-none text-gray-700 font-medium"
                        disabled={loading}
                    >
                        <option value="Tomato">Tomato</option>
                        <option value="Potato">Potato</option>
                        <option value="Wheat">Wheat</option>
                        <option value="Rice">Rice</option>
                        <option value="Corn">Corn</option>
                    </select>
                    <div className="absolute inset-y-0 right-0 flex items-center px-4 pointer-events-none text-gray-500">
                        <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M19 9l-7 7-7-7"></path></svg>
                    </div>
                </div>
            </div>

            {/* Main Interface */}
            <div className="w-full max-w-3xl">
                <FileUpload
                    onFileSelect={handleFileSelect}
                    isAnalyzing={loading}
                    onClear={clearAll}
                />

                {error && (
                    <div className="mt-4 p-4 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm text-center animate-in fade-in slide-in-from-top-4">
                        {error}
                    </div>
                )}

                {result && (
                    <div className="mt-8 animate-in fade-in slide-in-from-bottom-8 duration-700">
                        <AnalysisResult data={result} />
                    </div>
                )}
            </div>

            <footer className="mt-16 text-center text-sm text-gray-400">
                Powered by Agri SaaS Intelligence API
            </footer>
        </div>
    );
}
