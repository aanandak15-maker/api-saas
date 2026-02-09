
import { motion } from "framer-motion";
import { Sparkles } from "lucide-react";

interface BrandingCardProps {
    data: {
        custom_text?: string;
        primary_color?: string;
    };
}

export function BrandingCard({ data }: BrandingCardProps) {
    const primaryColor = data.primary_color || "#000000";

    return (
        <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            className="rounded-2xl p-6 shadow-sm border border-gray-100 bg-white relative overflow-hidden"
            style={{ borderLeft: `4px solid ${primaryColor}` }}
        >
            <div className="flex items-start gap-4">
                <div
                    className="p-3 rounded-full bg-opacity-10"
                    style={{ backgroundColor: `${primaryColor}10` }}
                >
                    <Sparkles className="w-6 h-6" style={{ color: primaryColor }} />
                </div>
                <div>
                    <h3 className="text-lg font-bold text-gray-900 mb-1">
                        Start Treatment Now
                    </h3>
                    <p className="text-gray-600 leading-relaxed">
                        {data.custom_text || "Expert Advice"}
                    </p>

                    <button
                        className="mt-4 px-4 py-2 rounded-lg text-white font-medium text-sm transition-opacity hover:opacity-90"
                        style={{ backgroundColor: primaryColor }}
                    >
                        Contact Experts
                    </button>
                </div>
            </div>

            {/* Glossy Effect */}
            <div className="absolute -top-10 -right-10 w-32 h-32 bg-gradient-to-br from-white to-transparent opacity-20 transform rotate-45" />
        </motion.div>
    );
}
