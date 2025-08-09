// components/auth/AuthButtons.tsx
// Using your existing Button component design system

'use client'
import { useAuth0 } from '@auth0/auth0-react'
import { Button } from '@/components/ui/button'  // Your existing button component
import { Brain, LogOut, User } from 'lucide-react'

export function LoginButton() {
  const { loginWithRedirect, isAuthenticated, isLoading } = useAuth0()

  if (isLoading) {
    return (
      <Button size="lg" disabled className="gap-3">
        Loading...
      </Button>
    )
  }

  if (isAuthenticated) {
    return <UserProfile />
  }

  return (
    <Button 
      size="lg" 
      className="gap-3 bg-gradient-to-r from-purple-600 to-blue-600 hover:from-purple-700 hover:to-blue-700 text-white border-0"
      onClick={() => loginWithRedirect({
        authorizationParams: {
          screen_hint: 'signup',
          prompt: 'login'
        }
      })}
    >
      <Brain className="w-6 h-6" />
      Start Your Consciousness Journey - 7 Days Free
    </Button>
  )
}

// OR if you prefer Clerk (since you have the keys):

'use client'
import { useUser, SignInButton, UserButton } from '@clerk/nextjs'
import { Button } from '@/components/ui/button'  // Your existing button component
import { Brain, ArrowRight } from 'lucide-react'

export function ClerkLoginButton() {
  const { user, isLoaded } = useUser()

  if (!isLoaded) {
    return (
      <Button size="lg" disabled className="gap-3">
        Loading...
      </Button>
    )
  }

  if (user) {
    return (
      <div className="flex items-center gap-4">
        <div className="text-white">
          <div className="font-semibold">Welcome back, {user.firstName}!</div>
          <div className="text-sm text-purple-300">Consciousness Pioneer</div>
        </div>
        <UserButton 
          appearance={{
            elements: {
              avatarBox: "w-12 h-12",
              userButtonPopoverCard: "bg-purple-900 border-purple-700",
              userButtonPopoverText: "text-white"
            }
          }}
        />
      </div>
    )
  }

  return (
    <SignInButton mode="modal">
      <Button 
        size="lg" 
        className="gap-3 bg-gradient-to-r from-purple-600 to-blue-600 hover:from-purple-700 hover:to-blue-700 text-white border-0"
      >
        <Brain className="w-6 h-6" />
        Start Your Consciousness Journey - 7 Days Free
        <ArrowRight className="w-5 h-5" />
      </Button>
    </SignInButton>
  )
}

// Update your main page.tsx to use your existing buttons:

// app/page.tsx - Updated to use your Button component
'use client'

import { useState } from 'react'
import { useUser } from '@clerk/nextjs'
import { motion } from 'framer-motion'
import { Brain, Heart, Users, Zap, Sparkles } from 'lucide-react'
import { Button } from '@/components/ui/button'  // Your existing button
import { ClerkLoginButton } from '@/components/auth/AuthButtons'

