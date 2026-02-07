'use client'

import { useState } from 'react'
import { Eye, EyeOff, Copy, RefreshCw, Key } from 'lucide-react'

interface APIKeyCardProps {
    apiKey: string
    onRegenerate: () => void
}

export function APIKeyCard({ apiKey, onRegenerate }: APIKeyCardProps) {
    const [show, setShow] = useState(false)
    const [copied, setCopied] = useState(false)

    const handleCopy = () => {
        navigator.clipboard.writeText(apiKey)
        setCopied(true)
        setTimeout(() => setCopied(false), 2000)
    }

    return (
        <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
            <div className="flex justify-between items-start mb-8">
                <div className="flex items-center gap-3">
                    <div className="bg-orange-50 p-2 rounded-lg text-orange-500">
                        <Key className="w-5 h-5" />
                    </div>
                    <div>
                        <h3 className="font-bold text-lg text-[var(--text-primary)]">Public API Key</h3>
                        <p className="text-xs text-[var(--text-secondary)]">Use this key to authenticate your requests.</p>
                    </div>
                </div>
                <button
                    onClick={onRegenerate}
                    className="flex items-center gap-2 text-xs font-bold text-gray-400 hover:text-orange-500 transition-colors"
                >
                    <RefreshCw className="w-3.5 h-3.5" />
                    Regenerate
                </button>
            </div>

            <div className="flex gap-4">
                <div className="flex-1 bg-gray-50 border border-[var(--border-light)] rounded-xl px-4 py-3 font-mono text-sm overflow-hidden flex items-center justify-between">
                    <span className="truncate max-w-[400px]">
                        {show ? apiKey : '••••••••••••••••••••••••••••••••'}
                    </span>
                    <button
                        onClick={() => setShow(!show)}
                        className="text-gray-400 hover:text-[var(--text-primary)] transition-colors p-1"
                    >
                        {show ? <EyeOff size={18} /> : <Eye size={18} />}
                    </button>
                </div>
                <button
                    onClick={handleCopy}
                    className={`px-6 rounded-xl font-bold text-sm transition-all flex items-center gap-2 border ${copied
                            ? 'bg-[var(--status-success-bg)] text-[var(--status-success-text)] border-[var(--status-success-text)]/20'
                            : 'bg-white border-[var(--border-light)] hover:bg-gray-50 text-[var(--text-primary)]'
                        }`}
                >
                    <Copy size={16} />
                    {copied ? 'Copied!' : 'Copy Key'}
                </button>
            </div>

            <div className="mt-6 flex gap-2 text-[10px] text-gray-400 leading-none">
                <span className="w-1.5 h-1.5 rounded-full bg-blue-400 mt-[1px]"></span>
                <span>Never share your API key in client-side code or public repositories.</span>
            </div>
        </div>
    )
}
