
"use client";

import { useState, useRef } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Upload, X, ScanFace, FileUp } from "lucide-react";
import { cn } from "@/lib/utils";

interface FileUploadProps {
    onFileSelect: (file: File) => void;
    isAnalyzing: boolean;
    onClear: () => void;
}

export function FileUpload({ onFileSelect, isAnalyzing, onClear }: FileUploadProps) {
    const [dragActive, setDragActive] = useState(false);
    const [preview, setPreview] = useState<string | null>(null);
    const inputRef = useRef<HTMLInputElement>(null);

    const handleDrag = (e: React.DragEvent) => {
        e.preventDefault();
        e.stopPropagation();
        if (e.type === "dragenter" || e.type === "dragover") {
            setDragActive(true);
        } else if (e.type === "dragleave") {
            setDragActive(false);
        }
    };

    const handleDrop = (e: React.DragEvent) => {
        e.preventDefault();
        e.stopPropagation();
        setDragActive(false);

        if (e.dataTransfer.files && e.dataTransfer.files[0]) {
            processFile(e.dataTransfer.files[0]);
        }
    };

    const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        e.preventDefault();
        if (e.target.files && e.target.files[0]) {
            processFile(e.target.files[0]);
        }
    };

    const processFile = (file: File) => {
        const reader = new FileReader();
        reader.onloadend = () => {
            setPreview(reader.result as string);
        };
        reader.readAsDataURL(file);
        onFileSelect(file);
    };

    const clearFile = (e: React.MouseEvent) => {
        e.stopPropagation();
        setPreview(null);
        if (inputRef.current) inputRef.current.value = "";
        onClear();
    };

    return (
        <div className="w-full max-w-lg mx-auto mb-8">
            <AnimatePresence mode="wait">
                {!preview ? (
                    <motion.div
                        key="upload"
                        initial={{ opacity: 0, scale: 0.95 }}
                        animate={{ opacity: 1, scale: 1 }}
                        exit={{ opacity: 0, scale: 0.95 }}
                        className={cn(
                            "relative flex flex-col items-center justify-center w-full h-64 border-2 border-dashed rounded-xl cursor-pointer transition-colors duration-200",
                            dragActive
                                ? "border-green-500 bg-green-50/50"
                                : "border-gray-300 hover:border-green-400 hover:bg-gray-50/30"
                        )}
                        onDragEnter={handleDrag}
                        onDragLeave={handleDrag}
                        onDragOver={handleDrag}
                        onDrop={handleDrop}
                        onClick={() => inputRef.current?.click()}
                    >
                        <input
                            ref={inputRef}
                            type="file"
                            className="hidden"
                            onChange={handleChange}
                            accept="image/*"
                        />

                        <motion.div
                            whileHover={{ scale: 1.1 }}
                            className="p-4 mb-4 rounded-full bg-green-100/50"
                        >
                            <Upload className="w-8 h-8 text-green-600" />
                        </motion.div>

                        <p className="mb-2 text-sm font-semibold text-gray-700">
                            Click to upload or drag & drop
                        </p>
                        <p className="text-xs text-gray-500">
                            Only clean, focused leaf images (JPG, PNG)
                        </p>
                    </motion.div>
                ) : (
                    <motion.div
                        key="preview"
                        initial={{ opacity: 0, y: 10 }}
                        animate={{ opacity: 1, y: 0 }}
                        className="relative w-full overflow-hidden rounded-xl shadow-lg border border-gray-100 bg-white"
                    >
                        <div className="relative aspect-video w-full bg-gray-100">
                            <img
                                src={preview}
                                alt="Leaf Preview"
                                className="absolute inset-0 w-full h-full object-cover"
                            />

                            {/* Overlay for Analyzing State */}
                            {isAnalyzing && (
                                <div className="absolute inset-0 bg-black/60 backdrop-blur-sm flex flex-col items-center justify-center text-white z-10">
                                    <ScanFace className="w-12 h-12 text-[#13ec13] animate-pulse mb-4" />
                                    <p className="text-sm font-medium tracking-widest animate-pulse">
                                        ANALYZING...
                                    </p>
                                    <div className="absolute bottom-0 left-0 right-0 h-1 bg-gradient-to-r from-transparent via-[#13ec13] to-transparent animate-[shimmer_2s_infinite]" />
                                </div>
                            )}

                            {/* Clear Button */}
                            {!isAnalyzing && (
                                <button
                                    onClick={clearFile}
                                    className="absolute top-3 right-3 p-2 bg-white/90 backdrop-blur rounded-full hover:bg-white text-gray-700 shadow-sm transition-all hover:rotate-90"
                                >
                                    <X className="w-5 h-5" />
                                </button>
                            )}
                        </div>

                        {/* Status if needed */}
                        <div className="p-4 bg-white/80 backdrop-blur border-t border-gray-100 flex items-center justify-between">
                            <span className="text-sm font-medium text-gray-600 truncate max-w-[200px]">
                                Selected Image
                            </span>
                            {!isAnalyzing && (
                                <button
                                    onClick={() => inputRef.current?.click()}
                                    className="text-xs font-semibold text-green-600 hover:text-green-700 flex items-center gap-1"
                                >
                                    <FileUp className="w-3 h-3" /> Change
                                </button>
                            )}
                        </div>
                    </motion.div>
                )}
            </AnimatePresence>
        </div>
    );
}
