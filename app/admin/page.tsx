'use client'
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import Link from 'next/link'

export default function AdminDiseases() {
    const [diseases, setDiseases] = useState<any[]>([])
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        fetchDiseases()
    }, [])

    async function fetchDiseases() {
        try {
            const { data, error } = await supabase
                .from('diseases')
                .select('*')
                .order('created_at', { ascending: false })

            if (error) throw error
            if (data) setDiseases(data)
        } catch (error) {
            console.error('Error fetching diseases:', error)
        } finally {
            setLoading(false)
        }
    }

    if (loading) {
        return (
            <div className="flex justify-center items-center h-64">
                <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-green-600"></div>
            </div>
        )
    }

    return (
        <div>
            <div className="flex justify-between items-center mb-8">
                <div>
                    <h2 className="text-3xl font-bold text-gray-900">Disease Management</h2>
                    <p className="text-gray-500 mt-1">Manage disease definitions and master data</p>
                </div>
                <Link href="/admin/add" className="bg-green-600 hover:bg-green-700 text-white px-6 py-2.5 rounded-lg shadow-sm font-medium transition-colors flex items-center gap-2">
                    <span>+ Add Disease</span>
                </Link>
            </div>

            <div className="bg-white shadow-sm ring-1 ring-gray-900/5 rounded-xl overflow-hidden">
                <table className="min-w-full divide-y divide-gray-200">
                    <thead className="bg-gray-50/50">
                        <tr>
                            <th className="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider text-nowrap">Code</th>
                            <th className="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider text-nowrap">Disease Name</th>
                            <th className="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider text-nowrap">Crop</th>
                            <th className="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider text-nowrap">Category</th>
                            <th className="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider">Status</th>
                        </tr>
                    </thead>
                    <tbody className="bg-white divide-y divide-gray-200">
                        {diseases.length === 0 ? (
                            <tr>
                                <td colSpan={5} className="px-6 py-12 text-center text-gray-500">
                                    No diseases found. Add one to get started.
                                </td>
                            </tr>
                        ) : (
                            diseases.map((d) => (
                                <tr key={d.id} className="hover:bg-gray-50 transition-colors">
                                    <td className="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900 font-mono">{d.disease_code}</td>
                                    <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-700">{d.disease_name}</td>
                                    <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">
                                        <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
                                            {d.crop}
                                        </span>
                                    </td>
                                    <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">{d.category}</td>
                                    <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Active</td>
                                </tr>
                            ))
                        )}

                    </tbody>
                </table>
            </div>
        </div>
    )
}
