
import { useState, useEffect, useMemo } from 'react';
import { X, Search, Check, Loader2, Save } from 'lucide-react';
import { supabase } from '@/lib/supabase';
import { api } from '@/lib/api-client';

interface Product {
    id: string;
    product_name: string;
    category: string;
    image_url?: string;
}

interface Disease {
    id: string;
    disease_id: string;
    disease_name: string;
    crop: string;
}

interface Mapping {
    id: string;
    disease_id: string; // The UUID from mapping table
    disease_ref_id: string; // The string ID (TOM-001) - we might need to fetch this or map it
    product_id: string;
}

interface AttachDiseasesModalProps {
    isOpen: boolean;
    onClose: () => void;
    product: Product;
    onSuccess: () => void;
}

export function AttachDiseasesModal({ isOpen, onClose, product, onSuccess }: AttachDiseasesModalProps) {
    const [diseases, setDiseases] = useState<Disease[]>([]);
    const [existingMappings, setExistingMappings] = useState<Set<string>>(new Set()); // Set of disease_ids (string format like TOM-001)
    const [selectedDiseases, setSelectedDiseases] = useState<Set<string>>(new Set());
    const [searchQuery, setSearchQuery] = useState('');
    const [loading, setLoading] = useState(true);
    const [saving, setSaving] = useState(false);
    const [error, setError] = useState<string | null>(null);

    // Determine treatment type from product category
    const treatmentType = useMemo(() => {
        const cat = product.category.toLowerCase();
        if (cat.includes('chemical')) return 'chemical';
        if (cat.includes('bio')) return 'biological';
        return 'organic';
    }, [product.category]);

    useEffect(() => {
        if (isOpen) {
            fetchData();
        } else {
            // Reset state on close
            setSearchQuery('');
            setSelectedDiseases(new Set());
            setExistingMappings(new Set());
        }
    }, [isOpen, product.id]);

    const fetchData = async () => {
        setLoading(true);
        try {
            const { data: { session } } = await supabase.auth.getSession();
            if (!session) return;

            // Get Client API Key
            const { data: client } = await supabase
                .from('clients')
                .select('api_key')
                .eq('email', session.user.email)
                .single();

            if (!client) throw new Error("Client not found");

            const headers = { 'x-api-key': client.api_key };

            // 1. Fetch all diseases
            const diseaseData = await api.get('/diseases/list');
            const allDiseases: Disease[] = diseaseData.diseases;
            setDiseases(allDiseases);

            // 2. Fetch existing mappings
            const mappingData = await api.get('/mappings');

            // Filter mappings for THIS product
            // mappings return: { disease_id: UUID, product_id: UUID, ... }
            // BUT we need to know the STRING disease_id (e.g. TOM-001) to match our list.
            // The /mappings endpoint returns basic info.
            // Wait, list_diseases returns ID (uuid) and disease_id (string).
            // create_mapping takes disease_id (string).
            // list_mappings returns disease_id (uuid).
            // So we need to map UUID -> String ID from the disease list.

            const uuidToStringMap = new Map(allDiseases.map(d => [d.id, d.disease_id]));

            const currentProductMappings = mappingData.mappings
                .filter((m: any) => m.product_id === product.id)
                .map((m: any) => uuidToStringMap.get(m.disease_id))
                .filter(Boolean) as string[];

            const mappingSet = new Set<string>(currentProductMappings);
            setExistingMappings(mappingSet);
            setSelectedDiseases(new Set(mappingSet)); // Initialize selection with existing

        } catch (err: any) {
            setError(err.message);
        } finally {
            setLoading(false);
        }
    };

    const handleToggle = (diseaseId: string) => {
        const next = new Set(selectedDiseases);
        if (next.has(diseaseId)) {
            next.delete(diseaseId);
        } else {
            next.add(diseaseId);
        }
        setSelectedDiseases(next);
    };

    const handleSave = async () => {
        setSaving(true);
        try {
            const { data: { session } } = await supabase.auth.getSession();
            const { data: client } = await supabase.from('clients').select('api_key').eq('email', session!.user.email).single();

            if (!client) throw new Error("Client not found");

            const headers = {
                'x-api-key': client.api_key,
                'Content-Type': 'application/json'
            };

            // Calculate Diff
            const toAdd = Array.from(selectedDiseases).filter(id => !existingMappings.has(id));
            const toRemove = Array.from(existingMappings).filter(id => !selectedDiseases.has(id));

            // 1. Delete removed mappings
            // querying mappings to find UUIDs to delete is hard because local state track string IDs.
            // So we need to re-fetch or track mapping UUIDs.
            // Simplified approach: Fetch all mappings again to get their IDs.
            const mappingData = await api.get('/mappings');

            // Map String ID -> Mapping UUID for this product
            // Need UUID of disease first.
            const diseaseStringToUuid = new Map(diseases.map(d => [d.disease_id, d.id]));

            const mappingsToDelete = mappingData.mappings.filter((m: any) =>
                m.product_id === product.id &&
                toRemove.includes(diseases.find(d => d.id === m.disease_id)?.disease_id || '')
            );

            await Promise.all(mappingsToDelete.map((m: any) =>
                api.delete(`/mappings/${m.id}`)
            ));

            // 2. Add new mappings
            await Promise.all(toAdd.map(diseaseId =>
                api.post('/mappings', {
                    disease_id: diseaseId,
                    product_id: product.id,
                    treatment_type: treatmentType,
                    priority: 1
                })
            ));

            onSuccess();
            onClose();

        } catch (err: any) {
            setError(err.message);
        } finally {
            setSaving(false);
        }
    };

    // Group diseases by Crop
    const filteredDiseases = diseases.filter(d =>
        d.disease_name.toLowerCase().includes(searchQuery.toLowerCase()) ||
        d.crop.toLowerCase().includes(searchQuery.toLowerCase())
    );

    const groupedDiseases = filteredDiseases.reduce((acc, d) => {
        if (!acc[d.crop]) acc[d.crop] = [];
        acc[d.crop].push(d);
        return acc;
    }, {} as Record<string, Disease[]>);

    if (!isOpen) return null;

    return (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/50 backdrop-blur-sm">
            <div className="bg-white rounded-2xl w-full max-w-2xl max-h-[85vh] flex flex-col shadow-2xl overflow-hidden animate-in fade-in zoom-in duration-200">

                {/* Header */}
                <div className="p-6 border-b border-gray-100 flex items-center justify-between bg-white z-10">
                    <div>
                        <h2 className="text-xl font-bold text-gray-900">Attach Diseases</h2>
                        <div className="flex items-center gap-2 text-sm text-gray-500 mt-1">
                            <span>to</span>
                            <span className="font-bold text-gray-900 bg-gray-100 px-2 py-0.5 rounded-md">{product.product_name}</span>
                            <span className="bg-blue-50 text-blue-700 px-2 py-0.5 rounded-md text-xs uppercase font-bold tracking-wider">{treatmentType}</span>
                        </div>
                    </div>
                    <button onClick={onClose} className="p-2 hover:bg-gray-100 rounded-full transition-colors">
                        <X className="w-5 h-5 text-gray-500" />
                    </button>
                </div>

                {/* Content */}
                <div className="flex-1 overflow-y-auto p-6 bg-gray-50/50">
                    {/* Search */}
                    <div className="relative mb-6">
                        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
                        <input
                            type="text"
                            placeholder="Search diseases (e.g. 'Blight', 'Tomato')..."
                            value={searchQuery}
                            onChange={(e) => setSearchQuery(e.target.value)}
                            className="w-full pl-10 pr-4 py-3 bg-white border border-gray-200 rounded-xl focus:ring-2 focus:ring-green-500 focus:border-green-500 outline-none transition-all"
                        />
                    </div>

                    {loading ? (
                        <div className="flex justify-center py-12">
                            <Loader2 className="w-8 h-8 animate-spin text-gray-300" />
                        </div>
                    ) : (
                        <div className="space-y-6">
                            {Object.keys(groupedDiseases).length === 0 && (
                                <div className="text-center py-12 text-gray-400">
                                    No diseases found matching &quot;{searchQuery}&quot;
                                </div>
                            )}

                            {Object.entries(groupedDiseases).map(([crop, cropDiseases]) => (
                                <div key={crop} className="bg-white rounded-xl border border-gray-200 overflow-hidden">
                                    <div className="px-4 py-3 bg-gray-50 border-b border-gray-100 font-bold text-gray-700 flex items-center justify-between">
                                        <span>{crop}</span>
                                        <span className="text-xs font-normal text-gray-400">{cropDiseases.length} diseases</span>
                                    </div>
                                    <div className="divide-y divide-gray-100">
                                        {cropDiseases.map(disease => (
                                            <label key={disease.id} className="flex items-center gap-4 px-4 py-3 hover:bg-gray-50 cursor-pointer transition-colors group">
                                                <div className={`
                                            w-5 h-5 rounded border flex items-center justify-center transition-all
                                            ${selectedDiseases.has(disease.disease_id)
                                                        ? 'bg-green-500 border-green-500'
                                                        : 'border-gray-300 bg-white group-hover:border-green-400'}
                                        `}>
                                                    {selectedDiseases.has(disease.disease_id) && <Check className="w-3.5 h-3.5 text-white" />}
                                                </div>
                                                <div className="flex-1">
                                                    <span className={`text-sm font-medium transition-colors ${selectedDiseases.has(disease.disease_id) ? 'text-gray-900' : 'text-gray-600'}`}>
                                                        {disease.disease_name}
                                                    </span>
                                                </div>
                                            </label>
                                        ))}
                                    </div>
                                </div>
                            ))}
                        </div>
                    )}
                </div>

                {/* Footer */}
                <div className="p-4 border-t border-gray-100 bg-white flex items-center justify-between">
                    <div className="text-sm text-gray-500">
                        <span className="font-bold text-gray-900">{selectedDiseases.size}</span> diseases selected
                    </div>
                    <div className="flex gap-3">
                        <button
                            onClick={onClose}
                            className="px-4 py-2 text-gray-600 font-medium hover:bg-gray-100 rounded-lg transition-colors"
                        >
                            Cancel
                        </button>
                        <button
                            onClick={handleSave}
                            disabled={saving}
                            className="px-6 py-2 bg-green-600 hover:bg-green-700 text-white font-bold rounded-lg shadow-lg hover:shadow-xl transition-all disabled:opacity-50 disabled:shadow-none flex items-center gap-2"
                        >
                            {saving ? <Loader2 className="w-4 h-4 animate-spin" /> : <Save className="w-4 h-4" />}
                            Save Mappings
                        </button>
                    </div>
                </div>

            </div>
        </div>
    );
}
