'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { Check, Loader2 } from 'lucide-react'
import { createClient } from '@supabase/supabase-js'

const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
)

interface ConfigState {
    layer_scientific: boolean
    layer_symptoms: boolean
    layer_treatment_organic: boolean
    layer_treatment_chemical: boolean
    layer_treatment_biological: boolean
    layer_prevention: boolean
    layer_faq: boolean
    layer_products_organic: boolean
    layer_products_chemical: boolean
    layer_products_biological: boolean
}

const defaultConfig: ConfigState = {
    layer_scientific: false,
    layer_symptoms: true,
    layer_treatment_organic: true,
    layer_treatment_chemical: false,
    layer_treatment_biological: false,
    layer_prevention: true,
    layer_faq: false,
    layer_products_organic: true,
    layer_products_chemical: false,
    layer_products_biological: false,
}

export default function ResponseConfigPage() {
    const [config, setConfig] = useState<ConfigState>(defaultConfig)
    const [loading, setLoading] = useState(true)
    const [saving, setSaving] = useState(false)
    const [saved, setSaved] = useState(false)
    const [error, setError] = useState<string | null>(null)
    const router = useRouter()

    useEffect(() => {
        fetchConfig()
    }, [])

    const fetchConfig = async () => {
        try {
            const { data: { session } } = await supabase.auth.getSession()
            if (!session) {
                router.push('/login')
                return
            }

            // Get client's API key
            const { data: client } = await supabase
                .from('clients')
                .select('api_key')
                .eq('user_id', session.user.id)
                .single()

            if (!client) {
                setError('No client found')
                setLoading(false)
                return
            }

            // Fetch config from backend
            const res = await fetch('http://localhost:8000/config', {
                headers: { 'x-api-key': client.api_key },
            })

            if (res.ok) {
                const data = await res.json()
                setConfig(data)
            }
        } catch (err: any) {
            console.error(err)
            setError(err.message)
        } finally {
            setLoading(false)
        }
    }

    const saveConfig = async () => {
        setSaving(true)
        setError(null)
        setSaved(false)

        try {
            const { data: { session } } = await supabase.auth.getSession()
            if (!session) return

            const { data: client } = await supabase
                .from('clients')
                .select('api_key')
                .eq('user_id', session.user.id)
                .single()

            if (!client) return

            const res = await fetch('http://localhost:8000/config', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                    'x-api-key': client.api_key,
                },
                body: JSON.stringify(config),
            })

            if (res.ok) {
                setSaved(true)
                setTimeout(() => setSaved(false), 2000)
            } else {
                const err = await res.json()
                setError(err.detail || 'Failed to save')
            }
        } catch (err: any) {
            setError(err.message)
        } finally {
            setSaving(false)
        }
    }

    const Toggle = ({ label, field }: { label: string; field: keyof ConfigState }) => (
        <label className="flex items-center justify-between p-4 bg-white rounded-xl border border-gray-100 hover:border-gray-200 cursor-pointer transition-colors">
            <span className="font-medium text-gray-700">{label}</span>
            <div
                onClick={() => setConfig({ ...config, [field]: !config[field] })}
                className={`w-12 h-7 rounded-full p-1 transition-colors cursor-pointer ${config[field] ? 'bg-green-500' : 'bg-gray-200'
                    }`}
            >
                <div
                    className={`w-5 h-5 rounded-full bg-white shadow-sm transition-transform ${config[field] ? 'translate-x-5' : 'translate-x-0'
                        }`}
                />
            </div>
        </label>
    )

    if (loading) {
        return (
            <div className="flex items-center justify-center h-96">
                <Loader2 className="w-8 h-8 animate-spin text-gray-400" />
            </div>
        )
    }

    return (
        <div className="max-w-3xl mx-auto p-6">
            <div className="mb-8">
                <h1 className="text-2xl font-bold text-gray-900">API Response Configuration</h1>
                <p className="text-gray-500 mt-1">
                    Control what data your API returns. Changes apply instantly to all future requests.
                </p>
            </div>

            {error && (
                <div className="mb-6 p-4 bg-red-50 border border-red-200 rounded-xl text-red-700">
                    {error}
                </div>
            )}

            <div className="space-y-8">
                {/* Knowledge Layers */}
                <section>
                    <h2 className="text-sm font-bold uppercase text-gray-400 tracking-wider mb-4">
                        Knowledge Layers
                    </h2>
                    <div className="space-y-3">
                        <Toggle label="Symptoms & Affected Parts" field="layer_symptoms" />
                        <Toggle label="Scientific Information" field="layer_scientific" />
                    </div>
                </section>

                {/* Treatment Layers */}
                <section>
                    <h2 className="text-sm font-bold uppercase text-gray-400 tracking-wider mb-4">
                        Treatment Layers
                    </h2>
                    <div className="space-y-3">
                        <Toggle label="Organic Control" field="layer_treatment_organic" />
                        <Toggle label="Chemical Control" field="layer_treatment_chemical" />
                        <Toggle label="Biological Control" field="layer_treatment_biological" />
                    </div>
                </section>

                {/* Product Recommendations */}
                <section>
                    <h2 className="text-sm font-bold uppercase text-gray-400 tracking-wider mb-4">
                        Product Recommendations
                    </h2>
                    <div className="space-y-3">
                        <Toggle label="Organic Products" field="layer_products_organic" />
                        <Toggle label="Chemical Products" field="layer_products_chemical" />
                        <Toggle label="Biological Products" field="layer_products_biological" />
                    </div>
                </section>

                {/* Additional Content */}
                <section>
                    <h2 className="text-sm font-bold uppercase text-gray-400 tracking-wider mb-4">
                        Additional Content
                    </h2>
                    <div className="space-y-3">
                        <Toggle label="Prevention & Safety" field="layer_prevention" />
                        <Toggle label="FAQ Section" field="layer_faq" />
                    </div>
                </section>
            </div>

            {/* Save Button */}
            <div className="mt-10 flex items-center justify-end gap-4">
                {saved && (
                    <span className="flex items-center gap-1 text-green-600 text-sm font-medium">
                        <Check className="w-4 h-4" /> Saved
                    </span>
                )}
                <button
                    onClick={saveConfig}
                    disabled={saving}
                    className="px-6 py-3 bg-black text-white font-bold rounded-xl hover:bg-gray-800 disabled:opacity-50 transition-colors flex items-center gap-2"
                >
                    {saving ? (
                        <>
                            <Loader2 className="w-4 h-4 animate-spin" />
                            Saving...
                        </>
                    ) : (
                        'Save Configuration'
                    )}
                </button>
            </div>
        </div>
    )
}
