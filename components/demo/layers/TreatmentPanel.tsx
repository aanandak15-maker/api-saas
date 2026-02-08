

import { useState } from "react";
import { cn } from "@/lib/utils";
import { motion, AnimatePresence } from "framer-motion";

interface TreatmentPanelProps {
    treatment: any;
}

export function TreatmentPanel({ treatment }: TreatmentPanelProps) {
    if (!treatment) return null;

    const tabs = [];
    if (treatment.organic) tabs.push({ id: "organic", label: "Organic", content: treatment.organic });
    if (treatment.chemical) tabs.push({ id: "chemical", label: "Chemical", content: treatment.chemical });
    if (treatment.biological) tabs.push({ id: "biological", label: "Biological", content: treatment.biological });

    if (tabs.length === 0) return null;

    // If only 1 tab, render simple card
    if (tabs.length === 1) {
        return (
            <div className="bg-white rounded-2xl p-6 border border-gray-100 shadow-sm">
                <h3 className="font-bold text-gray-900 mb-3">{tabs[0].label} Control</h3>
                <div className="prose prose-sm max-w-none text-gray-600 whitespace-pre-line">
                    {tabs[0].content}
                </div>
                {treatment.dosage && (
                    <div className="mt-4 pt-4 border-t border-gray-100 flex gap-4 text-xs text-gray-500 font-medium">
                        <span>Dosage: {treatment.dosage}</span>
                        <span>Method: {treatment.application_method}</span>
                    </div>
                )}
            </div>
        );
    }

    // Multiple tabs
    // eslint-disable-next-line react-hooks/rules-of-hooks
    const [activeTab, setActiveTab] = useState(tabs[0].id);

    return (
        <div className="bg-white rounded-2xl p-6 border border-gray-100 shadow-sm">
            <div className="flex items-center gap-2 mb-6 border-b border-gray-100 pb-1">
                {tabs.map((tab) => (
                    <button
                        key={tab.id}
                        onClick={() => setActiveTab(tab.id)}
                        className={cn(
                            "px-4 py-2 text-sm font-bold rounded-lg transition-all relative",
                            activeTab === tab.id
                                ? "text-gray-900 bg-gray-50"
                                : "text-gray-400 hover:text-gray-600"
                        )}
                    >
                        {tab.label}
                        {activeTab === tab.id && (
                            <motion.div
                                layoutId="activeTab"
                                className="absolute bottom-[-5px] left-0 right-0 h-0.5 bg-[#13ec13]"
                            />
                        )}
                    </button>
                ))}
            </div>

            <AnimatePresence mode="wait">
                <motion.div
                    key={activeTab}
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -10 }}
                    transition={{ duration: 0.2 }}
                >
                    <div className="prose prose-sm max-w-none text-gray-600 whitespace-pre-line">
                        {tabs.find((t) => t.id === activeTab)?.content}
                    </div>
                    {treatment.dosage && (
                        <div className="mt-4 pt-4 border-t border-gray-100 flex gap-4 text-xs text-gray-500 font-medium">
                            <span>Dosage: {treatment.dosage}</span>
                            <span>Method: {treatment.application_method}</span>
                        </div>
                    )}
                </motion.div>
            </AnimatePresence>
        </div>
    );
}
