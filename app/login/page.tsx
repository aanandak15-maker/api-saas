'use client'
import { useState } from 'react'
import { supabase } from '@/lib/supabase'
import { useRouter } from 'next/navigation'
import { Eye, EyeOff, HeartPulse } from 'lucide-react'
import Link from 'next/link'

export default function Login() {
    const router = useRouter()
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [loading, setLoading] = useState(false)
    const [showPassword, setShowPassword] = useState(false)
    const [msg, setMsg] = useState('')

    // Currently only handling Sign In for this specific screen mockup
    // but keeping auth logic generic
    async function handleSignIn(e: React.FormEvent) {
        e.preventDefault()
        setLoading(true)
        setMsg('')

        try {
            const { error } = await supabase.auth.signInWithPassword({ email, password })
            if (error) throw error
            router.push('/dashboard')
        } catch (error: any) {
            setMsg(error.message)
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="min-h-screen w-full flex flex-col items-center justify-center bg-[#f8f9fa] font-sans text-gray-900">
            {/* Logo Heart Icon */}
            <div className="mb-8">
                <div className="w-12 h-12 bg-[#00e600] rounded-xl flex items-center justify-center shadow-lg shadow-green-500/20 transform rotate-3 hover:rotate-6 transition-transform">
                    <HeartPulse className="text-black w-7 h-7" strokeWidth={2.5} />
                </div>
            </div>

            {/* Card */}
            <div className="w-full max-w-[400px] bg-white rounded-2xl shadow-[0_8px_30px_rgb(0,0,0,0.04)] overflow-hidden">

                {/* Header Image Gradient/Placeholder */}
                <div className="h-32 w-full bg-gradient-to-r from-teal-800/80 to-emerald-600/80 relative">
                    <div className="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?q=80&w=2070&auto=format&fit=crop')] bg-cover bg-center opacity-40 mix-blend-overlay"></div>
                    <div className="absolute inset-0 bg-gradient-to-b from-transparent to-white/90"></div>
                </div>

                <div className="px-8 pb-8 pt-2">
                    <div className="text-center mb-8">
                        <h2 className="text-2xl font-bold text-gray-900">Welcome back</h2>
                        <p className="text-sm text-gray-500 mt-2">Enter your credentials to access the diagnostic dashboard.</p>
                    </div>

                    <form onSubmit={handleSignIn} className="space-y-5">
                        {/* Email */}
                        <div>
                            <label className="block text-xs font-semibold text-gray-700 mb-1.5 ml-1">Email address</label>
                            <input
                                type="email"
                                value={email}
                                onChange={e => setEmail(e.target.value)}
                                placeholder="name@company.com"
                                className="w-full px-4 py-2.5 rounded-lg border border-gray-200 text-gray-900 placeholder:text-gray-400 focus:outline-none focus:ring-2 focus:ring-green-500/20 focus:border-green-500 transition-all text-sm"
                                required
                            />
                        </div>

                        {/* Password */}
                        <div>
                            <label className="block text-xs font-semibold text-gray-700 mb-1.5 ml-1">Password</label>
                            <div className="relative">
                                <input
                                    type={showPassword ? "text" : "password"}
                                    value={password}
                                    onChange={e => setPassword(e.target.value)}
                                    placeholder="••••••••"
                                    className="w-full px-4 py-2.5 rounded-lg border border-gray-200 text-gray-900 placeholder:text-gray-400 focus:outline-none focus:ring-2 focus:ring-green-500/20 focus:border-green-500 transition-all text-sm pr-10"
                                    required
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

                        <div className="flex justify-end">
                            <button type="button" className="text-xs font-medium text-gray-600 hover:text-gray-900 transition-colors">
                                Forgot password?
                            </button>
                        </div>

                        {msg && <p className="text-red-500 text-xs text-center">{msg}</p>}

                        <button
                            type="submit"
                            disabled={loading}
                            className="w-full bg-[#00e600] hover:bg-[#00cc00] text-black font-semibold py-2.5 rounded-lg shadow-sm transition-all duration-200 text-sm disabled:opacity-70 disabled:cursor-not-allowed"
                        >
                            {loading ? 'Signing in...' : 'Sign in'}
                        </button>
                    </form>

                    <div className="relative my-6">
                        <div className="absolute inset-0 flex items-center">
                            <div className="w-full border-t border-gray-100"></div>
                        </div>
                        <div className="relative flex justify-center text-xs uppercase">
                            <span className="bg-white px-2 text-gray-400">Or continue with</span>
                        </div>
                    </div>

                    <div className="grid grid-cols-2 gap-3">
                        <button type="button" className="flex items-center justify-center px-4 py-2 border border-gray-200 rounded-lg hover:bg-gray-50 transition-colors text-sm font-medium text-gray-600 gap-2">
                            <svg className="w-4 h-4" viewBox="0 0 24 24"><path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4" /><path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853" /><path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" fill="#FBBC05" /><path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335" /></svg>
                            Google
                        </button>
                        <button type="button" className="flex items-center justify-center px-4 py-2 border border-gray-200 rounded-lg hover:bg-gray-50 transition-colors text-sm font-medium text-gray-600 gap-2">
                            <svg className="w-4 h-4 text-blue-600" fill="currentColor" viewBox="0 0 24 24"><path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-8 14H7v-4h4v4zm0-6H7V7h4v4zm6 6h-4v-4h4v4zm0-6h-4V7h4v4z" /></svg>
                            SSO
                        </button>
                    </div>
                </div>

                <div className="bg-gray-50 py-4 text-center border-t border-gray-100">
                    <p className="text-xs text-gray-500">
                        Don&apos;t have an account? <button onClick={() => setMsg('Contact support to request access.')} className="font-semibold text-green-600 hover:text-green-500 ml-1">Contact Support</button>
                    </p>
                </div>
            </div>

            {/* Footer */}
            <div className="mt-8 text-center text-[10px] text-gray-400">
                <p>© 2024 Diagnostic Services Inc.</p>
                <p className="mt-1">Privacy Policy · Terms of Service</p>
            </div>
        </div>
    )
}
