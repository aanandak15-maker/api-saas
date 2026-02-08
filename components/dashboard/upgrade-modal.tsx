'use client'

import { useState } from 'react'
import { X, Check, Loader2 } from 'lucide-react'
import { api } from '@/lib/api-client'

interface UpgradeModalProps {
    isOpen: boolean
    onClose: () => void
    currentPlan: string
    onSuccess: () => void
}

const PLANS = [
    {
        id: 'germination',
        name: 'Germination',
        price: '₹1,000/mo',
        features: ['Unlimited Products', '1 Rec per Disease', 'Essential Usage Capacity', 'Basic Insights', 'Platform Branding'],
        color: 'bg-green-50 border-green-200'
    },
    {
        id: 'cultivation',
        name: 'Cultivation',
        price: '₹4,000/mo',
        features: ['Unlimited Products', '3 Recs per Disease', 'Business-Scale Usage', 'Advanced Insights', 'Brand Logo Support'],
        color: 'bg-blue-50 border-blue-200'
    },
    {
        id: 'harvest',
        name: 'Harvest',
        price: '₹10,000/mo',
        features: ['Unlimited Products', 'Unlimited Recs', 'High-Volume Usage', 'Business Intelligence', 'Branding Personalization'],
        color: 'bg-purple-50 border-purple-200'
    },
    {
        id: 'enterprise',
        name: 'Enterprise',
        price: 'Custom',
        features: ['Unlimited Everything', 'Custom Knowledge Engine', 'Enterprise Reporting', 'Full White-Label'],
        color: 'bg-gray-50 border-gray-200'
    }
]

