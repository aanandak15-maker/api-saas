'use client'

import { Mail, ArrowUpCircle, Component, AlertCircle, CheckCircle, Smartphone } from 'lucide-react'
import { useState, useEffect } from 'react'
import { api } from '@/lib/api-client'
import { supabase } from '@/lib/supabase'
import { UpgradeModal } from './upgrade-modal'
import { toast } from 'react-hot-toast' // Assuming react-hot-toast is installed or similar toast

export function BillingPlan() {
    const [profile, setProfile] = useState<any>(null)
    const [refreshTrigger, setRefreshTrigger] = useState(0)
    const [isUpgradeOpen, setIsUpgradeOpen] = useState(false)

    useEffect(() => {
        async function loadData() {
            try {
                // Get current user email from Supabase session
                const { data: { session } } = await supabase.auth.getSession()
                if (session?.user?.email) {
                    // Using specific fetch because bootstrap session doesn't use API key yet
                    const res = await fetch(`${process.env.NEXT_PUBLIC_API_URL || 'http://localhost:8000'}/client/profile`, {
                        headers: {
                            'Authorization': `Bearer ${session.access_token}`
                        }
                    })
                    if (res.ok) {
                        const data = await res.json()
                        setProfile(data)
                    }
                }
            } catch (error) {
                console.error("Failed to load billing profile", error)
            }
        }
        loadData()
    }, [refreshTrigger])

    const planName = profile?.plan_type ? profile.plan_type.charAt(0).toUpperCase() + profile.plan_type.slice(1) : 'Trial'
    const isTrial = !profile || profile.plan_type === 'trial'

    // Simple price map corresponding to PricingSection
    const getPrice = (plan: string) => {
        switch (plan?.toLowerCase()) {
            case 'germination': return '₹1,000'
            case 'cultivation': return '₹4,000'
            case 'harvest': return '₹10,000'
            case 'enterprise': return 'Custom'
            default: return '₹0'
        }
    }

    const currentPrice = isTrial ? '₹0' : getPrice(profile?.plan_type)

    // Mock click handler for Manage Subscription
    const handleManageSubscription = () => {
        toast('Stripe Customer Portal is disabled in Demo Mode.', {
            icon: '🚧',
            style: {
                borderRadius: '10px',
                background: '#333',
                color: '#fff',
            },
        })
    }

    return (
        <div className="grid grid-cols-1 lg:grid-cols-[1fr_380px] gap-8">
            <UpgradeModal
                isOpen={isUpgradeOpen}
                onClose={() => setIsUpgradeOpen(false)}
                currentPlan={profile?.plan_type || 'trial'}
                onSuccess={() => {
                    toast.success('Plan updated successfully!')
                    setRefreshTrigger(prev => prev + 1)
                }}
            />

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
                        <div className="text-3xl font-black text-[var(--text-primary)]">{currentPrice}<span className="text-sm font-bold text-[var(--text-secondary)]">/mo</span></div>
                        <p className="text-xs text-[var(--text-secondary)] font-medium mt-1">{isTrial ? 'Upgrade anytime' : 'Renews monthly'}</p>
                    </div>
                </div>

                <div className="bg-gray-50/50 rounded-2xl p-8 border border-[var(--border-light)] mb-8">
                    {/* Always show usage bars for clarity in verification, even in trial */}
                    <div className="space-y-6">
                        {/* Scans Usage */}
                        <div>
                            <div className="flex justify-between text-sm mb-2">
                                <span className="font-medium text-[var(--text-secondary)]">
                                    Usage: <span className="text-[var(--text-primary)] font-bold">{profile?.current_scans?.toLocaleString() || 0} scans</span>
                                </span>
                                <span className="font-bold text-[var(--text-primary)]">
                                    {profile?.display_labels?.usage || (profile?.max_scans_per_month === -1 ? 'Unlimited' : `${profile?.max_scans_per_month} Capacity`)}
                                </span>
                            </div>
                            <div className="h-2.5 bg-gray-200 rounded-full overflow-hidden">
                                <div
                                    className="h-full bg-[var(--accent-primary)] rounded-full transition-all duration-500"
                                    style={{ width: `${Math.min(((profile?.current_scans || 0) / (profile?.max_scans_per_month || 1)) * 100, 100)}%` }}
                                />
                            </div>
                        </div>

                        {/* Products / Recommendations Usage */}
                        <div>
                            <div className="flex justify-between text-sm mb-2">
                                <span className="font-medium text-[var(--text-secondary)]">Products Listed</span>
                                <span className="font-bold text-[var(--text-primary)]">
                                    {profile?.current_products || 0} / Unlimited
                                </span>
                            </div>
                            <div className="h-2.5 bg-gray-200 rounded-full overflow-hidden">
                                <div className="h-full bg-blue-500 rounded-full w-full" />
                            </div>
                            <p className="text-xs text-[var(--text-secondary)] mt-1.5 font-medium">
                                Recommendations per disease: <span className="text-[var(--text-primary)] font-bold">
                                    {profile?.max_recs_per_disease === -1 ? 'Unlimited' : profile?.max_recs_per_disease || 1}
                                </span>
                            </p>
                        </div>
                    </div>
                </div>

                <div className="flex gap-4">
                    <button
                        onClick={() => setIsUpgradeOpen(true)}
                        className="flex-1 bg-[var(--accent-primary)] hover:bg-[var(--accent-hover)] text-white font-bold py-3.5 rounded-xl transition-all flex items-center justify-center gap-2"
                    >
                        <ArrowUpCircle size={18} />
                        Switch / Upgrade Plan
                    </button>
                    <button
                        onClick={handleManageSubscription}
                        className="flex-1 border border-[var(--border-light)] hover:bg-gray-50 text-[var(--text-primary)] font-bold py-3.5 rounded-xl transition-all"
                    >
                        Manage Subscription
                    </button>
                </div>
            </div>

            {/* Payment Method Card */}
            <div className="space-y-6">
                <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
                    <div className="flex justify-between items-center mb-8">
                        <h3 className="font-bold text-[var(--text-primary)]">Payment Method</h3>
                        <button className="text-[var(--status-success-text)] font-bold text-sm hover:underline" onClick={handleManageSubscription}>Edit</button>
                    </div>
                    {/* Simply show dummy data */}
                    <div className="bg-gray-50 border border-[var(--border-light)] p-5 rounded-xl flex items-center gap-4 justify-between py-6">
                        <div className="flex items-center gap-4">
                            <div className="bg-white p-2 border border-gray-200 rounded-md">
                                <div className="w-8 h-5 bg-blue-800 rounded-sm"></div>
                            </div>
                            <div>
                                <p className="font-bold text-gray-900 text-sm">Visa ending in 4242</p>
                                <p className="text-xs text-gray-500">Expires 12/28</p>
                            </div>
                        </div>
                        <CheckCircle className="w-5 h-5 text-green-500" />
                    </div>
                </div>

                <div className="bg-[var(--bg-card)] p-8 rounded-2xl border border-[var(--border-light)] shadow-sm">
                    <div className="flex items-center gap-4">
                        <div className="bg-gray-100 p-2 rounded-lg">
                            <Mail className="w-5 h-5 text-gray-500" />
                        </div>
                        <div>
                            <p className="font-bold text-sm text-[var(--text-primary)]">{profile?.email || 'user@example.com'}</p>
                            <p className="text-xs text-[var(--text-secondary)] font-medium">Invoice email recipient</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
