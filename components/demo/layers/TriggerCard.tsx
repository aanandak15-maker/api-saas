
import { Leaf } from "lucide-react";

export function TriggerCard({ data }: { data: any }) {
    if (!data) return null;

    return (
        <div className="p-5 bg-white/60 backdrop-blur rounded-2xl border border-gray-100/50 shadow-sm hover:shadow-md transition-shadow h-full">
            <div className="flex items-center gap-2 mb-3 text-gray-800">
                <Leaf className="w-5 h-5 text-orange-500" />
                <h3 className="font-semibold">Environmental Trigger</h3>
            </div>
            <p className="text-sm text-gray-600 leading-relaxed">
                {data.trigger}
            </p>
        </div>
    );
}
