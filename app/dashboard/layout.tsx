import { Sidebar } from "@/components/layout/sidebar"
import { TopNav } from "@/components/layout/top-nav"

export default function DashboardLayout({
    children,
}: {
    children: React.ReactNode
}) {
    return (
        <div className="min-h-screen bg-[var(--agri-bg)] bg-fixed text-white selection:bg-[#00ff9d] selection:text-black">
            <Sidebar />
            <TopNav />

            <main className="pl-20 pt-20 min-h-screen">
                <div className="max-w-7xl mx-auto p-8">
                    {children}
                </div>
            </main>
        </div>
    )
}
