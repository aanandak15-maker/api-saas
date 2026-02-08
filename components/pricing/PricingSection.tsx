'use client'

import { useState } from 'react'
import { PricingToggle } from './PricingToggle'
import { PricingCard } from './PricingCard'

const PLANS = [
    {
        id: 'germination',
        name: 'Germination',
        icon: '🌱',
        monthlyPrice: 1000,
        annualPrice: 9600,
        description: 'Local agri shops, small startups, pilot projects',
        features: [
            'Advanced Crop & Disease Detection',
            'Essential Advisory',
            '1 Product Recommendation Slot',
            'Basic Insights Dashboard',
            'Essential Usage Capacity',
            'Platform Branding',
            'Email Support'
        ],
        cta: 'Start Growing',
        popular: false
    },
    {
        id: 'cultivation',
        name: 'Cultivation',
        icon: '🌿',
        monthlyPrice: 4000,
        annualPrice: 38400,
        description: 'Growing agri brands, seed & pesticide companies',
        features: [
            'Advanced Disease Intelligence',
            'Full Advisory Layers',
            '3 Product Recommendation Slots',
            'Advanced Insights Dashboard',
            'Business-Scale Usage',
            'Brand Logo Support',
            'Priority Support'
        ],
        cta: 'Scale My Business',
        popular: true
    },
    {
        id: 'harvest',
        name: 'Harvest',
        icon: '🌾',
        monthlyPrice: 10000,
        annualPrice: 96000,
        description: 'Large companies, marketplaces, NGOs',
        features: [
            'High-Volume Disease Detection',
            'Complete Advisory + Preventive Layers',
            'Unlimited Product Mapping',
            'Business Intelligence Reports',
            'High-Volume Usage',
            'Branding Personalization',
            'Dedicated Support'
        ],
        cta: 'Power My Platform',
        popular: false
    },
    {
        id: 'enterprise',
        name: 'Agri-Enterprise',
        icon: '🌍',
        monthlyPrice: null,
        annualPrice: null,
        description: 'Government bodies, national brands, agri platforms',
        features: [
            'Full White-Label API',
            'Full White-Label Experience',
            'SLA & Uptime Guarantee',
            'Account Manager',
            'Unlimited Mapping',
            'Custom Integrations',
            'Private Infrastructure Option'
        ],
        cta: 'Contact Sales',
        popular: false
    }
]

export function PricingSection() {
    const [billingInterval, setBillingInterval] = useState<'monthly' | 'annual'>('monthly')

    return (
        <section className="py-24 bg-[#f8fafb]" id="pricing">
            <div className="max-w-7xl mx-auto px-6">
                <div className="text-center max-w-3xl mx-auto mb-16">
                    <h2 className="text-4xl font-black tracking-tight text-gray-900 mb-6">
                        Intelligent Diagnostic Engine for <br />
                        <span className="text-transparent bg-clip-text bg-gradient-to-r from-green-500 to-emerald-600">
                            Every Stage of Growth
                        </span>
                    </h2>
                    <p className="text-lg text-gray-500 font-medium">
                        Flexible plans designed for local shops, growing brands, and national enterprises.
                    </p>
                </div>

                <PricingToggle billingInterval={billingInterval} onChange={setBillingInterval} />

                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 items-start">
                    {PLANS.map((plan) => (
                        <PricingCard
                            key={plan.id}
                            plan={{
                                ...plan,
                                price: billingInterval === 'monthly' ? plan.monthlyPrice : plan.annualPrice,
                                billingInterval
                            }}
                        />
                    ))}
                </div>

                <div className="mt-16 text-center">
                    <p className="text-sm text-gray-400 font-medium">
                        Need a custom implementation? <a href="#" className="text-green-600 hover:text-green-700 font-bold">Talk to our solutions team</a>
                    </p>
                </div>
            </div>
        </section>
    )
}