export function UpgradeModal({ isOpen, onClose, currentPlan, onSuccess }: UpgradeModalProps) {
    const [loading, setLoading] = useState<string | null>(null)
    const [error, setError] = useState('')
    const [selectedPlan, setSelectedPlan] = useState<string | null>(null)

    if (!isOpen) return null

    const handleUpgrade = async () => {
        if (!selectedPlan) return
        setLoading(selectedPlan)
        setError('')
        try {
            await api.post('/client/change-plan', { new_plan: selectedPlan })
            onSuccess()
            onClose()
            setSelectedPlan(null) // Reset
        } catch (err: any) {
            setError(err.message || 'Failed to update plan')
        } finally {
            setLoading(null)
        }
    }

    const selectedPlanData = PLANS.find(p => p.id === selectedPlan)

    return (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/50 backdrop-blur-sm">
            <div className="bg-white rounded-2xl shadow-xl w-full max-w-4xl max-h-[90vh] overflow-y-auto duration-300">
                <div className="p-6 border-b border-gray-100 flex justify-between items-center sticky top-0 bg-white z-10">
                    <div>
                        <h2 className="text-2xl font-black text-gray-900">
                            {selectedPlan ? 'Confirm Subscription' : 'Change Subscription Plan'}
                        </h2>
                        <p className="text-sm text-gray-500">
                            {selectedPlan ? 'Review your new plan details' : 'Select a plan to update your limits (Demo Mode)'}
                        </p>
                    </div>
                    <button onClick={onClose} className="p-2 hover:bg-gray-100 rounded-full transition-colors">
                        <X className="w-5 h-5 text-gray-500" />
                    </button>
                </div>

                <div className="p-6">
                    {error && (
                        <div className="mb-6 p-4 bg-red-50 text-red-600 rounded-xl text-sm font-medium border border-red-100">
                            {error}
                        </div>
                    )}

                    {!selectedPlan ? (
                        // Step 1: Select Plan
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                            {PLANS.map((plan) => {
                                const isCurrent = currentPlan.toLowerCase() === plan.id
                                return (
                                    <div
                                        key={plan.id}
                                        className={`relative p-6 rounded-xl border-2 transition-all ${isCurrent
                                            ? 'border-[var(--accent-primary)] bg-[var(--accent-primary)]/5'
                                            : 'border-gray-100 hover:border-gray-200'
                                            }`}
                                    >
                                        {isCurrent && (
                                            <div className="absolute top-4 right-4 bg-[var(--accent-primary)] text-white text-xs font-bold px-2 py-1 rounded-full flex items-center gap-1">
                                                <Check size={12} /> Current
                                            </div>
                                        )}

                                        <h3 className="text-lg font-bold text-gray-900">{plan.name}</h3>
                                        <div className="text-2xl font-black text-[var(--accent-primary)] mb-4">{plan.price}</div>

                                        <ul className="space-y-2 mb-6">
                                            {plan.features.map((feature, i) => (
                                                <li key={i} className="flex items-center gap-2 text-sm text-gray-600">
                                                    <Check className="w-4 h-4 text-[var(--accent-primary)]" />
                                                    {feature}
                                                </li>
                                            ))}
                                        </ul>

                                        <button
                                            onClick={() => !isCurrent && setSelectedPlan(plan.id)}
                                            disabled={isCurrent}
                                            className={`w-full py-3 rounded-xl font-bold transition-all flex items-center justify-center gap-2 ${isCurrent
                                                ? 'bg-gray-100 text-gray-400 cursor-not-allowed'
                                                : 'bg-black text-white hover:bg-gray-800 hover:scale-[1.02]'
                                                }`}
                                        >
                                            {isCurrent ? 'Current Plan' : 'Select ' + plan.name}
                                        </button>
                                    </div>
                                )
                            })}
                        </div>
                    ) : (
                        // Step 2: Checkout Summary
                        <div className="max-w-xl mx-auto">
                            <div className="bg-gray-50 p-6 rounded-2xl border border-gray-200 mb-6">
                                <h3 className="text-lg font-bold text-gray-900 mb-4">Summary</h3>
                                <div className="flex justify-between items-center mb-2">
                                    <span className="text-gray-600">New Plan</span>
                                    <span className="font-bold text-gray-900">{selectedPlanData?.name}</span>
                                </div>
                                <div className="flex justify-between items-center mb-4 pb-4 border-b border-gray-200">
                                    <span className="text-gray-600">Billing Cycle</span>
                                    <span className="font-medium text-gray-900">Monthly</span>
                                </div>
                                <div className="flex justify-between items-center text-xl">
                                    <span className="font-bold text-gray-900">Due Today</span>
                                    <span className="font-black text-[var(--accent-primary)]">{selectedPlanData?.price}</span>
                                </div>
                            </div>

                            <div className="bg-white p-6 rounded-2xl border border-gray-200 mb-8 shadow-sm">
                                <h3 className="text-sm font-bold text-gray-500 uppercase tracking-wider mb-4">Payment Method</h3>
                                <div className="flex items-center gap-4">
                                    <div className="bg-gray-100 p-2 rounded border border-gray-200">
                                        <div className="w-8 h-5 bg-blue-800 rounded-sm"></div>
                                    </div>
                                    <div>
                                        <p className="font-bold text-gray-900 text-sm">Visa ending in 4242</p>
                                        <p className="text-xs text-gray-500">Expires 12/28</p>
                                    </div>
                                    <span className="ml-auto text-xs font-bold text-green-600 bg-green-50 px-2 py-1 rounded-full">Primary</span>
                                </div>
                            </div>

                            <div className="flex gap-4">
                                <button
                                    onClick={() => setSelectedPlan(null)}
                                    className="flex-1 py-4 rounded-xl font-bold text-gray-600 hover:bg-gray-100 transition-all"
                                >
                                    Back
                                </button>
                                <button
                                    onClick={handleUpgrade}
                                    disabled={!!loading}
                                    className="flex-[2] bg-[var(--accent-primary)] text-white hover:bg-[var(--accent-hover)] py-4 rounded-xl font-bold transition-all flex items-center justify-center gap-2 text-lg shadow-lg hover:shadow-xl"
                                >
                                    {loading ? (
                                        <>
                                            <Loader2 className="w-5 h-5 animate-spin" />
                                            Processing...
                                        </>
                                    ) : (
                                        'Confirm Payment & Upgrade'
                                    )}
                                </button>
                            </div>
                            <p className="text-center text-xs text-gray-400 mt-4">
                                Secure payment processed via Stripe (Demo Mode)
                            </p>
                        </div>
                    )}
                </div>
            </div>
        </div>
    )
}
