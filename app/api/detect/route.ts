
import { NextResponse } from 'next/server';

export async function POST(request: Request) {
    try {
        const formData = await request.formData();

        // Construct new FormData to forward
        // Only 'image', 'crop_type', 'location_lat', 'location_lng'
        const backendFormData = new FormData();
        const image = formData.get('image');
        const crop_type = formData.get('crop_type');
        const lat = formData.get('location_lat');
        const lng = formData.get('location_lng');

        if (image) backendFormData.append('image', image);
        if (crop_type) backendFormData.append('crop_type', crop_type);
        if (lat) backendFormData.append('location_lat', lat);
        if (lng) backendFormData.append('location_lng', lng);

        // Hardcode fallback for crop_type if missing?
        if (!crop_type) backendFormData.append('crop_type', 'Tomato');

        const backendUrl = 'http://localhost:8000/detect';

        const res = await fetch(backendUrl, {
            method: 'POST',
            headers: {
                'x-api-key': 'zIS7TKdQeKeOOne3AlinyiDcYQusLQ1V', // Naksh Key (Organic Focus)
            },
            body: backendFormData,
        });

        if (!res.ok) {
            const errorText = await res.text();
            return NextResponse.json({ error: errorText || res.statusText }, { status: res.status });
        }

        const data = await res.json();
        return NextResponse.json(data);

    } catch (error: any) {
        console.error("Proxy Error:", error);
        return NextResponse.json({ error: error.message || 'Internal Server Error' }, { status: 500 });
    }
}
