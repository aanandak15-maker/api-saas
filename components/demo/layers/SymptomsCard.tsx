
import { Info } from "lucide-react";

export function SymptomsCard({ data }: { data: any }) {
    if (!data) return null;

    return (
        <div className="p-5 bg-white/60 backdrop-blur rounded-2xl border border-gray-100/50 shadow-sm hover:shadow-md transition-shadow h-full">
            <div className="flex items-center gap-2 mb-3 text-gray-800">
                <Info className="w-5 h-5 text-blue-500" />
                <h3 className="font-semibold">Key Symptoms</h3>
            </div>
            <p className="text-sm text-gray-600 leading-relaxed">
                {data.symptoms}
            </p>
            <div className="mt-4 flex flex-wrap gap-2">
                {data.affected_parts && (
                    <span className="px-2 py-1 bg-blue-50 text-blue-700 text-xs rounded-md">
                        Affected: {data.affected_parts}
                    </span>
                )}
                {data.season && (
                    <span className="px-2 py-1 bg-purple-50 text-purple-700 text-xs rounded-md">
                        Season: {data.season}
                    </span>
                )}
            </div>
        </div>
    );
}
