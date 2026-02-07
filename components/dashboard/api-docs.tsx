'use client'

import { useState } from 'react'
import { Terminal, Code2, Globe } from 'lucide-react'

export function APIDocs() {
    const [tab, setTab] = useState('curl')

    const snippets: any = {
        curl: `curl -X POST "http://localhost:8000/v1/diagnose/crop" \\
  -H "X-API-Key: YOUR_API_KEY" \\
  -F "image=@leaf.jpg"`,
        js: `const formData = new FormData();
formData.append('image', file);

const response = await fetch('http://localhost:8000/v1/diagnose/crop', {
  method: 'POST',
  headers: { 'X-API-Key': 'YOUR_API_KEY' },
  body: formData
});

const result = await response.json();
console.log(result.detected_disease);`,
        python: `import requests

url = "http://localhost:8000/v1/diagnose/crop"
files = {"image": open("leaf.jpg", "rb")}
headers = {"X-API-Key": "YOUR_API_KEY"}

response = requests.post(url, files=files, headers=headers)
print(response.json())`
    }

    return (
        <div className="bg-[var(--bg-card)] rounded-2xl border border-[var(--border-light)] shadow-sm overflow-hidden">
            <div className="p-8 border-b border-[var(--border-light)] flex justify-between items-center bg-[#fcfdfe]">
                <div>
                    <h3 className="font-bold text-lg text-[var(--text-primary)]">Quick Integration</h3>
                    <p className="text-xs text-[var(--text-secondary)] mt-1">Get started with our lightweight diagnostic endpoints.</p>
                </div>
                <div className="flex bg-gray-100 p-1 rounded-xl">
                    <button
                        onClick={() => setTab('curl')}
                        className={`flex items-center gap-2 px-4 py-1.5 rounded-lg text-xs font-bold transition-all ${tab === 'curl' ? 'bg-white text-[var(--text-primary)] shadow-sm' : 'text-gray-400'}`}
                    >
                        <Terminal size={14} /> cURL
                    </button>
                    <button
                        onClick={() => setTab('js')}
                        className={`flex items-center gap-2 px-4 py-1.5 rounded-lg text-xs font-bold transition-all ${tab === 'js' ? 'bg-white text-[var(--text-primary)] shadow-sm' : 'text-gray-400'}`}
                    >
                        <Code2 size={14} /> JavaScript
                    </button>
                    <button
                        onClick={() => setTab('python')}
                        className={`flex items-center gap-2 px-4 py-1.5 rounded-lg text-xs font-bold transition-all ${tab === 'python' ? 'bg-white text-[var(--text-primary)] shadow-sm' : 'text-gray-400'}`}
                    >
                        <Globe size={14} /> Python
                    </button>
                </div>
            </div>

            <div className="p-0 bg-[#0f172a] font-mono text-sm leading-6">
                <pre className="p-8 text-gray-300 overflow-x-auto">
                    <code>{snippets[tab]}</code>
                </pre>
            </div>

            <div className="p-8 bg-gray-50/50">
                <h4 className="font-bold text-sm text-[var(--text-primary)] mb-4">Available Endpoints</h4>
                <div className="space-y-3">
                    {[
                        { method: 'POST', path: '/v1/diagnose/crop', desc: 'Plant pathology analysis from image' },
                        { method: 'GET', path: '/v1/diseases/list', desc: 'List all supported botanical pathogens' },
                        { method: 'POST', path: '/v1/detect', desc: 'Generic biological detection' }
                    ].map((ep, i) => (
                        <div key={i} className="flex items-center gap-4 text-xs font-medium">
                            <span className={`w-14 text-center py-1 rounded-md ${ep.method === 'POST' ? 'bg-blue-100 text-blue-700' : 'bg-green-100 text-green-700'}`}>{ep.method}</span>
                            <code className="text-gray-900 font-bold">{ep.path}</code>
                            <span className="text-gray-400">—</span>
                            <span className="text-gray-500 italic">{ep.desc}</span>
                        </div>
                    ))}
                </div>
            </div>
        </div>
    )
}
