'use client'

import { LayoutDashboard, Sprout, Settings, BarChart3, User, LogOut } from 'lucide-react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import Image from 'next/image'
import { cn } from '@/lib/utils'

const navItems = [
    { name: 'Dashboard', href: '/dashboard?view=overview', icon: LayoutDashboard },
    { name: 'Field Monitoring', href: '/dashboard?view=monitor', icon: Sprout },
    { name: 'Analytics', href: '/dashboard?view=analytics', icon: BarChart3 },
    { name: 'Settings', href: '/dashboard?view=settings', icon: Settings },
]

export function Sidebar() {
    const pathname = usePathname()

    return (
        <aside className="fixed left-0 top-0 h-screen w-20 flex flex-col items-center py-8 glass-panel border-r border-[#1f3f2f] z-50">
            {/* Logo */}
            <div className="mb-12">
                <div className="w-10 h-10 bg-gradient-to-br from-green-400 to-blue-500 rounded-lg shadow-neon flex items-center justify-center">
                    <Sprout className="text-white w-6 h-6" />
                </div>
            </div>

            {/* Nav */}
            <nav className="flex-1 flex flex-col gap-6 w-full px-2">
                {navItems.map((item) => {
                    const isActive = pathname === item.href
                    return (
                        <Link
                            key={item.href}
                            href={item.href}
                            className={cn(
                                "flex flex-col items-center justify-center p-3 rounded-xl transition-all duration-300 group",
                                isActive ? "bg-[#00ff9d]/10 text-[#00ff9d] shadow-[0_0_15px_rgba(0,255,157,0.3)]" : "text-gray-400 hover:text-white"
                            )}
                        >
                            <item.icon className={cn("w-6 h-6 mb-1 transition-transform group-hover:scale-110", isActive && "scale-110")} />
                            <span className="text-[10px] font-medium opacity-0 group-hover:opacity-100 transition-opacity absolute left-16 bg-black/80 px-2 py-1 rounded glass-panel whitespace-nowrap pointer-events-none">
                                {item.name}
                            </span>
                        </Link>
                    )
                })}
            </nav>

            {/* Bottom Actions */}
            <div className="mt-auto flex flex-col gap-4">
                <button className="p-3 text-gray-400 hover:text-red-400 transition-colors">
                    <LogOut className="w-6 h-6" />
                </button>
                <div className="w-10 h-10 rounded-full bg-gray-700 overflow-hidden border-2 border-white/10 hover:border-[#00ff9d] transition-colors cursor-pointer relative">
                    {/* Placeholder Avatar */}
                    <Image
                        src="https://api.dicebear.com/7.x/avataaars/svg?seed=AgriFa"
                        alt="User"
                        fill
                        className="object-cover"
                    />
                </div>
            </div>
        </aside>
    )
}
