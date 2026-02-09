'use client'
import { useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import { HeartPulse, Eye, EyeOff } from 'lucide-react'
import { api } from '@/lib/api-client'

export default function Signup() {
    const router = useRouter()
    const [formData, setFormData] = useState({
        company_name: '',
        email: '',
        password: '',
        phone: ''
    })
    const [loading, setLoading] = useState(false)
    const [showPassword, setShowPassword] = useState(false)
    const [msg, setMsg] = useState('')
    const [error, setError] = useState('')

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        setLoading(true)
        setError('')
        setMsg('')

        try {
            // 1. Create Supabase Auth User
            const { data: authData, error: authError } = await api.auth.signUp(formData.email, formData.password)

            if (authError) {
                // If user already exists, Supabase might return a distinct error
                if (authError.message.includes("already registered")) {
                    throw new Error("Account with this email already exists. Please Log In.")
                }
                throw authError
            }

            if (!authData.user) {
                throw new Error("Failed to create account. Please try again.")
            }

            // 2. Create Client Record in Backend
            // We pass the email from authData to be sure
            await api.post('/dashboard/signup', {
                email: authData.user.email,
                company_name: formData.company_name
            })

            setMsg('Account created successfully! Redirecting to login...')
            setTimeout(() => router.push('/login'), 2000)

        } catch (err: any) {
            // Handle 409 from Backend if Auth succeeded but Backend failed (unlikely race condition but possible)
            if (err.message && err.message.includes("already exists")) {
                setError("Account with this email already exists. Please Log In.")
            } else {
                setError(err.message || 'Signup failed. Please try again.')
            }
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="min-h-screen w-full flex flex-col items-center justify-center bg-[#f8f9fa] font-sans text-gray-900">
            {/* Logo */}
            <div className="mb-8">
                <Link href="/" className="w-12 h-12 bg-[#00e600] rounded-xl flex items-center justify-center shadow-lg shadow-green-500/20 transform rotate-3 hover:rotate-6 transition-transform">
                    <HeartPulse className="text-black w-7 h-7" strokeWidth={2.5} />
                </Link>
            </div>

            {/* Card */}
            <div className="w-full max-w-[400px] bg-white rounded-2xl shadow-[0_8px_30px_rgb(0,0,0,0.04)] overflow-hidden">
                <div className="px-8 py-8">
                    <div className="text-center mb-8">
                        <h2 className="text-2xl font-bold text-gray-900">Create an account</h2>
                        <p className="text-sm text-gray-500 mt-2">Start your diagnostic journey today.</p>
                    </div>

                    <form onSubmit={handleSubmit} className="space-y-4">
                        <div>
                            <label className="block text-xs font-semibold text-gray-700 mb-1.5 ml-1">Company Name</label>
                            <input
                                type="text"
                                value={formData.company_name}
                                onChange={e => setFormData({ ...formData, company_name: e.target.value })}
                                className="w-full px-4 py-2.5 rounded-lg border border-gray-200 text-sm focus:ring-2 focus:ring-green-500/20 focus:border-green-500 outline-none"
                                required
                                placeholder="Acme Inc."
                            />
                        </div>

                        <div>
                            <label className="block text-xs font-semibold text-gray-700 mb-1.5 ml-1">Email address</label>
                            <input
                                type="email"
                                value={formData.email}
                                onChange={e => setFormData({ ...formData, email: e.target.value })}
                                className="w-full px-4 py-2.5 rounded-lg border border-gray-200 text-sm focus:ring-2 focus:ring-green-500/20 focus:border-green-500 outline-none"
                                required
                                placeholder="name@company.com"
                            />
                        </div>

                        <div>
                            <label className="block text-xs font-semibold text-gray-700 mb-1.5 ml-1">Password</label>
                            <div className="relative">
                                <input
                                    type={showPassword ? "text" : "password"}
                                    value={formData.password}
                                    onChange={e => setFormData({ ...formData, password: e.target.value })}
                                    className="w-full px-4 py-2.5 rounded-lg border border-gray-200 text-sm focus:ring-2 focus:ring-green-500/20 focus:border-green-500 outline-none pr-10"
                                    required
                                    placeholder="••••••••"
                                />
                                <button
                                    type="button"
                                    onClick={() => setShowPassword(!showPassword)}
                                    className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-gray-600"
                                >
                                    {showPassword ? <EyeOff size={16} /> : <Eye size={16} />}
                                </button>
                            </div>
                        </div>

                        <div>
                            <label className="block text-xs font-semibold text-gray-700 mb-1.5 ml-1">Phone (Optional)</label>
                            <input
                                type="tel"
                                value={formData.phone}
                                onChange={e => setFormData({ ...formData, phone: e.target.value })}
                                className="w-full px-4 py-2.5 rounded-lg border border-gray-200 text-sm focus:ring-2 focus:ring-green-500/20 focus:border-green-500 outline-none"
                                placeholder="+1 (555) 000-0000"
                            />
                        </div>

                        {error && <p className="text-xs text-red-500 text-center">{error}</p>}
                        {msg && <p className="text-xs text-green-600 text-center">{msg}</p>}

                        <button
                            type="submit"
                            disabled={loading}
                            className="w-full bg-[#00e600] hover:bg-[#00cc00] text-black font-semibold py-2.5 rounded-lg shadow-sm transition-all duration-200 text-sm disabled:opacity-70 mt-2"
                        >
                            {loading ? 'Creating account...' : 'Sign up'}
                        </button>
                    </form>
                </div>

                <div className="bg-gray-50 py-4 text-center border-t border-gray-100">
                    <p className="text-xs text-gray-500">
                        Already have an account? <Link href="/login" className="font-semibold text-green-600 hover:text-green-500 ml-1">Log in</Link>
                    </p>
                </div>
            </div>
        </div>
    )
}
