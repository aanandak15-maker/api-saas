
import { motion } from "framer-motion";
import { CoreDetection } from "@/components/demo/layers/CoreDetection";
import { ScientificInfo } from "@/components/demo/layers/ScientificInfo";
import { SymptomsCard } from "@/components/demo/layers/SymptomsCard";
import { TriggerCard } from "@/components/demo/layers/TriggerCard";
import { TreatmentPanel } from "@/components/demo/layers/TreatmentPanel";
import { PreventionCard } from "@/components/demo/layers/PreventionCard";
import { ProductCarousel } from "@/components/demo/layers/ProductCarousel";

interface AnalysisResultProps {
    data: any;
}

export function AnalysisResult({ data }: AnalysisResultProps) {
    const { detected_disease, advisory } = data;

    return (
        <motion.div
            className="space-y-6"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ duration: 0.5 }}
        >
            {/* Layer 1: Core Detection (Mandatory) */}
            <CoreDetection data={detected_disease} />

            {/* Layer 2: Scientific Info (Optional) */}
            {advisory?.scientific_name && (
                <ScientificInfo data={advisory} />
            )}

            {/* Layer 3: Symptoms & Environment (Optional Grid) */}
            {(advisory?.symptoms || advisory?.trigger) && (
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    {advisory.symptoms && <SymptomsCard data={advisory} />}
                    {advisory.trigger && <TriggerCard data={advisory} />}
                </div>
            )}

            {/* Layer 4: Treatment (Optional) */}
            {advisory?.treatment && (
                <TreatmentPanel treatment={advisory.treatment} />
            )}

            {/* Layer 5: Prevention (Optional) */}
            {(advisory?.prevention || advisory?.precautions) && (
                <PreventionCard data={advisory} />
            )}

            {/* Layer 6: Products (Optional) */}
            {(advisory?.organic_products || advisory?.chemical_products) && (
                <ProductCarousel
                    organic={advisory.organic_products}
                    chemical={advisory.chemical_products}
                />
            )}
        </motion.div>
    );
}
