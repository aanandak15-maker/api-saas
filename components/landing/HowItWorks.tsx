'use client';

import Link from 'next/link';
import { Scan, BrainCircuit, ShoppingBag, ArrowRight } from 'lucide-react';

export function HowItWorks() {
    const steps = [
        {
            step: '01',
            title: 'Scan',
            desc: 'Upload plant image from your app or web platform.',
            icon: Scan,
            color: 'blue',
        },
        {
            step: '02',
            title: 'Detect',
            desc: 'AI identifies disease + confidence score instantly.',
            icon: BrainCircuit,
            color: 'purple',
        },
        {
            step: '03',
            title: 'Deliver',
            desc: 'Return expert advisory + your product recommendations.',
            icon: ShoppingBag,
            color: 'green',
        },
    ];

    return (
        <section className="py-24 bg-white">
            <div className="max-w-7xl mx-auto px-6 lg:px-8">
                <div className="text-center mb-16">
                    <h2 className="text-3xl font-black text-gray-900 mb-4">How It Works</h2>
                    <p className="text-lg text-gray-500 max-w-2xl mx-auto">
                        Three simple steps to connect your users to expert advice.
                    </p>
                </div>

                <div className="grid md:grid-cols-3 gap-12 relative">
                    {/* Connecting Line (Desktop) */}
                    <div className="hidden md:block absolute top-[60px] left-[16%] right-[16%] h-0.5 bg-gray-100 -z-10"></div>

                    {steps.map((step, idx) => (
                        <div key={idx} className="relative flex flex-col items-center text-center group">
                            <div
                                className={`w-28 h-28 rounded-3xl bg-white border-4 border-gray-50 shadow-xl flex items-center justify-center mb-8 z-10 
                  transition-transform group-hover:-translate-y-2 duration-300
                  ${step.color === 'green' ? 'text-[#13ec13]' :
                                        step.color === 'blue' ? 'text-blue-500' : 'text-purple-500'}`}
                            >
                                <step.icon className="w-10 h-10" />
                                <div className="absolute -top-3 -right-3 w-8 h-8 rounded-full bg-gray-900 text-white flex items-center justify-center text-xs font-bold">
                                    {step.step}
                                </div>
                            </div>

                            <h3 className="text-xl font-black text-gray-900 mb-3">{step.title}</h3>
                            <p className="text-gray-500 leading-relaxed max-w-xs mx-auto text-sm">
                                {step.desc}
                            </p>

                            {idx === 0 && (
                                <Link href="/playground" className="mt-4 text-xs font-bold text-[#13ec13] hover:underline flex items-center justify-center gap-1">
                                    Try it now <ArrowRight className="w-3 h-3" />
                                </Link>
                            )}
                        </div>
                    ))}
                </div>
            </div>
        </section>
    );
}
