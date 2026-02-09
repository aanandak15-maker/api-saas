import { supabase } from './supabase'

const API_URL = process.env.NEXT_PUBLIC_API_URL || 'http://localhost:8000'

// Simple memory cache
let cachedApiKey: string | null = null

export function setCachedApiKey(key: string | null) {
    cachedApiKey = key
}

export async function getAuthHeaders() {
    const { data: { session } } = await supabase.auth.getSession()
    if (!session) return null

    // 1. Return cached key if available
    if (cachedApiKey) return {
        'Content-Type': 'application/json',
        'X-API-Key': cachedApiKey
    }

    // 2. Bootstrap: Fetch API Key from profile using Session Token
    try {
        // Use standard fetch to avoid infinite loop if api.get calls this
        const res = await fetch(`${API_URL}/client/profile`, {
            headers: {
                'Authorization': `Bearer ${session.access_token}`
            }
        })

        if (res.ok) {
            const data = await res.json()
            if (data.api_key) {
                cachedApiKey = data.api_key as string
                return {
                    'Content-Type': 'application/json',
                    'X-API-Key': cachedApiKey
                }
            }
        } else {
            const err = await res.text()
            console.error(`Bootstrap Error (${res.status}): ${err}`)
        }
    } catch (e) {
        console.error("Failed to fetch API key (Bootstrap Exception)", e)
    }
    return null
}

export const api = {
    get: async (endpoint: string) => {
        const headers = await getAuthHeaders()
        if (!headers) throw new Error("Unauthorized")
        const res = await fetch(`${API_URL}${endpoint}`, { headers })
        if (!res.ok) throw new Error(`API Error: ${res.statusText}`)
        return res.json()
    },
    post: async (endpoint: string, body: any) => {
        const headers = await getAuthHeaders()
        if (!headers) throw new Error("Unauthorized")
        const res = await fetch(`${API_URL}${endpoint}`, {
            method: 'POST',
            headers,
            body: JSON.stringify(body)
        })
        if (!res.ok) throw new Error(`API Error: ${res.statusText}`)
        return res.json()
    },
    put: async (endpoint: string, body: any) => {
        const headers = await getAuthHeaders() || {} as any
        // If no auth headers yet, try to fetch session
        if (!headers['X-API-Key'] && !headers['Authorization']) {
            const { data: { session } } = await supabase.auth.getSession()
            if (session) {
                headers['Authorization'] = `Bearer ${session.access_token}`
                headers['Content-Type'] = 'application/json'
            }
        }

        const res = await fetch(`${API_URL}${endpoint}`, {
            method: 'PUT',
            headers,
            body: JSON.stringify(body)
        })
        if (!res.ok) throw new Error(`API Error: ${res.statusText}`)
        return res.json()
    },
    delete: async (endpoint: string) => {
        const headers = await getAuthHeaders()
        if (!headers) throw new Error("Unauthorized")
        const res = await fetch(`${API_URL}${endpoint}`, {
            method: 'DELETE',
            headers
        })
        if (!res.ok) throw new Error(`API Error: ${res.statusText}`)
        return res.json()
    },
    auth: {
        signUp: async (email: string, password: string) => {
            return await supabase.auth.signUp({ email, password })
        },
        signIn: async (email: string, password: string) => {
            return await supabase.auth.signInWithPassword({ email, password })
        },
        signOut: async () => {
            return await supabase.auth.signOut()
        }
    }
}
