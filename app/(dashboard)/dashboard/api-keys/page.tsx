'use client'

import { useEffect, useState } from 'react'
import { APIKeyCard } from '@/components/dashboard/api-key-card'
import { APIDocs } from '@/components/dashboard/api-docs'
import { api } from '@/lib/api-client'

export default function APIKeysPage() {
    const [apiKey, setApiKey] = useState('')
    const [loading, setLoading] = useState(true)

    const loadProfile = async () => {
        try {
            const data = await api.get('/client/profile')
            setApiKey(data.api_key)
        } catch (error) {
            console.error("Failed to load profile", error)
        } finally {
            setLoading(false)
        }
    }

    useEffect(() => {
        loadProfile()
    }, [])

    const handleRegenerate = async () => {
        if (!confirm('Warning: Regenerating your API key will immediately invalidate the current one. This cannot be undone. Proceed?')) return
        try {
            const data = await api.post('/client/regenerate-key', {})
            setApiKey(data.api_key)
            alert("New API Key generated successfully.")
        } catch (err) {
            console.error("Regeneration failed", err)
            alert("Failed to regenerate key.")
        }
    }

    if (loading) return <div className="p-8 text-center text-gray-500">Loading Configuration...</div>

    return (
        <div className="space-y-4">
            <div className="flex flex-col gap-1">
                <div className="flex items-center gap-2 text-sm text-[var(--text-secondary)]">
                    <span>Dashboard</span>
                    <span>/</span>
                    <span className="text-[var(--text-primary)] font-medium">API Documentation</span>
                </div>
                <h2 className="text-3xl font-bold tracking-tight text-[var(--text-primary)]">Developer Portal</h2>
                <p className="text-[var(--text-secondary)] text-sm">Configure your access keys and integrate diagnostic services into your own apps.</p>
            </div>

            <div className="space-y-8 pt-6">
                <APIKeyCard apiKey={apiKey} onRegenerate={handleRegenerate} />
                <APIDocs />
            </div>
        </div>
    )
}
