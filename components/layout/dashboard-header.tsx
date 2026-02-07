'use client'

import { Bell, Search, User } from 'lucide-react'

export function DashboardHeader() {
    return (
        <header className="h-16 bg-[var(--bg-card)] border-b border-[var(--border-light)] px-6 flex items-center justify-between sticky top-0 z-10">
            {/* Title / Breadcrumb (Dynamic based on route could be added here, for now static or simple) */}
            <div className="flex items-center">
                <h1 className="text-lg font-bold text-[var(--text-primary)]">Dashboard Home</h1>
            </div>

            {/* Right Actions */}
            <div className="flex items-center gap-4">
                {/* Search - Hidden on small mobile */}
                <div className="hidden sm:flex items-center bg-gray-50 px-3 py-1.5 rounded-lg border border-[var(--border-light)] w-64">
                    <Search className="w-4 h-4 text-gray-400 mr-2" />
                    <input
                        type="text"
                        placeholder="Search..."
                        className="bg-transparent border-none outline-none text-sm w-full text-[var(--text-primary)] placeholder:text-gray-400"
                    />
                </div>

                {/* Notifications */}
                <button className="relative p-2 text-gray-400 hover:text-[var(--text-primary)] transition-colors">
                    <Bell className="w-5 h-5" />
                    <span className="absolute top-2 right-2 w-2 h-2 bg-[var(--accent-primary)] rounded-full border border-white"></span>
                </button>

                {/* Profile */}
                <div className="w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center overflow-hidden border border-gray-100 cursor-pointer">
                    {/* Placeholder for user avatar */}
                    <User className="w-5 h-5 text-gray-500" />
                </div>
            </div>
        </header>
    )
}
