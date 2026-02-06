'use client'

import { useState, useEffect } from 'react'

export default function AdminKeysPage() {
    const [keys, setKeys] = useState<any[]>([])
    const [newKey, setNewKey] = useState('')
    const [loading, setLoading] = useState(true)
    const [error, setError] = useState('')
    const [success, setSuccess] = useState('')

    // Auth should be here, but using simplified flow for MVP

    const API_URL = process.env.NEXT_PUBLIC_API_URL || 'http://localhost:8000'

    useEffect(() => {
        fetchKeys()
    }, [])

    async function fetchKeys() {
        try {
            const res = await fetch(`${API_URL}/admin/keys`)
            const data = await res.json()
            if (res.ok) {
                setKeys(data.keys || [])
            }
        } catch (err) {
            console.error(err)
        } finally {
            setLoading(false)
        }
    }

    async function handleAddKey(e: React.FormEvent) {
        e.preventDefault()
        setError('')
        setSuccess('')

        try {
            const res = await fetch(`${API_URL}/admin/keys`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ api_key: newKey })
            })

            if (res.ok) {
                setNewKey('')
                setSuccess('Key added successfully!')
                fetchKeys()
            } else {
                setError('Failed to add key')
            }
        } catch (err) {
            setError('Error adding key')
        }
    }

    async function handleRotate(id: string) {
        if (!confirm("This will deactivate all other keys. Continue?")) return

        try {
            const res = await fetch(`${API_URL}/admin/keys/rotate`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ id })
            })
            if (res.ok) {
                setSuccess(`switched to key ${id.slice(0, 4)}...`)
                fetchKeys()
            }
        } catch (err) {
            setError("Rotation failed")
        }
    }

    return (
        <div className="min-h-screen bg-gray-50 p-8">
            <div className="max-w-4xl mx-auto">
                <header className="mb-8">
                    <h1 className="text-3xl font-bold text-gray-900">Platform Admin: Gemini Keys</h1>
                    <p className="text-gray-600">Manage your AI infrastructure cost and access.</p>
                </header>

                {/* Stats Card */}
                <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                    <div className="bg-white p-6 rounded-lg shadow border border-gray-100">
                        <div className="text-sm font-medium text-gray-500">Active Keys</div>
                        <div className="mt-2 text-3xl font-bold text-blue-600">
                            {keys.filter(k => k.status === 'active').length}
                        </div>
                    </div>
                </div>

                <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
                    {/* Add Key Form */}
                    <div className="bg-white p-6 rounded-xl shadow-sm border border-gray-200">
                        <h2 className="text-lg font-semibold mb-4">Add New Gemini Key</h2>
                        <form onSubmit={handleAddKey}>
                            <div className="mb-4">
                                <label className="block text-sm font-medium text-gray-700 mb-1">API Key</label>
                                <input
                                    type="password"
                                    value={newKey}
                                    onChange={e => setNewKey(e.target.value)}
                                    className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 outline-none"
                                    placeholder="Starts with AIza..."
                                    required
                                />
                                <p className="text-xs text-gray-500 mt-1">Key will be encrypted before storage.</p>
                            </div>
                            {error && <p className="text-red-500 text-sm mb-3">{error}</p>}
                            {success && <p className="text-green-500 text-sm mb-3">{success}</p>}
                            <button
                                type="submit"
                                className="w-full py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition"
                            >
                                Securely Store Key
                            </button>
                        </form>
                    </div>

                    {/* Key List */}
                    <div className="bg-white p-6 rounded-xl shadow-sm border border-gray-200">
                        <h2 className="text-lg font-semibold mb-4">Key Vault</h2>
                        <div className="space-y-4">
                            {loading ? (
                                <p>Loading vault...</p>
                            ) : keys.length === 0 ? (
                                <p className="text-gray-500">No keys found.</p>
                            ) : (
                                keys.map(key => (
                                    <div key={key.id} className={`flex items-center justify-between p-4 rounded-lg border ${key.status === 'active' ? 'bg-green-50 border-green-200' : 'bg-gray-50 border-gray-200'}`}>
                                        <div>
                                            <div className="flex items-center gap-2">
                                                <span className="font-mono text-sm font-medium">
                                                    {key.provider.toUpperCase()}
                                                </span>
                                                {key.status === 'active' && (
                                                    <span className="px-2 py-0.5 bg-green-100 text-green-700 text-xs rounded-full font-medium">
                                                        Active
                                                    </span>
                                                )}
                                            </div>
                                            <div className="text-xs text-gray-500 mt-1">
                                                Added: {new Date(key.created_at).toLocaleDateString()}
                                            </div>
                                        </div>
                                        <div>
                                            {key.status !== 'active' && (
                                                <button
                                                    onClick={() => handleRotate(key.id)}
                                                    className="text-sm text-blue-600 hover:text-blue-800 font-medium"
                                                >
                                                    Activate
                                                </button>
                                            )}
                                            {key.status === 'active' && (
                                                <span className="text-xs text-gray-400">In Use</span>
                                            )}
                                        </div>
                                    </div>
                                ))
                            )}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
