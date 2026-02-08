
import { BookOpen } from "lucide-react";

export function ScientificInfo({ data }: { data: any }) {
    if (!data) return null;

    return (
        <div className="p-4 bg-gray-50 border border-gray-200 rounded-xl flex items-center gap-3">
            <BookOpen className="w-5 h-5 text-gray-500" />
            <div>
                <p className="text-sm font-bold text-gray-900">{data.scientific_name}</p>
                <p className="text-xs text-gray-500 uppercase tracking-wide">{data.category}</p>
            </div>
        </div>
    );
}
