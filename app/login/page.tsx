'use client'
import { useState } from 'react'
import { supabase } from '@/lib/supabase'
import { useRouter } from 'next/navigation'

export default function Login() {
    const router = useRouter()
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [companyName, setCompanyName] = useState('')
    const [isSignUp, setIsSignUp] = useState(false)
    const [loading, setLoading] = useState(false)
    const [msg, setMsg] = useState('')

    async function handleAuth(e: React.FormEvent) {
        e.preventDefault()
        setLoading(true)
        setMsg('')

        try {
            if (isSignUp) {
                // Sign up logic
                const { data: authData, error: authError } = await supabase.auth.signUp({
                    email,
                    password
                })
                if (authError) throw authError

                if (authData.user) {
                    // Create client record directly (in a real app, use triggers)
                    // Ideally we check if it exists first or rely on unique email constraint
                    const { error: clientError } = await supabase
                        .from('clients')
                        .insert([{
                            company_name: companyName || email.split('@')[0],
                            email: email
                        }])

                    if (clientError) {
                        // duplicate email handled by constraint, but good to catch
                        if (clientError.code !== '23505') console.error(clientError)
                    }
                }
                setMsg('Account created! Please check your email to verify (or sign in if testing without verification).')
            } else {
                const { error } = await supabase.auth.signInWithPassword({ email, password })
                if (error) throw error
                router.push('/dashboard')
            }
        } catch (error: any) {
            setMsg(error.message)
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="flex min-h-screen flex-col justify-center px-6 py-12 lg:px-8 bg-gray-50 font-sans">
            <div className="sm:mx-auto sm:w-full sm:max-w-sm">
                <h2 className="mt-10 text-center text-3xl font-bold leading-9 tracking-tight text-gray-900 text-green-700">
                    Agri SaaS
                </h2>
                <h2 className="mt-2 text-center text-xl font-bold leading-9 tracking-tight text-gray-900">
                    {isSignUp ? 'Register Client Account' : 'Client Login'}
                </h2>
            </div>

            <div className="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
                <form className="space-y-6" onSubmit={handleAuth}>
                    <div>
                        <label className="block text-sm font-medium leading-6 text-gray-900">Email address</label>
                        <div className="mt-2">
                            <input type="email" required value={email} onChange={e => setEmail(e.target.value)}
                                className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3" />
                        </div>
                    </div>

                    <div>
                        <label className="block text-sm font-medium leading-6 text-gray-900">Password</label>
                        <div className="mt-2">
                            <input type="password" required value={password} onChange={e => setPassword(e.target.value)}
                                className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3" />
                        </div>
                    </div>

                    {isSignUp && (
                        <div>
                            <label className="block text-sm font-medium leading-6 text-gray-900">Company Name</label>
                            <div className="mt-2">
                                <input type="text" required value={companyName} onChange={e => setCompanyName(e.target.value)}
                                    className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-green-600 sm:text-sm sm:leading-6 px-3" />
                            </div>
                        </div>
                    )}

                    {msg && <p className={`text-sm text-center ${msg.includes('created') ? 'text-green-600' : 'text-red-500'}`}>{msg}</p>}

                    <div>
                        <button type="submit" disabled={loading} className="flex w-full justify-center rounded-md bg-green-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-green-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-green-600 disabled:opacity-50">
                            {loading ? 'Processing...' : (isSignUp ? 'Create Account' : 'Sign In')}
                        </button>
                    </div>
                </form>

                <p className="mt-10 text-center text-sm text-gray-500">
                    {isSignUp ? 'Already have an account? ' : 'Not a client? '}
                    <button onClick={() => setIsSignUp(!isSignUp)} className="font-semibold leading-6 text-green-600 hover:text-green-500">
                        {isSignUp ? 'Sign in' : 'Register now'}
                    </button>
                </p>
            </div>
        </div>
    )
}
