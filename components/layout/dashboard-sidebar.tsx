'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import {
    LayoutDashboard,
    Package,
    Map as MapIcon,
    BarChart3,
    FileText,
    CreditCard,
    Settings,
    Leaf
} from 'lucide-react'

const navItems = [
    { name: 'Dashboard', href: '/dashboard', icon: LayoutDashboard },
    { name: 'Products', href: '/dashboard/products', icon: Package },
    { name: 'Mapping', href: '/dashboard/mapping', icon: MapIcon },
    { name: 'Analytics', href: '/dashboard/analytics', icon: BarChart3 },
    { name: 'API Docs', href: '/dashboard/api-keys', icon: FileText },
]

const bottomItems = [
    { name: 'Billing', href: '/dashboard/billing', icon: CreditCard },
    { name: 'Settings', href: '/dashboard/settings', icon: Settings },
]

export function DashboardSidebar() {
    const pathname = usePathname()

    return (
        <div className="w-64 bg-[var(--bg-card)] border-r border-[var(--border-light)] h-screen flex flex-col fixed left-0 top-0 z-10 hidden md:flex">
            {/* Brand */}
            <div className="h-16 flex items-center px-6 border-b border-[var(--border-light)]">
                <div className="flex items-center gap-2">
                    <div className="bg-[var(--accent-primary)] p-1.5 rounded-lg">
                        <Leaf className="w-5 h-5 text-white fill-white" />
                    </div>
                    <div className="flex flex-col">
                        <span className="font-bold text-lg leading-none tracking-tight">AgriDiag</span>
                        <span className="text-[10px] text-[var(--text-secondary)] font-medium">Diagnostic Service</span>
                    </div>
                </div>
            </div>

            {/* Navigation */}
            <nav className="flex-1 py-6 px-3 space-y-1 overflow-y-auto">
                {navItems.map((item) => {
                    const isActive = pathname === item.href
                    return (
                        <Link
                            key={item.href}
                            href={item.href}
                            className={`flex items-center gap-3 px-3 py-2.5 rounded-lg text-sm font-medium transition-colors ${isActive
                                    ? 'bg-[var(--status-success-bg)] text-[var(--status-success-text)]' // Active state (Light Green bg)
                                    : 'text-[var(--text-secondary)] hover:bg-gray-50 hover:text-[var(--text-primary)]'
                                }`}
                        >
                            <item.icon className={`w-5 h-5 ${isActive ? 'text-[var(--status-success-text)]' : 'text-gray-400'}`} />
                            {item.name}
                        </Link>
                    )
                })}
            </nav>

            {/* Bottom Actions */}
            <div className="p-3 border-t border-[var(--border-light)] space-y-1">
                {bottomItems.map((item) => (
                    <Link
                        key={item.href}
                        href={item.href}
                        className="flex items-center gap-3 px-3 py-2.5 rounded-lg text-sm font-medium text-[var(--text-secondary)] hover:bg-gray-50 hover:text-[var(--text-primary)] transition-colors"
                    >
                        <item.icon className="w-5 h-5 text-gray-400" />
                        {item.name}
                    </Link>
                ))}
            </div>
        </div>
    )
}
