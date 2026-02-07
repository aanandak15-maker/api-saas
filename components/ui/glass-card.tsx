import { cn } from "@/lib/utils"
import { motion } from "framer-motion"

interface GlassCardProps extends React.HTMLAttributes<HTMLDivElement> {
    hoverEffect?: boolean
}

export function GlassCard({ className, hoverEffect = true, children, ...props }: GlassCardProps) {
    return (
        <div
            className={cn(
                "glass-panel rounded-xl p-6 transition-all duration-300",
                hoverEffect && "glass-panel-hover hover:-translate-y-1 hover:shadow-neon",
                className
            )}
            {...props}
        >
            {children}
        </div>
    )
}
