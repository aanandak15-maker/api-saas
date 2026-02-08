'use client';

import { Navbar } from '@/components/landing/Navbar';
import { HeroSection } from '@/components/landing/HeroSection';
import { PainSection } from '@/components/landing/PainSection';
import { HowItWorks } from '@/components/landing/HowItWorks';
import { FeaturesGrid } from '@/components/landing/FeaturesGrid';
import { DashboardPreview } from '@/components/landing/DashboardPreview';
import { IndustriesGrid } from '@/components/landing/IndustriesGrid';
import { PricingSection } from '@/components/pricing/PricingSection';
import { APISection } from '@/components/landing/APISection';
import { TrustSection } from '@/components/landing/TrustSection';
import { FinalCTA } from '@/components/landing/FinalCTA';
import { Footer } from '@/components/landing/Footer';

export default function LandingPage() {
  return (
    <div className="bg-white min-h-screen font-sans selection:bg-[#13ec13]/30">
      <Navbar />

      <main>
        <HeroSection />
        <PainSection />
        <HowItWorks />
        <FeaturesGrid />
        <DashboardPreview />
        <IndustriesGrid />
        <PricingSection />
        <APISection />
        <TrustSection />
        <FinalCTA />
      </main>

      <Footer />
    </div>
  );
}
