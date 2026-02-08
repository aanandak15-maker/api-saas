
import { ShieldCheck } from "lucide-react";

export function PreventionCard({ data }: { data: any }) {
    if (!data || (!data.prevention && !data.precautions)) return null;

    return (
        <div className="bg-blue-50/50 rounded-2xl p-6 border border-blue-100/50">
            <div className="flex items-center gap-2 mb-4">
                <ShieldCheck className="w-5 h-5 text-blue-600" />
                <h3 className="font-bold text-gray-900">Prevention & Safety</h3>
            </div>

            {data.prevention && (
                <div className="mb-4">
                    <h4 className="text-xs font-black uppercase text-gray-400 tracking-wider mb-2">Preventive Measures</h4>
                    <p className="text-sm text-gray-700 leading-relaxed">{data.prevention}</p>
                </div>
            )}

            {data.precautions && (
                <div>
                    <h4 className="text-xs font-black uppercase text-gray-400 tracking-wider mb-2">Precautions</h4>
                    <p className="text-sm text-gray-700 leading-relaxed italic">{data.precautions}</p>
                </div>
            )}
        </div>
    );
}