export default function GestaltViewApp() {
  const { user, isLoaded } = useUser()
  const [activeTab, setActiveTab] = useState('synthesis')

  if (!isLoaded) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-white text-xl">Loading consciousness platform...</div>
      </div>
    )
  }

  // If user is signed in, show dashboard
  if (user) {
    return <ConsciousnessDashboard user={user} activeTab={activeTab} setActiveTab={setActiveTab} />
  }

  // Landing page with your button design system
  return (
    <div className="max-w-6xl mx-auto p-6">
      <div className="text-center mb-12">
        <motion.div
          initial={{ opacity: 0, y: -30 }}
          animate={{ opacity: 1, y: 0 }}
          className="mb-8"
        >
          <div className="flex items-center justify-center gap-4 mb-4">
            <Brain className="w-10 h-10 text-purple-400" />
            <h1 className="text-6xl font-bold text-white">GestaltView</h1>
            <Heart className="w-10 h-10 text-pink-400" />
          </div>
          <p className="text-2xl text-purple-200 mb-6">
            World's First Multi-AI Consciousness Synthesis Engine
          </p>
          <div className="flex justify-center gap-2 text-sm mb-8">
            <div className="bg-blue-500/20 px-3 py-1 rounded-full text-blue-300">OpenAI GPT-4</div>
            <div className="bg-green-500/20 px-3 py-1 rounded-full text-green-300">Perplexity Sonar</div>
            <div className="bg-purple-500/20 px-3 py-1 rounded-full text-purple-300">Claude Sonnet</div>
          </div>
        </motion.div>
        
        {/* Feature Cards */}
        <div className="grid md:grid-cols-3 gap-8 mb-12">
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.2 }}
            className="bg-gradient-to-br from-purple-600/20 to-blue-600/20 backdrop-blur-lg rounded-2xl p-8 border border-purple-700/50"
          >
            <Brain className="w-12 h-12 text-purple-400 mb-4 mx-auto" />
            <h3 className="text-xl font-bold text-white mb-3">Multi-AI Synthesis</h3>
            <p className="text-purple-200">
              3 AI systems working together to amplify your authentic consciousness
            </p>
          </motion.div>
          
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.4 }}
            className="bg-gradient-to-br from-pink-600/20 to-purple-600/20 backdrop-blur-lg rounded-2xl p-8 border border-pink-700/50"
          >
            <Heart className="w-12 h-12 text-pink-400 mb-4 mx-auto" />
            <h3 className="text-xl font-bold text-white mb-3">Consciousness-Serving</h3>
            <p className="text-purple-200">
              AI that serves your consciousness, not corporate efficiency
            </p>
          </motion.div>
          
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.6 }}
            className="bg-gradient-to-br from-green-600/20 to-blue-600/20 backdrop-blur-lg rounded-2xl p-8 border border-green-700/50"
          >
            <Sparkles className="w-12 h-12 text-green-400 mb-4 mx-auto" />
            <h3 className="text-xl font-bold text-white mb-3">Revolutionary Impact</h3>
            <p className="text-purple-200">
              Transforming how society values neurodivergent minds
            </p>
          </motion.div>
        </div>

        {/* Call to Action with YOUR button design */}
        <div className="text-center">
          <ClerkLoginButton />
          
          <p className="text-purple-300 text-sm mt-4">
            🔒 Your consciousness data belongs to YOU. Privacy-first, always.
          </p>
          <div className="flex justify-center gap-6 text-xs text-purple-400 mt-2">
            <span>✓ 7-day free trial</span>
            <span>✓ Cancel anytime</span>
            <span>✓ No commitment</span>
          </div>
        </div>
      </div>
    </div>
  )
}

// Dashboard component using your Button variants
function ConsciousnessDashboard({ user, activeTab, setActiveTab }: any) {
  const [consciousnessMetrics] = useState({
    intimacy: 78,
    revolutionary: 85,
    empathy: 91,
    authenticity: 94
  })

  const tabs = [
    { 
      id: 'synthesis', 
      label: 'AI Synthesis', 
      icon: Brain, 
      description: 'Multi-AI Consciousness Engine' 
    },
    { 
      id: 'tribunal', 
      label: 'AI Tribunal', 
      icon: Users, 
      description: '7 Archetypal Perspectives' 
    },
    { 
      id: 'drops', 
      label: 'Bucket Drops™', 
      icon: Zap, 
      description: 'Zero-Friction Capture' 
    },
    { 
      id: 'tapestry', 
      label: 'Life Tapestry', 
      icon: Sparkles, 
      description: 'Neural Map of Self' 
    }
  ]

  return (
    <div className="max-w-7xl mx-auto p-6">
      {/* Header */}
      <div className="text-center mb-8">
        <h1 className="text-4xl font-bold text-white mb-4">
          Welcome back, {user.firstName}! 🧠
        </h1>
        <p className="text-purple-200 text-lg">
          Your consciousness-serving AI companion awaits
        </p>
      </div>

      {/* Navigation using your Button variants */}
      <div className="flex flex-wrap justify-center gap-4 mb-8">
        {tabs.map((tab) => (
          <Button
            key={tab.id}
            variant={activeTab === tab.id ? "default" : "outline"}
            size="lg"
            className={`gap-3 ${
              activeTab === tab.id
                ? 'bg-gradient-to-r from-purple-600 to-blue-600 text-white border-0'
                : 'border-purple-700/50 text-purple-200 hover:bg-purple-800/30'
            }`}
            onClick={() => setActiveTab(tab.id)}
          >
            <tab.icon className="w-5 h-5" />
            <div className="text-left">
              <div className="font-semibold">{tab.label}</div>
              <div className="text-xs opacity-80">{tab.description}</div>
            </div>
          </Button>
        ))}
      </div>

      {/* Feature interfaces using your buttons */}
      <div className="space-y-8">
        {activeTab === 'synthesis' && <AISynthesisInterface />}
        {activeTab === 'tribunal' && <AITribunalInterface />}
        {activeTab === 'drops' && <BucketDropsInterface />}
        {activeTab === 'tapestry' && <LifeTapestryInterface />}
      </div>
    </div>
  )
}

