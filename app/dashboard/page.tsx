'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'

export default function Dashboard() {
    const router = useRouter()
    // Mock client state
    const [client, setClient] = useState<any>({
        id: 'mock-client-id',
        company_name: 'Demo Company',
        api_key: 'mock-api-key-12345',
        email: 'demo@example.com'
    })

    // Mock data state
    const [products, setProducts] = useState<any[]>([
        {
            id: 'p1',
            disease_code: 'D001',
            product_name: 'Copper Fungicide X',
            product_link: 'https://example.com/product-x',
            priority: 1,
            diseases: { disease_name: 'Potato Early Blight' }
        }
    ])
    const [diseases, setDiseases] = useState<any[]>([
        { disease_code: 'D001', disease_name: 'Potato Early Blight' },
        { disease_code: 'D002', disease_name: 'Tomato Leaf Curl' },
        { disease_code: 'D003', disease_name: 'Wheat Rust' }
    ])

    const [form, setForm] = useState({
        disease_code: '',
        product_name: '',
        product_link: '',
        priority: 0
    })
    const [loading, setLoading] = useState(false)

    // Bypassed checkUser logic
    useEffect(() => {
        // In real app we checked auth here
        console.log("Auth bypassed for demo")
    }, [])

    async function handleAddProduct(e: React.FormEvent) {
        e.preventDefault()
        // Mock addition
        const diseaseName = diseases.find(d => d.disease_code === form.disease_code)?.disease_name
        const newProduct = {
            id: Math.random().toString(36).substr(2, 9),
            client_id: client.id,
            ...form,
            diseases: { disease_name: diseaseName }
        }
        setProducts([...products, newProduct])
        setForm({ disease_code: '', product_name: '', product_link: '', priority: 0 })
        alert("Product mapped (Mock Data)")
    }

    if (loading) return <div className="p-8">Loading dashboard...</div>

    return (
        <div className="min-h-screen bg-gray-50 font-sans">
            <header className="bg-white shadow">
                <div className="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8 flex justify-between items-center">
                    <h1 className="text-3xl font-bold tracking-tight text-gray-900">Dashboard (Demo Mode)</h1>
                    <button onClick={() => router.push('/login')} className="text-sm text-green-600 hover:text-green-800">Back to Login</button>
                </div>
            </header>
            <main>
                <div className="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
                    {/* API Key Section */}
                    <div className="bg-white overflow-hidden shadow rounded-lg mb-8">
                        <div className="px-4 py-5 sm:p-6">
                            <h3 className="text-base font-semibold leading-6 text-gray-900">API Access</h3>
                            <div className="mt-2 max-w-xl text-sm text-gray-500">
                                <p>Use this API key to authenticate your requests to the detection engine.</p>
                            </div>
                            <div className="mt-5">
                                <div className="rounded-md bg-gray-50 p-4 font-mono text-sm break-all border border-gray-200">
                                    {client?.api_key || 'No API Key generated'}
                                </div>
                            </div>
                        </div>
                    </div>

                    {/* Map Product Form */}
                    <div className="bg-white overflow-hidden shadow rounded-lg mb-8">
                        <div className="px-4 py-5 sm:p-6">
                            <h3 className="text-base font-semibold leading-6 text-gray-900 mb-4">Map New Product</h3>
                            <form onSubmit={handleAddProduct} className="grid grid-cols-1 gap-x-6 gap-y-4 sm:grid-cols-4 items-end">
                                <div className="sm:col-span-1">
                                    <label className="block text-sm font-medium leading-6 text-gray-900">Disease</label>
                                    <select required className="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6"
                                        value={form.disease_code}
                                        onChange={e => setForm({ ...form, disease_code: e.target.value })}>
                                        <option value="">Select Disease</option>
                                        {diseases.map(d => <option key={d.disease_code} value={d.disease_code}>{d.disease_name}</option>)}
                                    </select>
                                </div>
                                <div className="sm:col-span-1">
                                    <label className="block text-sm font-medium leading-6 text-gray-900">Product Name</label>
                                    <input type="text" required className="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3"
                                        value={form.product_name}
                                        onChange={e => setForm({ ...form, product_name: e.target.value })}
                                    />
                                </div>
                                <div className="sm:col-span-1">
                                    <label className="block text-sm font-medium leading-6 text-gray-900">Link</label>
                                    <input type="url" required className="mt-2 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3"
                                        value={form.product_link}
                                        onChange={e => setForm({ ...form, product_link: e.target.value })}
                                    />
                                </div>
                                <div className="sm:col-span-1">
                                    <button type="submit" className="w-full rounded-md bg-green-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-green-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-green-600">
                                        Map Product
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                    {/* Mapped Products List */}
                    <div className="bg-white overflow-hidden shadow rounded-lg">
                        <div className="px-4 py-5 sm:p-6">
                            <h3 className="text-base font-semibold leading-6 text-gray-900 mb-4">Your Mapped Products</h3>
                            <ul role="list" className="divide-y divide-gray-100">
                                {products.length === 0 && <p className="text-gray-500 text-sm">No products mapped yet.</p>}
                                {products.map((p) => (
                                    <li key={p.id} className="flex justify-between gap-x-6 py-5">
                                        <div className="flex min-w-0 gap-x-4">
                                            <div className="min-w-0 flex-auto">
                                                <p className="text-sm font-semibold leading-6 text-gray-900">{p.diseases?.disease_name || p.disease_code}</p>
                                                <p className="mt-1 truncate text-xs leading-5 text-gray-500">Recommends: {p.product_name}</p>
                                            </div>
                                        </div>
                                        <div className="hidden shrink-0 sm:flex sm:flex-col sm:items-end">
                                            <p className="text-sm leading-6 text-gray-900"><a href={p.product_link} target="_blank" className="text-green-600 hover:underline">View Link</a></p>
                                        </div>
                                    </li>
                                ))}
                            </ul>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    )
}
