'use client'

import { useState, useEffect } from 'react'
import { Mail, Camera, CheckCircle2 } from 'lucide-react'
import { api } from '@/lib/api-client'

export function ProfileForm() {
    const [companyName, setCompanyName] = useState('')
    const [email, setEmail] = useState('')
    const [loading, setLoading] = useState(true)
    const [saving, setSaving] = useState(false)
    const [showToast, setShowToast] = useState(false)

    useEffect(() => {
        async function loadProfile() {
            try {
                // Fetch real profile data
                const data = await api.get('/client/profile')
                if (data) {
                    setCompanyName(data.company_name)
                    setEmail(data.email)
                }
            } catch (e) {
                console.error("Failed to load profile", e)
            } finally {
                setLoading(false)
            }
        }
        loadProfile()
    }, [])

    const handleSave = async (e: React.FormEvent) => {
        e.preventDefault()
        setSaving(true)
        try {
            await api.put('/client/profile', { company_name: companyName })
            setShowToast(true)
            setTimeout(() => setShowToast(false), 3000)
        } catch (e) {
            console.error("Failed to update profile", e)
            alert("Failed to save changes")
        } finally {
            setSaving(false)
        }
    }

    return (
        <>
            {/* Toast Notification */}
            {showToast && (
                <div className="fixed top-8 right-8 z-[100] bg-white border-2 border-green-500 shadow-2xl rounded-2xl p-4 flex items-center gap-4 animate-in slide-in-from-right duration-300">
                    <div className="bg-[var(--status-success-bg)] p-2 rounded-xl text-[var(--status-success-text)]">
                        <CheckCircle2 size={24} />
                    </div>
                    <div>
                        <p className="font-bold text-[var(--text-primary)]">Profile updated successfully.</p>
                        <p className="text-xs text-[var(--text-secondary)]">Your changes are now live across the platform.</p>
                    </div>
                    <button onClick={() => setShowToast(false)} className="ml-4 text-gray-300 hover:text-gray-500">
                        <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                    </button>
                </div>
            )}

            <div className="bg-[var(--bg-card)] rounded-2xl border border-[var(--border-light)] shadow-sm overflow-hidden">
                <div className="p-10 border-b border-[var(--border-light)]">
                    <h3 className="font-bold text-xl text-[var(--text-primary)]">General Profile</h3>
                    <p className="text-sm text-[var(--text-secondary)] mt-1">Update your company information.</p>
                </div>

                <form onSubmit={handleSave} className="p-10 space-y-10">
                    {/* Profile Picture */}
                    <div className="flex items-center gap-8">
                        <div className="relative group">
                            <div className="w-24 h-24 rounded-full bg-gray-100 flex items-center justify-center overflow-hidden border border-[var(--border-light)]">
                                <div className="w-full h-full bg-gray-200 flex items-center justify-center text-gray-400 font-bold text-2xl">
                                    {companyName ? companyName.charAt(0).toUpperCase() : '?'}
                                </div>
                            </div>
                        </div>
                        <div>
                            <p className="font-bold text-[var(--text-primary)]">Company Logo</p>
                            <p className="text-xs text-[var(--text-secondary)] mt-1 font-medium">JPG, GIF or PNG. Max size of 800K.</p>
                            <div className="flex gap-2 mt-4">
                                <button type="button" disabled className="px-5 py-2 border border-[var(--border-light)] rounded-xl text-xs font-bold hover:bg-gray-50 transition-colors opacity-50 cursor-not-allowed">Upload New</button>
                            </div>
                        </div>
                    </div>

                    {/* Form Fields */}
                    <div className="grid grid-cols-1 gap-6">
                        <div>
                            <label className="block text-sm font-bold text-[var(--text-primary)] mb-2">Company Name</label>
                            <input
                                type="text"
                                value={companyName}
                                onChange={(e) => setCompanyName(e.target.value)}
                                placeholder="Your Company Name"
                                className="w-full px-4 py-3 rounded-xl border border-[var(--border-light)] focus:ring-2 focus:ring-[var(--accent-primary)]/20 focus:border-[var(--accent-primary)] outline-none transition-all font-medium text-gray-700"
                            />
                        </div>
                    </div>

                    <div>
                        <label className="block text-sm font-bold text-[var(--text-primary)] mb-2">Email Address</label>
                        <div className="relative">
                            <div className="absolute left-4 top-1/2 -translate-y-1/2 text-gray-400">
                                <Mail size={18} />
                            </div>
                            <input
                                type="email"
                                value={email}
                                readOnly
                                className="w-full pl-12 pr-4 py-3 rounded-xl border border-[var(--border-light)] bg-gray-50 text-gray-500 font-medium cursor-not-allowed"
                            />
                        </div>
                        <p className="text-[10px] text-gray-400 mt-2">Contact support to change your email address.</p>
                    </div>

                    <div className="pt-6 flex justify-end">
                        <button
                            type="submit"
                            disabled={saving}
                            className="bg-[var(--accent-primary)] hover:bg-[var(--accent-hover)] text-white font-black px-12 py-3.5 rounded-2xl shadow-xl shadow-green-500/20 transition-all hover:-translate-y-0.5"
                        >
                            {saving ? 'Saving...' : 'Save Changes'}
                        </button>
                    </div>
                </form>
            </div>
        </>
    )
}
