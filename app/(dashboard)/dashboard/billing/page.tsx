'use client'

import { BillingPlan } from '@/components/dashboard/billing-plan'
import { InvoiceHistory } from '@/components/dashboard/invoice-history'

export default function BillingPage() {
    return (
        <div className="space-y-4">
            <div className="flex flex-col gap-1">
                <div className="flex items-center gap-2 text-sm text-[var(--text-secondary)]">
                    <span>Dashboard</span>
                    <span>/</span>
                    <span className="text-[var(--text-primary)] font-medium">Billing and Usage</span>
                </div>
                <h2 className="text-3xl font-black tracking-tight text-[var(--text-primary)]">Billing and Usage</h2>
                <p className="text-[var(--text-secondary)] text-sm font-medium">Manage your subscription plan, payment methods, and view invoice history.</p>
            </div>

            <div className="space-y-12 pt-10">
                <BillingPlan />
                <InvoiceHistory />
            </div>
        </div>
    )
}
