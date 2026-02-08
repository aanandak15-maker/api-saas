'use client'

import { motion } from 'framer-motion'

interface PricingToggleProps {
    billingInterval: 'monthly' | 'annual'
    onChange: (interval: 'monthly' | 'annual') => void
}

export function PricingToggle({ billingInterval, onChange }: PricingToggleProps) {
    return (
        <div className="flex justify-center mb-16">
            <div className="bg-white p-1.5 rounded-2xl border border-gray-200 shadow-sm flex relative">
                <button
                    onClick={() => onChange('monthly')}
                    className={`relative z-10 px-8 py-2.5 text-sm font-bold transition-colors duration-200 ${billingInterval === 'monthly' ? 'text-white' : 'text-gray-500 hover:text-gray-900'
                        }`}
                >
                    Monthly
                </button>
                <button
                    onClick={() => onChange('annual')}
                    className={`relative z-10 px-8 py-2.5 text-sm font-bold transition-colors duration-200 flex items-center gap-2 ${billingInterval === 'annual' ? 'text-white' : 'text-gray-500 hover:text-gray-900'
                        }`}
                >
                    Yearly
                    <span className={`text-[10px] px-2 py-0.5 rounded-full uppercase tracking-wider ${billingInterval === 'annual' ? 'bg-white/20 text-white' : 'bg-green-100 text-green-700'
                        }`}>
                        Save 20%
                    </span>
                </button>

                {/* Animated Background Pill */}
                <div
                    className={`absolute inset-y-1.5 rounded-xl bg-[#13ec13] shadow-md transition-all duration-300 ease-spring ${billingInterval === 'monthly' ? 'left-1.5 w-[105px]' : 'left-[120px] w-[170px]'
                        }`}
                />
            </div>
        </div>
    )
}
