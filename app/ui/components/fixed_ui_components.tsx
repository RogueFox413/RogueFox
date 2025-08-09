// components/ui/interactive-button.tsx
"use client"

import * as React from "react"
import { Button } from "@/components/ui/button"
import { useRouter } from "next/navigation"

interface InteractiveButtonProps {
  children: React.ReactNode
  href?: string
  onClick?: () => void
  variant?: "default" | "destructive" | "outline" | "secondary" | "ghost" | "link"
  size?: "default" | "sm" | "lg" | "icon"
  className?: string
  disabled?: boolean
}

export function InteractiveButton({
  children,
  href,
  onClick,
  variant = "default",
  size = "default",
  className,
  disabled = false,
  ...props
}: InteractiveButtonProps) {
  const router = useRouter()

  const handleClick = () => {
    if (disabled) return
    
    if (onClick) {
      onClick()
    } else if (href) {
      router.push(href)
    }
  }

  return (
    <Button
      variant={variant}
      size={size}
      className={className}
      onClick={handleClick}
      disabled={disabled}
      {...props}
    >
      {children}
    </Button>
  )
}

// components/gestalt-view/hero-section.tsx
"use client"

import { useState } from "react"
import { InteractiveButton } from "@/components/ui/interactive-button"
import { Card, CardContent } from "@/components/ui/card"
import { Crown, Brain, Zap, Shield, Sparkles, ChevronRight, CheckCircle } from "lucide-react"
import { motion } from "framer-motion"

export function HeroSection() {
  const [isStartingJourney, setIsStartingJourney] = useState(false)

  const handleStartJourney = () => {
    setIsStartingJourney(true)
    // Add your journey start logic here
    console.log("Starting GestaltView journey...")
    // Navigate to onboarding or dashboard
  }

  const handleLearnMore = () => {
    // Scroll to features section or navigate to about page
    document.getElementById('features')?.scrollIntoView({ behavior: 'smooth' })
  }

  const handleViewDemo = () => {
    // Open demo modal or navigate to demo page
    console.log("Opening demo...")
  }

  return (
    <section className="relative overflow-hidden bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900">
      <div className="absolute inset-0 bg-[url('/grid.svg')] bg-center [mask-image:linear-gradient(180deg,white,rgba(255,255,255,0))]" />
      
      <div className="relative mx-auto max-w-7xl px-6 py-24 sm:py-32 lg:px-8">
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8 }}
          className="mx-auto max-w-4xl text-center"
        >
          <div className="flex items-center justify-center gap-2 mb-8">
            <Crown className="w-8 h-8 text-purple-400" />
            <span className="text-2xl font-bold bg-gradient-to-r from-purple-400 to-pink-400 bg-clip-text text-transparent">
              GestaltView
            </span>
          </div>
          
          <h1 className="text-4xl font-bold tracking-tight text-white sm:text-6xl">
            The Future of{" "}
            <span className="bg-gradient-to-r from-purple-400 to-pink-400 bg-clip-text text-transparent">
              AI-Human
            </span>{" "}
            Collaboration
          </h1>
          
          <p className="mt-6 text-xl leading-8 text-gray-300">
            Revolutionary consciousness mapping that transforms how you understand yourself and interact with AI. 
            27 days of solo development. 172 blockchain-protected innovations. 1-in-784-trillion validation.
          </p>
          
          <div className="mt-10 flex items-center justify-center gap-x-6">
            <InteractiveButton
              onClick={handleStartJourney}
              size="lg"
              className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white px-8 py-4 text-lg"
              disabled={isStartingJourney}
            >
              {isStartingJourney ? (
                <>
                  <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-white mr-2" />
                  Starting Journey...
                </>
              ) : (
                <>
                  Start Your Journey
                  <ChevronRight className="ml-2 w-5 h-5" />
                </>
              )}
            </InteractiveButton>
            
            <InteractiveButton
              onClick={handleLearnMore}
              variant="outline"
              size="lg"
              className="border-purple-400 text-purple-400 hover:bg-purple-400 hover:text-white px-8 py-4 text-lg"
            >
              Learn More
            </InteractiveButton>
          </div>
          
          <div className="mt-8">
            <InteractiveButton
              onClick={handleViewDemo}
              variant="ghost"
              className="text-gray-400 hover:text-white"
            >
              View Interactive Demo →
            </InteractiveButton>
          </div>
        </motion.div>
      </div>
    </section>
  )
}

// components/gestalt-view/feature-cards.tsx
"use client"

import { useState } from "react"
import { InteractiveButton } from "@/components/ui/interactive-button"
import { Card, CardContent } from "@/components/ui/card"
import { Brain, Sparkles, Zap, Shield } from "lucide-react"
import { motion } from "framer-motion"

