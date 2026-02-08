
import { CheckCircle, AlertTriangle } from "lucide-react";
import { cn } from "@/lib/utils";

interface CoreDetectionProps {
    data: any;
}

export function CoreDetection({ data }: CoreDetectionProps) {
    if (!data) return null;

    const diseaseName = data.disease_name || "Unknown Disease";
    const isHealthy = diseaseName.toLowerCase().includes("healthy");
    const severity = data.severity || "undefined";
    const confidence = data.confidence || 0;

    const severityColor = {
        mild: "text-yellow-600 bg-yellow-50 border-yellow-200",
        moderate: "text-orange-600 bg-orange-50 border-orange-200",
        severe: "text-red-600 bg-red-50 border-red-200",
        undefined: "text-gray-600 bg-gray-50 border-gray-200"
    };

    const severityClass = severityColor[severity as keyof typeof severityColor];

    return (
        <div className={cn(
            "relative overflow-hidden rounded-2xl border p-6 shadow-xl backdrop-blur-md",
            isHealthy ? "bg-green-50/80 border-green-200" : "bg-white/90 border-gray-200"
        )}>
            <div className="flex items-start justify-between">
                <div>
                    <div className="flex items-center gap-2 mb-2">
                        <span className="px-3 py-1 text-xs font-bold tracking-wider uppercase bg-white/50 rounded-full border border-gray-100">
                            {data.crop}
                        </span>
                        <span className={cn("px-3 py-1 text-xs font-bold tracking-wider uppercase rounded-full border", severityClass)}>
                            {severity}
                        </span>
                    </div>

                    <h2 className={cn("text-3xl font-bold mb-1", isHealthy ? "text-green-700" : "text-gray-900")}>
                        {data.disease_name}
                    </h2>

                    <div className="flex items-center gap-2 mt-4">
                        <div className="h-2 w-24 bg-gray-200 rounded-full overflow-hidden">
                            <div
                                className={cn("h-full rounded-full", isHealthy ? "bg-green-500" : "bg-red-500")}
                                style={{ width: `${data.confidence * 100}%` }}
                            />
                        </div>
                        <span className="text-xs font-medium text-gray-500">
                            {Math.round(data.confidence * 100)}% Confidence
                        </span>
                    </div>
                </div>

                <div className={cn("p-4 rounded-full shadow-inner", isHealthy ? "bg-green-100" : "bg-red-50")}>
                    {isHealthy ? <CheckCircle className="w-8 h-8 text-green-600" /> : <AlertTriangle className="w-8 h-8 text-red-500" />}
                </div>
            </div>
        </div>
    );
}
