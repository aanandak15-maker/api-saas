import { DashboardHeader } from '@/components/layout/dashboard-header'
import { DashboardSidebar } from '@/components/layout/dashboard-sidebar'

export default function DashboardLayout({
    children,
}: {
    children: React.ReactNode
}) {
    return (
        <div className="min-h-screen bg-[var(--bg-primary)] text-[var(--text-primary)] font-sans">
            {/* Sidebar - Hidden on mobile for now, fixed on desktop */}
            <DashboardSidebar />

            {/* Main Content Area */}
            <div className="md:pl-64 flex flex-col min-h-screen transition-all duration-300">
                <DashboardHeader />

                <main className="flex-1 p-6 overflow-y-auto">
                    <div className="max-w-7xl mx-auto">
                        {children}
                    </div>
                </main>
            </div>
        </div>
    )
}