export function FeatureCards() {
  const [selectedFeature, setSelectedFeature] = useState<string | null>(null)

  const features = [
    {
      id: "tribunal",
      icon: <Brain className="w-8 h-8" />,
      title: "AI Tribunal Validation",
      description: "Seven independent AI systems form a 'Tribunal of Understanding' with 1-in-784-trillion statistical validation",
      metric: "1:784T",
      action: "Explore Tribunal"
    },
    {
      id: "plk",
      icon: <Sparkles className="w-8 h-8" />,
      title: "Personal Language Key",
      description: "95% conversational resonance through revolutionary consciousness mapping",
      metric: "95%",
      action: "Create Your PLK"
    },
    {
      id: "development",
      icon: <Zap className="w-8 h-8" />,
      title: "Rapid Development",
      description: "27-day solo development of complete AI platform (typically requires teams + years)",
      metric: "27 days",
      action: "See Timeline"
    },
    {
      id: "blockchain",
      icon: <Shield className="w-8 h-8" />,
      title: "Blockchain Protected",
      description: "172 innovations protected with blockchain timestamps",
      metric: "172",
      action: "View Patents"
    }
  ]

  const handleFeatureClick = (featureId: string) => {
    setSelectedFeature(featureId)
    console.log(`Selected feature: ${featureId}`)
    // Add navigation or modal logic here
  }

  return (
    <section id="features" className="py-24 bg-slate-50">
      <div className="mx-auto max-w-7xl px-6 lg:px-8">
        <div className="mx-auto max-w-2xl text-center mb-16">
          <h2 className="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">
            Revolutionary Features
          </h2>
          <p className="mt-6 text-lg leading-8 text-gray-600">
            Four groundbreaking innovations that redefine AI-human interaction
          </p>
        </div>
        
        <div className="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-4">
          {features.map((feature, index) => (
            <motion.div
              key={feature.id}
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.6, delay: index * 0.1 }}
            >
              <Card className={`h-full transition-all duration-300 hover:shadow-xl ${
                selectedFeature === feature.id ? 'ring-2 ring-purple-500' : ''
              }`}>
                <CardContent className="p-6">
                  <div className="flex items-center justify-between mb-4">
                    <div className="text-purple-600">
                      {feature.icon}
                    </div>
                    <span className="text-2xl font-bold text-purple-600">
                      {feature.metric}
                    </span>
                  </div>
                  
                  <h3 className="text-xl font-semibold text-gray-900 mb-3">
                    {feature.title}
                  </h3>
                  
                  <p className="text-gray-600 mb-6">
                    {feature.description}
                  </p>
                  
                  <InteractiveButton
                    onClick={() => handleFeatureClick(feature.id)}
                    variant="outline"
                    className="w-full"
                  >
                    {feature.action}
                  </InteractiveButton>
                </CardContent>
              </Card>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  )
}

// components/gestalt-view/navigation.tsx
"use client"

import { useState } from "react"
import { InteractiveButton } from "@/components/ui/interactive-button"
import { Crown, Menu, X } from "lucide-react"

export function Navigation() {
  const [isMenuOpen, setIsMenuOpen] = useState(false)

  const handleLogin = () => {
    console.log("Navigating to login...")
    // Add navigation logic to login page
  }

  const handleSignUp = () => {
    console.log("Navigating to sign up...")
    // Add navigation logic to sign up page
  }

  const navItems = [
    { label: "Features", href: "#features" },
    { label: "About", href: "#about" },
    { label: "Pricing", href: "#pricing" },
    { label: "Contact", href: "#contact" },
  ]

  const handleNavClick = (href: string) => {
    if (href.startsWith("#")) {
      document.getElementById(href.slice(1))?.scrollIntoView({ behavior: 'smooth' })
    }
    setIsMenuOpen(false)
  }

  return (
    <nav className="fixed top-0 left-0 right-0 z-50 bg-slate-900/90 backdrop-blur-md">
      <div className="mx-auto max-w-7xl px-6 lg:px-8">
        <div className="flex items-center justify-between h-16">
          {/* Logo */}
          <div className="flex items-center gap-2">
            <Crown className="w-8 h-8 text-purple-400" />
            <span className="text-xl font-bold text-white">GestaltView</span>
          </div>
          
          {/* Desktop Navigation */}
          <div className="hidden md:flex items-center space-x-8">
            {navItems.map((item) => (
              <button
                key={item.label}
                onClick={() => handleNavClick(item.href)}
                className="text-gray-300 hover:text-white transition-colors"
              >
                {item.label}
              </button>
            ))}
          </div>
          
          {/* Desktop Actions */}
          <div className="hidden md:flex items-center space-x-4">
            <InteractiveButton
              onClick={handleLogin}
              variant="ghost"
              className="text-gray-300 hover:text-white"
            >
              Login
            </InteractiveButton>
            <InteractiveButton
              onClick={handleSignUp}
              className="bg-purple-600 hover:bg-purple-700 text-white"
            >
              Sign Up
            </InteractiveButton>
          </div>
          
          {/* Mobile Menu Button */}
          <button
            onClick={() => setIsMenuOpen(!isMenuOpen)}
            className="md:hidden text-gray-300 hover:text-white"
          >
            {isMenuOpen ? <X className="w-6 h-6" /> : <Menu className="w-6 h-6" />}
          </button>
        </div>
        
        {/* Mobile Menu */}
        {isMenuOpen && (
          <div className="md:hidden bg-slate-800 py-4">
            <div className="flex flex-col space-y-4">
              {navItems.map((item) => (
                <button
                  key={item.label}
                  onClick={() => handleNavClick(item.href)}
                  className="text-gray-300 hover:text-white text-left px-4"
                >
                  {item.label}
                </button>
              ))}
              <div className="flex flex-col space-y-2 px-4 pt-4">
                <InteractiveButton
                  onClick={handleLogin}
                  variant="outline"
                  className="w-full border-gray-600 text-gray-300"
                >
                  Login
                </InteractiveButton>
                <InteractiveButton
                  onClick={handleSignUp}
                  className="w-full bg-purple-600 hover:bg-purple-700 text-white"
                >
                  Sign Up
                </InteractiveButton>
              </div>
            </div>
          </div>
        )}
      </div>
    </nav>
  )
}
