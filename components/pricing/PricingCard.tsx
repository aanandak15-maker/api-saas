'use client'

import { Check, ArrowRight } from 'lucide-react'

interface PlanProps {
    id: string
    name: string
    icon: string
    price: number | null
    description: string
    features: string[]
    cta: string
    popular: boolean
    billingInterval: 'monthly' | 'annual'
}

export function PricingCard({ plan }: { plan: PlanProps }) {
    const isCustom = plan.price === null
    const displayPrice = isCustom ? 'Custom' : `₹${plan.price?.toLocaleString()}`

    return (
        <div className={`relative bg-white p-8 rounded-3xl border transition-all duration-300 flex flex-col h-full ${plan.popular
            ? 'border-[#13ec13] shadow-xl shadow-green-500/10 scale-105 z-10'
            : 'border-gray-200 hover:border-green-200 hover:shadow-lg'
            }`}>

            {plan.popular && (
                <div className="absolute -top-4 left-1/2 -translate-x-1/2 bg-gradient-to-r from-green-500 to-emerald-600 text-white text-[10px] font-black uppercase tracking-widest px-4 py-1.5 rounded-full shadow-lg shadow-green-500/20">
                    Most Popular
                </div>
            )}

            <div className="mb-8">
                <div className="w-12 h-12 bg-green-50 rounded-2xl flex items-center justify-center text-2xl mb-6">
                    {plan.icon}
                </div>
                <h3 className="text-xl font-black text-gray-900 mb-2">{plan.name}</h3>
                <p className="text-sm text-gray-500 font-medium leading-relaxed min-h-[40px]">
                    {plan.description}
                </p>
            </div>

            <div className="mb-8">
                <div className="flex items-baseline gap-1">
                    <span className="text-4xl font-black text-gray-900 tracking-tight">{displayPrice}</span>
                    {!isCustom && (
                        <span className="text-gray-400 font-bold text-sm">
                            /{plan.billingInterval === 'monthly' ? 'mo' : 'yr'}
                        </span>
                    )}
                </div>
                {!isCustom && plan.billingInterval === 'annual' && (
                    <p className="text-xs text-green-600 font-bold mt-2">
                        Includes 2 months free
                    </p>
                )}
            </div>

            <div className="space-y-4 mb-8 flex-1">
                {plan.features.map((feature, i) => (
                    <div key={i} className="flex items-start gap-3">
                        <div className="mt-0.5 bg-green-100 p-0.5 rounded-full">
                            <Check className="w-3 h-3 text-green-600 stroke-[3]" />
                        </div>
                        <span className="text-sm text-gray-600 font-medium">{feature}</span>
                    </div>
                ))}
            </div>

            <button className={`w-full py-4 rounded-xl font-black text-sm transition-all flex items-center justify-center gap-2 group ${plan.popular
                ? 'bg-[#13ec13] hover:bg-[#0fd60f] text-white shadow-lg shadow-green-500/20'
                : 'bg-gray-50 hover:bg-gray-100 text-gray-900'
                }`}>
                {plan.cta}
                <ArrowRight className={`w-4 h-4 transition-transform group-hover:translate-x-1 ${plan.popular ? 'text-white' : 'text-gray-400'}`} />
            </button>
        </div>
    )
}