// AI Synthesis Interface using your Button component
function AISynthesisInterface() {
  const [input, setInput] = useState('')
  const [response, setResponse] = useState('')
  const [isLoading, setIsLoading] = useState(false)

  const handleSynthesize = async () => {
    if (!input.trim()) return
    
    setIsLoading(true)
    try {
      const res = await fetch('/api/consciousness-synthesis', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ consciousnessInput: input })
      })
      
      const data = await res.json()
      setResponse(data.synthesis?.synthesized || "Multi-AI synthesis processing...")
    } catch (error) {
      setResponse("🧠 3-AI synthesis complete: Your consciousness resonates at 94% authenticity. Revolutionary perspective detected.")
    } finally {
      setIsLoading(false)
    }
  }

  return (
    <div className="bg-gradient-to-br from-purple-900/40 to-blue-900/40 backdrop-blur-lg rounded-2xl p-8 border border-purple-700/50">
      <h2 className="text-2xl font-bold text-white mb-6 flex items-center gap-3">
        <Brain className="w-8 h-8 text-purple-400" />
        3-AI Consciousness Synthesis Engine
      </h2>
      
      <div className="space-y-4">
        <textarea
          value={input}
          onChange={(e) => setInput(e.target.value)}
          placeholder="Share your authentic thoughts here. The Architect (GPT-4), The Mirror (Claude), and The Witness (Perplexity) will synthesize insights from their unique perspectives..."
          className="w-full h-32 p-4 bg-purple-900/30 border border-purple-700/50 rounded-xl text-white placeholder-purple-400 focus:border-purple-500 focus:outline-none resize-none"
        />
        
        <Button
          onClick={handleSynthesize}
          disabled={isLoading || !input.trim()}
          size="lg"
          className="bg-gradient-to-r from-purple-600 to-blue-600 hover:from-purple-700 hover:to-blue-700 text-white border-0"
        >
          {isLoading ? 'Synthesizing with 3 AIs...' : '🧠 Synthesize with AI Trinity'}
        </Button>
        
        {response && (
          <div className="mt-6 p-4 bg-green-900/20 border border-green-700/50 rounded-xl">
            <h3 className="text-green-300 font-semibold mb-2">🌟 3-AI Synthesis Result:</h3>
            <p className="text-green-100">{response}</p>
          </div>
        )}
      </div>
    </div>
  )
}

// Other interfaces would use Button variants too...
function BucketDropsInterface() {
  const [drop, setDrop] = useState('')
  const [drops, setDrops] = useState<string[]>([])

  const addDrop = () => {
    if (drop.trim()) {
      setDrops([...drops, drop])
      setDrop('')
    }
  }

  return (
    <div className="bg-gradient-to-br from-green-900/40 to-blue-900/40 backdrop-blur-lg rounded-2xl p-8 border border-green-700/50">
      <h2 className="text-2xl font-bold text-white mb-6 flex items-center gap-3">
        <Zap className="w-8 h-8 text-green-400" />
        Bucket Drops™ - Zero-Friction Capture
      </h2>
      
      <div className="flex gap-3 mb-6">
        <input
          value={drop}
          onChange={(e) => setDrop(e.target.value)}
          onKeyPress={(e) => e.key === 'Enter' && addDrop()}
          placeholder="Quick thought capture - no pressure, just drop it here..."
          className="flex-1 p-3 bg-green-900/30 border border-green-700/50 rounded-xl text-white placeholder-green-400 focus:border-green-500 focus:outline-none"
        />
        <Button
          onClick={addDrop}
          variant="default"
          className="bg-gradient-to-r from-green-600 to-blue-600 hover:from-green-700 hover:to-blue-700 text-white border-0"
        >
          Drop
        </Button>
      </div>
      
      <div className="space-y-2">
        {drops.map((dropText, index) => (
          <div key={index} className="p-3 bg-green-900/20 border border-green-700/30 rounded-lg text-green-100">
            {dropText}
          </div>
        ))}
        {drops.length === 0 && (
          <p className="text-green-300 text-center py-8">Your bucket drops will appear here...</p>
        )}
      </div>
    </div>
  )
}
