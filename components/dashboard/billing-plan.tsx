'use client'

import { Mail, Edit, CreditCard, ArrowUpCircle, Component, AlertCircle } from 'lucide-react'
import { useState, useEffect } from 'react'
import { api } from '@/lib/api-client'

export function BillingPlan() {
    const [profile, setProfile] = useState<any>(null)

    useEffect(() => {
        async function loadData() {
            const storedEmail = localStorage.getItem('user_email')
            if (storedEmail) {
                const data = await api.get(`/client/profile?email=${storedEmail}`)
                setProfile(data)
            }
        }
        loadData()
    }, [])

    const planName = profile?.plan_type ? profile.plan_type.charAt(0).toUpperCase() + profile.plan_type.slice(1) : 'Trial'
    const isTrial = !profile || profile.plan_type === 'trial'

    return (
        <div className="grid grid-cols-1 lg:grid-cols-[1fr_380px] gap-8">
            {/* Plan Details Card */}
            <div className="bg-[var(--bg-card)] p-10 rounded-2xl border border-[var(--border-light)] shadow-sm">
                <div className="flex justify-between items-start mb-10">
                    <div>
                        <p className="text-[var(--text-secondary)] text-sm font-bold uppercase tracking-wider">Current Plan</p>
                        <div className="flex items-center gap-3 mt-2">
                            <h3 className="text-3xl font-black text-[var(--text-primary)]">{planName} Plan</h3>
                            <span className={`px-2.5 py-0.5 rounded-lg text-xs font-black ${isTrial ? 'bg-orange-100 text-orange-700' : 'bg-green-100 text-green-700'}`}>
                                {profile?.subscription_status === 'active' ? 'Active' : 'Trialing'}
                            </span>
                        </div>
                    </div>
                    <div className="text-right">
                        <div className="text-3xl font-black text-[var(--text-primary)]">{isTrial ? '$0' : '$49'}<span className="text-sm font-bold text-[var(--text-secondary)]">/mo</span></div>
                        <p className="text-xs text-[var(--text-secondary)] font-medium mt-1">{isTrial ? 'Upgrade anytime' : 'Renews monthly'}</p>
                    </div>
                </div>

                <div className="bg-gray-50/50 rounded-2xl p-8 border border-[var(--border-light)] mb-8 flex items-center justify-center text-center">
                    {isTrial ? (
                        <div>
                            <h4 className="font-bold text-gray-900 mb-2">You are on the Free Trial</h4>
                            <p className="text-sm text-gray-500 max-w-md mx-auto">Upgrade to the Professional plan to unlock higher API limits and priority support.</p>
                        </div>
                    ) : (
                        <div className="w-full">
                            {/* Usage bar would go here if we had detailed quotas in the profile */}
                            <p className="text-sm text-gray-500">Subscription is active.</p>
                        </div>
                    )}
                </div>

                <div className="flex gap-4">
                    <button className="flex-1 bg-[var(--accent-primary)] hover:bg-[var(--accent-hover)] text-white font-bold py-3.5 rounded-xl transition-all flex items-center justify-center gap-2">
                        <ArrowUpCircle size={18} />
                        Upgrade Plan
                    </button>
                    <button className="flex-1 border border-[var(--border-light)] hover:bg-gray-50 text-[var(--text-primary)] font-bold py-3.5 rounded-xl transition-all">
                        Manage Subscription
                    </button>
                </div>
            </div>

            {/* Payment Method Card */}
            <div className="space-y-6">
                <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
                    <div className="flex justify-between items-center mb-8">
                        <h3 className="font-bold text-[var(--text-primary)]">Payment Method</h3>
                        <button className="text-[var(--status-success-text)] font-bold text-sm hover:underline">Edit</button>
                    </div>
                    <div className="bg-gray-50 border border-[var(--border-light)] p-5 rounded-xl flex items-center gap-4 justify-center py-8">
                        {/* Empty State for no card */}
                        <div className="flex flex-col items-center">
                            <CreditCard className="w-6 h-6 text-gray-300 mb-2" />
                            <p className="text-xs text-gray-500 font-medium">No payment method added</p>
                        </div>
                    </div>
                </div>

                <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
                    <div className="flex items-center gap-4">
                        <div className="bg-gray-100 p-2 rounded-lg">
                            <Mail className="w-5 h-5 text-gray-500" />
                        </div>
                        <div>
                            <p className="font-bold text-sm text-[var(--text-primary)]">{profile?.email || 'No email'}</p>
                            <p className="text-xs text-[var(--text-secondary)] font-medium">Invoice email recipient</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
