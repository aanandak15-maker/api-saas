import Link from 'next/link'

export default function AdminLayout({
    children,
}: {
    children: React.ReactNode
}) {
    return (
        <div className="flex h-screen bg-gray-100 font-sans">
            <aside className="w-64 bg-white shadow-md flex-shrink-0">
                <div className="p-6 border-b border-gray-100">
                    <h1 className="text-2xl font-bold text-green-600 tracking-tight">Agri SaaS</h1>
                    <p className="text-xs text-gray-500 mt-1">Admin Panel</p>
                </div>
                <nav className="mt-6 flex flex-col gap-1 px-4">
                    <Link href="/admin" className="block px-4 py-3 rounded-lg bg-green-50 text-green-700 font-medium">
                        Diseases
                    </Link>
                    <Link href="/admin/knowledge" className="block px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-gray-900 transition-colors">
                        Knowledge
                    </Link>
                    <Link href="/admin/settings" className="block px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-gray-900 transition-colors">
                        Settings
                    </Link>
                </nav>
            </aside>
            <main className="flex-1 p-8 overflow-y-auto">
                <div className="max-w-6xl mx-auto">
                    {children}
                </div>
            </main>
        </div>
    )
}
