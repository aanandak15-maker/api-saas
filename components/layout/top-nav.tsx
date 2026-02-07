'use client'

import { Search, Bell } from 'lucide-react'

export function TopNav() {
    return (
        <header className="fixed top-0 left-20 right-0 h-20 flex items-center justify-between px-8 z-40 bg-gradient-to-b from-[#050f0a] to-transparent pointer-events-none">
            {/* Search - Pointer Events restored for interactive elements */}
            <div className="pointer-events-auto w-96 relative">
                <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
                <input
                    type="text"
                    placeholder="Search fields, crops, or reports..."
                    className="w-full h-12 bg-[rgba(20,40,30,0.6)] backdrop-blur-md border border-[rgba(255,255,255,0.1)] rounded-full pl-12 pr-4 text-sm text-white focus:outline-none focus:border-[#00ff9d]/50 transition-colors shadow-lg"
                />
            </div>

            {/* Actions */}
            <div className="pointer-events-auto flex items-center gap-4">
                <button className="relative p-3 rounded-full bg-[rgba(20,40,30,0.6)] text-gray-300 hover:text-white hover:bg-[rgba(0,255,157,0.1)] transition-all border border-transparent hover:border-[#00ff9d]/30">
                    <Bell className="w-5 h-5" />
                    <span className="absolute top-3 right-3 w-2 h-2 bg-[#00ff9d] rounded-full shadow-[0_0_8px_#00ff9d]"></span>
                </button>
            </div>
        </header>
    )
}
