'use client'
import { useState } from 'react'
import { supabase } from '@/lib/supabase'
import { useRouter } from 'next/navigation'
import Link from 'next/link'

export default function AddDisease() {
    const router = useRouter()
    const [formData, setFormData] = useState({
        disease_code: '',
        disease_name: '',
        crop: '',
        category: '',
        scientific_name: '',
        affected_part: '',
        severity_default: '',
        visual_symptom_key: ''
    })
    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    async function handleSubmit(e: React.FormEvent) {
        e.preventDefault()
        setLoading(true)
        setError('')

        const { error: insertError } = await supabase
            .from('diseases')
            .insert([formData])

        if (insertError) {
            setError(insertError.message)
            setLoading(false)
        } else {
            router.push('/admin')
        }
    }

    return (
        <div className="max-w-3xl mx-auto py-8">
            <div className="md:flex md:items-center md:justify-between mb-8">
                <div className="min-w-0 flex-1">
                    <h2 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">
                        Add New Disease
                    </h2>
                    <p className="mt-1 text-sm text-gray-500">Create a new disease entry for detection.</p>
                </div>
                <div className="mt-4 flex md:ml-4 md:mt-0">
                    <Link href="/admin" className="ml-3 inline-flex items-center rounded-md bg-white px-3 py-2 text-sm font-semibold text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-gray-50">
                        Cancel
                    </Link>
                </div>
            </div>

            <div className="bg-white shadow-sm ring-1 ring-gray-900/5 sm:rounded-xl">
                <div className="px-4 py-6 sm:p-8">
                    <form onSubmit={handleSubmit} className="space-y-8">
                        {error && (
                            <div className="bg-red-50 p-4 rounded-md border-l-4 border-red-500">
                                <div className="flex">
                                    <div className="ml-3">
                                        <p className="text-sm text-red-700">{error}</p>
                                    </div>
                                </div>
                            </div>
                        )}

                        <div className="grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">

                            <div className="sm:col-span-3">
                                <label className="block text-sm font-medium leading-6 text-gray-900">Disease Code</label>
                                <div className="mt-2">
                                    <input
                                        type="text"
                                        required
                                        placeholder="e.g. D001"
                                        className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3"
                                        value={formData.disease_code}
                                        onChange={e => setFormData({ ...formData, disease_code: e.target.value })}
                                    />
                                </div>
                            </div>

                            <div className="sm:col-span-3">
                                <label className="block text-sm font-medium leading-6 text-gray-900">Scientific Name</label>
                                <div className="mt-2">
                                    <input
                                        type="text"
                                        className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3"
                                        value={formData.scientific_name}
                                        onChange={e => setFormData({ ...formData, scientific_name: e.target.value })}
                                    />
                                </div>
                            </div>

                            <div className="sm:col-span-3">
                                <label className="block text-sm font-medium leading-6 text-gray-900">Name</label>
                                <div className="mt-2">
                                    <input
                                        type="text"
                                        required
                                        className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3"
                                        value={formData.disease_name}
                                        onChange={e => setFormData({ ...formData, disease_name: e.target.value })}
                                    />
                                </div>
                            </div>

                            <div className="sm:col-span-3">
                                <label className="block text-sm font-medium leading-6 text-gray-900">Category</label>
                                <div className="mt-2">
                                    <select
                                        className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3 h-9"
                                        value={formData.category}
                                        onChange={e => setFormData({ ...formData, category: e.target.value })}
                                    >
                                        <option value="">Select Category</option>
                                        <option value="Fungal">Fungal</option>
                                        <option value="Bacterial">Bacterial</option>
                                        <option value="Viral">Viral</option>
                                        <option value="Pest">Pest</option>
                                        <option value="Deficiency">Deficiency</option>
                                    </select>
                                </div>
                            </div>

                            <div className="sm:col-span-3">
                                <label className="block text-sm font-medium leading-6 text-gray-900">Crop</label>
                                <div className="mt-2">
                                    <input
                                        type="text"
                                        required
                                        className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3"
                                        value={formData.crop}
                                        onChange={e => setFormData({ ...formData, crop: e.target.value })}
                                    />
                                </div>
                            </div>

                            <div className="sm:col-span-3">
                                <label className="block text-sm font-medium leading-6 text-gray-900">Visual Symptom Key</label>
                                <div className="mt-2">
                                    <input
                                        type="text"
                                        className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3"
                                        value={formData.visual_symptom_key}
                                        onChange={e => setFormData({ ...formData, visual_symptom_key: e.target.value })}
                                        placeholder="Brief visual description"
                                    />
                                </div>
                            </div>

                        </div>

                        <div className="flex items-center justify-end gap-x-6 border-t border-gray-900/10 pt-4">
                            <Link href="/admin" className="text-sm font-semibold leading-6 text-gray-900">Cancel</Link>
                            <button
                                type="submit"
                                disabled={loading}
                                className="rounded-md bg-green-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-green-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-green-600 disabled:opacity-50"
                            >
                                {loading ? 'Saving...' : 'Save Disease'}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    )
}
