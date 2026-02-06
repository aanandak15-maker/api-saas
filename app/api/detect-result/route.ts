import { NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'

export async function POST(request: Request) {
    try {
        const { disease_code, api_key } = await request.json()

        if (!disease_code || !api_key) {
            return NextResponse.json({ error: 'Missing parameters: disease_code and api_key are required' }, { status: 400 })
        }

        // 1. Validate API Key
        const { data: client, error: clientError } = await supabase
            .from('clients')
            .select('id, company_name')
            .eq('api_key', api_key)
            .single()

        if (clientError || !client) {
            return NextResponse.json({ error: 'Invalid API Key' }, { status: 401 })
        }

        // 2. Fetch Disease & Knowledge
        const { data: disease, error: diseaseError } = await supabase
            .from('diseases')
            .select(`
        *,
        disease_knowledge (*)
      `)
            .eq('disease_code', disease_code)
            .single()

        if (diseaseError || !disease) {
            return NextResponse.json({ error: 'Disease not found' }, { status: 404 })
        }

        // 3. Fetch Client Product
        const { data: product } = await supabase
            .from('client_products')
            .select('*')
            .eq('client_id', client.id)
            .eq('disease_code', disease_code)
            .order('priority', { ascending: false }) // Higher priority first
            .limit(1)
            .maybeSingle() // Use maybeSingle as product might not exist

        // 4. Construct Response
        const result = {
            disease: {
                name: disease.disease_name,
                code: disease.disease_code,
                crop: disease.crop,
                details: {
                    scientific_name: disease.scientific_name,
                    category: disease.category,
                    affected_part: disease.affected_part,
                    severity_default: disease.severity_default,
                    visual_symptom_key: disease.visual_symptom_key,
                    image_folder_path: disease.image_folder_path
                },
                knowledge: disease.disease_knowledge?.[0] || null
            },
            recommendation: product ? {
                product_name: product.product_name,
                link: product.product_link,
                priority: product.priority
            } : null,
            client: client.company_name
        }

        return NextResponse.json(result)
    } catch (error) {
        console.error('API Error:', error)
        return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 })
    }
}
