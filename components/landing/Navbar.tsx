'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Leaf, Menu, X } from 'lucide-react';
import { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'framer-motion';

export function Navbar() {
    const pathname = usePathname();
    const [isScrolled, setIsScrolled] = useState(false);
    const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

    useEffect(() => {
        const handleScroll = () => {
            setIsScrolled(window.scrollY > 20);
        };
        window.addEventListener('scroll', handleScroll);
        return () => window.removeEventListener('scroll', handleScroll);
    }, []);

    const navLinks = [
        { name: 'Features', href: '/#features' },
        { name: 'Pricing', href: '/#pricing' },
        { name: 'Docs', href: '/docs' },
        { name: 'Playground', href: '/playground' },
    ];

    const handleScroll = (e: React.MouseEvent<HTMLAnchorElement, MouseEvent>, href: string) => {
        if (href.startsWith('/#')) {
            const targetId = href.replace('/#', '');
            const elem = document.getElementById(targetId);

            // If on homepage and element exists, smooth scroll
            if (pathname === '/' && elem) {
                e.preventDefault();
                elem.scrollIntoView({ behavior: 'smooth' });
            }
            // Otherwise let Next.js Link handle the navigation to /#id
        }
    };

    return (
        <>
            <nav
                className={`fixed top-0 left-0 right-0 z-50 transition-all duration-300 ${isScrolled ? 'bg-white/80 backdrop-blur-md shadow-sm py-4' : 'bg-transparent py-6'
                    }`}
            >
                <div className="max-w-7xl mx-auto px-6 lg:px-8 flex items-center justify-between">
                    {/* Logo */}
                    <div className="flex items-center gap-2">
                        <Link href="/" className="flex items-center gap-2">
                            <div className="bg-[#13ec13] p-1.5 rounded-lg">
                                <Leaf className="w-5 h-5 text-white fill-white" />
                            </div>
                            <span className="font-black text-xl tracking-tight text-gray-900">DiagAPI</span>
                        </Link>
                    </div>

                    {/* Desktop Nav */}
                    <div className="hidden md:flex items-center gap-8">
                        {navLinks.map((link) => (
                            <Link
                                key={link.name}
                                href={link.href}
                                className="text-sm font-bold text-gray-500 hover:text-gray-900 transition-colors"
                                onClick={(e) => handleScroll(e, link.href)}
                            >
                                {link.name}
                            </Link>
                        ))}
                    </div>

                    {/* CTAs */}
                    <div className="hidden md:flex items-center gap-4">
                        <Link
                            href="/login"
                            className="text-sm font-bold text-gray-900 hover:text-[#13ec13] transition-colors"
                        >
                            Login
                        </Link>
                        <Link
                            href="/signup"
                            className="bg-[#13ec13] hover:bg-[#0fb30f] text-white font-black px-5 py-2.5 rounded-lg shadow-lg shadow-green-500/20 transition-all text-sm transform hover:-translate-y-0.5"
                        >
                            Get API Access
                        </Link>
                    </div>

                    {/* Mobile Menu Button */}
                    <button
                        className="md:hidden p-2 text-gray-600"
                        onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
                    >
                        {mobileMenuOpen ? <X /> : <Menu />}
                    </button>
                </div>
            </nav>

            {/* Mobile Menu Overlay */}
            <AnimatePresence>
                {mobileMenuOpen && (
                    <motion.div
                        initial={{ opacity: 0, y: -20 }}
                        animate={{ opacity: 1, y: 0 }}
                        exit={{ opacity: 0, y: -20 }}
                        className="fixed inset-0 z-40 bg-white pt-24 px-6 md:hidden"
                    >
                        <div className="flex flex-col gap-6 text-center">
                            {navLinks.map((link) => (
                                <Link
                                    key={link.name}
                                    href={link.href}
                                    className="text-lg font-bold text-gray-800"
                                    onClick={(e) => {
                                        setMobileMenuOpen(false);
                                        handleScroll(e, link.href);
                                    }}
                                >
                                    {link.name}
                                </Link>
                            ))}
                            <hr className="border-gray-100 my-2" />
                            <Link
                                href="/login"
                                className="text-lg font-bold text-gray-800"
                                onClick={() => setMobileMenuOpen(false)}
                            >
                                Login
                            </Link>
                            <Link
                                href="/signup"
                                className="bg-[#13ec13] text-white font-black px-6 py-3 rounded-xl shadow-lg shadow-green-500/20 text-lg"
                                onClick={() => setMobileMenuOpen(false)}
                            >
                                Get API Access
                            </Link>
                        </div>
                    </motion.div>
                )}
            </AnimatePresence>
        </>
    );
}
