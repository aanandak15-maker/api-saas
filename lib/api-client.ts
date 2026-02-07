import { supabase } from './supabase'

const API_URL = process.env.NEXT_PUBLIC_API_URL || 'http://localhost:8000'

export async function getAuthHeaders() {
    const { data: { session } } = await supabase.auth.getSession()
    if (!session) return null

    // We need to fetch the API Key from the profile first 
    // OR the backend should accept the Supabase JWT. 
    // Based on previous code, the backend expects 'X-API-Key'.
    // Let's fetch the profile to get the key.

    try {
        const email = session.user.email
        const res = await fetch(`${API_URL}/client/profile?email=${email}`)
        if (res.ok) {
            const data = await res.json()
            return {
                'Content-Type': 'application/json',
                'X-API-Key': data.api_key
            }
        }
    } catch (e) {
        console.error("Failed to fetch API key", e)
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
    delete: async (endpoint: string) => {
        const headers = await getAuthHeaders()
        if (!headers) throw new Error("Unauthorized")
        const res = await fetch(`${API_URL}${endpoint}`, {
            method: 'DELETE',
            headers
        })
        if (!res.ok) throw new Error(`API Error: ${res.statusText}`)
        return res.json()
    }
}
