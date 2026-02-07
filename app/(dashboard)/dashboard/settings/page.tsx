'use client'

import { ProfileForm } from '@/components/dashboard/profile-form'
import { useState } from 'react'

export default function SettingsPage() {
    const [activeTab, setActiveTab] = useState('profile')

    return (
        <div className="space-y-4">
            <div className="flex flex-col gap-1">
                <div className="flex items-center gap-2 text-sm text-[var(--text-secondary)]">
                    <span>Home</span>
                    <span>/</span>
                    <span className="text-[var(--text-primary)] font-medium">Account Settings</span>
                </div>
                <h2 className="text-3xl font-black tracking-tight text-[var(--text-primary)]">Account Settings</h2>
                <p className="text-[var(--text-secondary)] text-sm font-medium">Manage your profile details, security preferences, and API access keys.</p>
            </div>

            <div className="pt-8">
                {/* Tabs */}
                <div className="flex border-b border-[var(--border-light)] mb-10 gap-8">
                    <button
                        onClick={() => setActiveTab('profile')}
                        className={`pb-4 px-2 text-sm font-bold transition-all relative ${activeTab === 'profile'
                                ? 'text-[var(--text-primary)]'
                                : 'text-gray-400 hover:text-gray-600'
                            }`}
                    >
                        General Profile
                        {activeTab === 'profile' && <div className="absolute bottom-0 left-0 right-0 h-0.5 bg-[var(--text-primary)] rounded-full"></div>}
                    </button>
                    <button
                        onClick={() => setActiveTab('security')}
                        className={`pb-4 px-2 text-sm font-bold transition-all relative ${activeTab === 'security'
                                ? 'text-[var(--text-primary)]'
                                : 'text-gray-400 hover:text-gray-600'
                            }`}
                    >
                        Security
                        {activeTab === 'security' && <div className="absolute bottom-0 left-0 right-0 h-0.5 bg-[var(--text-primary)] rounded-full"></div>}
                    </button>
                    <button
                        onClick={() => setActiveTab('api')}
                        className={`pb-4 px-2 text-sm font-bold transition-all relative ${activeTab === 'api'
                                ? 'text-[var(--text-primary)]'
                                : 'text-gray-400 hover:text-gray-600'
                            }`}
                    >
                        API Access
                        {activeTab === 'api' && <div className="absolute bottom-0 left-0 right-0 h-0.5 bg-[var(--text-primary)] rounded-full"></div>}
                    </button>
                </div>

                {activeTab === 'profile' && <ProfileForm />}
                {activeTab === 'security' && (
                    <div className="bg-[var(--bg-card)] p-10 rounded-2xl border border-[var(--border-light)] shadow-sm text-center">
                        <p className="text-gray-400 font-medium">Security settings are coming soon.</p>
                    </div>
                )}
                {activeTab === 'api' && (
                    <div className="bg-[var(--bg-card)] p-10 rounded-2xl border border-[var(--border-light)] shadow-sm text-center">
                        <p className="text-gray-400 font-medium">API access management is handled in the Developer Portal.</p>
                    </div>
                )}
            </div>
        </div>
    )
}
