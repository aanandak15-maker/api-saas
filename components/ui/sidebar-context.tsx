'use client'

import { createContext, useContext, useState, useEffect } from 'react'

type SidebarContextType = {
    isOpen: boolean
    toggle: () => void
    close: () => void
}

const SidebarContext = createContext<SidebarContextType>({
    isOpen: false,
    toggle: () => { },
    close: () => { }
})

export function SidebarProvider({ children }: { children: React.ReactNode }) {
    const [isOpen, setIsOpen] = useState(false)

    // Close on route change (mobile UX best practice)
    useEffect(() => {
        const handleResize = () => {
            if (window.innerWidth >= 768) {
                setIsOpen(false) // Reset on desktop to rely on CSS
            }
        }
        window.addEventListener('resize', handleResize)
        return () => window.removeEventListener('resize', handleResize)
    }, [])

    return (
        <SidebarContext.Provider value={{
            isOpen,
            toggle: () => setIsOpen(!isOpen),
            close: () => setIsOpen(false)
        }}>
            {children}
        </SidebarContext.Provider>
    )
}

export const useSidebar = () => useContext(SidebarContext)
