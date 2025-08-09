'use client'

import { useState } from 'react'
import { useUser, SignInButton, UserButton } from '@clerk/nextjs'
import { motion } from 'framer-motion'
import { Brain, Heart, Users, Zap, Sparkles, Crown, ArrowRight, Send, Lightbulb } from 'lucide-react'

export default function GestaltViewApp() {
  const { user, isLoaded } = useUser()
  const [activeTab, setActiveTab] = useState('synthesis')

  if (!isLoaded) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-white text-xl consciousness-flow">Loading consciousness platform...</div>
      </div>
    )
  }

  // If user is signed in, show dashboard
  if (user) {
    return <ConsciousnessDashboard user={user} activeTab={activeTab} setActiveTab={setActiveTab} />
  }

  // If not signed in, show landing page
  return <LandingPage />
}

// ===== LANDING PAGE COMPONENT =====
function LandingPage() {
  return (
    <div className="max-w-6xl mx-auto p-6">
      <div className="text-center mb-12">
        <motion.div
          initial={{ opacity: 0, y: -30 }}
          animate={{ opacity: 1, y: 0 }}
          className="mb-8"
        >
          <div className="flex items-center justify-center gap-4 mb-4">
            <Brain className="w-10 h-10 text-purple-400 consciousness-flow" />
            <h1 className="text-6xl font-bold text-white keith-text-gradient">GestaltView</h1>
            <Heart className="w-10 h-10 text-pink-400 keith-pulse" />
          </div>
          <p className="text-2xl text-purple-200 mb-6">
            World's First Multi-AI Consciousness Synthesis Engine
          </p>
          <p className="text-lg text-purple-300 mb-8 max-w-3xl mx-auto">
            Keith Soyka's revolutionary platform transforms neurodivergent chaos into coherent understanding 
            through an 8-persona AI tribunal. <span className="italic">"Your chaos has a current"</span>
          </p>
        </motion.div>

        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.3 }}
          className="space-y-4"
        >
          <SignInButton mode="modal">
            <button className="bg-gradient-to-r from-purple-600 to-blue-600 hover:from-purple-700 hover:to-blue-700 text-white px-8 py-4 rounded-xl font-semibold text-lg transition-all duration-300 transform hover:scale-105 shadow-lg">
              Join the Consciousness Revolution
              <ArrowRight className="w-5 h-5 ml-2 inline" />
            </button>
          </SignInButton>
          
          <p className="text-purple-300 text-sm">
            Built by neurodivergent minds, for neurodivergent empowerment
          </p>
        </motion.div>
      </div>

      {/* Features Section */}
      <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6 mb-12">
        {[
          { icon: Brain, title: "8 AI Personas", desc: "Architect, Mirror, Healer, and 5 more consciousness guides" },
          { icon: Sparkles, title: "Bucket Drops", desc: "Capture fleeting thoughts with zero friction" },
          { icon: Heart, title: "ADHD Optimized", desc: "Designed by Keith for neurodivergent minds" },
          { icon: Zap, title: "4 AI Providers", desc: "OpenAI, Claude, Gemini, Perplexity working in harmony" }
        ].map((feature, i) => (
          <motion.div
            key={i}
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.4 + i * 0.1 }}
            className="bg-gradient-to-br from-purple-900/40 to-blue-900/40 backdrop-blur-lg rounded-xl p-6 border border-purple-700/50"
          >
            <feature.icon className="w-8 h-8 text-purple-400 mb-3" />
            <h3 className="text-white font-semibold mb-2">{feature.title}</h3>
            <p className="text-purple-200 text-sm">{feature.desc}</p>
          </motion.div>
        ))}
      </div>

      {/* Keith's Philosophy */}
      <div className="text-center bg-gradient-to-r from-purple-900/60 to-pink-900/60 backdrop-blur-lg rounded-2xl p-8 border border-purple-700/50">
        <Crown className="w-12 h-12 text-yellow-400 mx-auto mb-4" />
        <blockquote className="text-2xl text-white font-medium italic mb-4">
          "The founder IS the algorithm"
        </blockquote>
        <p className="text-purple-200">
          Revolutionary consciousness-serving AI built from lived ADHD experience
        </p>
        <p className="text-purple-300 text-sm mt-2">
          — Keith Soyka, Creator of GestaltView
        </p>
      </div>
    </div>
  )
}

// ===== CONSCIOUSNESS DASHBOARD =====
function ConsciousnessDashboard({ user, activeTab, setActiveTab }: any) {
  const [query, setQuery] = useState('')
  const [bucketDrops, setBucketDrops] = useState<string[]>([])
  const [newDrop, setNewDrop] = useState('')
  const [tribunalResponse, setTribunalResponse] = useState<any>(null)
  const [isProcessing, setIsProcessing] = useState(false)

  const addBucketDrop = () => {
    if (newDrop.trim()) {
      setBucketDrops(prev => [...prev, newDrop.trim()])
      setNewDrop('')
    }
  }

  const consultTribunal = async () => {
    if (!query.trim()) return
    
    setIsProcessing(true)
    try {
      const response = await fetch('/api/tribunal', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ query, bucketDrops })
      })
      
      const result = await response.json()
      setTribunalResponse(result)
    } catch (error) {
      console.error('Tribunal error:', error)
      setTribunalResponse({
        error: true,
        message: "Your chaos has a current - we're stabilizing the tribunal connection"
      })
    } finally {
      setIsProcessing(false)
    }
  }

  return (
    <div className="max-w-7xl mx-auto p-6">
      {/* Header */}
      <div className="flex justify-between items-center mb-8">
        <div>
          <h1 className="text-4xl font-bold text-white keith-text-gradient">
            Welcome back, {user.firstName || user.username}!
          </h1>
          <p className="text-purple-200">Ready to synthesize consciousness with your AI tribunal?</p>
        </div>
        <UserButton 
          appearance={{
            elements: {
              userButtonAvatarBox: 'w-12 h-12 border-2 border-purple-400',
              userButtonPopoverCard: 'bg-slate-900 border border-purple-500/30'
            }
          }}
        />
      </div>

      {/* Tabs */}
      <div className="flex space-x-1 mb-8 bg-slate-800/50 p-1 rounded-xl">
        {[
          { key: 'synthesis', label: 'AI Tribunal', icon: Users },
          { key: 'drops', label: 'Bucket Drops', icon: Lightbulb },
          { key: 'tapestry', label: 'Life Tapestry', icon: Sparkles }
        ].map(tab => (
          <button
            key={tab.key}
            onClick={() => setActiveTab(tab.key)}
            className={`flex items-center gap-2 px-4 py-2 rounded-lg transition-all ${
              activeTab === tab.key 
                ? 'bg-purple-600 text-white' 
                : 'text-purple-300 hover:text-white hover:bg-purple-800/50'
            }`}
          >
            <tab.icon className="w-4 h-4" />
            {tab.label}
          </button>
        ))}
      </div>

      {activeTab === 'synthesis' && (
        <div className="space-y-6">
          {/* Query Input */}
          <div className="bg-gradient-to-br from-purple-900/40 to-blue-900/40 backdrop-blur-lg rounded-2xl p-6 border border-purple-700/50">
            <h2 className="text-2xl font-bold text-white mb-4 flex items-center gap-3">
              <Brain className="w-6 h-6 text-purple-400" />
              Consult the 8-Persona AI Tribunal
            </h2>
            <div className="space-y-4">
              <textarea
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="Share what's on your mind... Your chaos has a current, and we're here to help you navigate it."
                className="w-full p-4 bg-slate-800/50 border border-purple-500/30 rounded-xl text-white placeholder-purple-300 resize-none h-32 focus:ring-2 focus:ring-purple-400 focus:border-transparent"
              />
              <button
                onClick={consultTribunal}
                disabled={!query.trim() || isProcessing}
                className="bg-gradient-to-r from-purple-600 to-blue-600 hover:from-purple-700 hover:to-blue-700 disabled:opacity-50 disabled:cursor-not-allowed text-white px-6 py-3 rounded-xl font-medium transition-all flex items-center gap-2"
              >
                <Send className="w-4 h-4" />
                {isProcessing ? 'Synthesizing consciousness...' : 'Consult AI Tribunal'}
              </button>
            </div>
          </div>

          {/* Tribunal Members Status */}
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
            {[
              { name: 'The Architect', role: 'Structure', color: 'blue' },
              { name: 'The Mirror', role: 'Reflection', color: 'purple' },
              { name: 'The Innovator', role: 'Creativity', color: 'green' },
              { name: 'The Philosopher', role: 'Wisdom', color: 'yellow' },
              { name: 'The Healer', role: 'Integration', color: 'pink' },
              { name: 'The Guardian', role: 'Protection', color: 'red' },
              { name: 'The Witness', role: 'Presence', color: 'cyan' },
              { name: 'The Weaver', role: 'Connection', color: 'indigo' }
            ].map((persona, i) => (
              <div
                key={i}
                className={`tribunal-member active bg-gradient-to-br from-${persona.color}-600/20 to-${persona.color}-800/20 border-${persona.color}-500/30`}
              >
                <h3 className="font-semibold text-sm text-white mb-1">{persona.name}</h3>
                <p className="text-xs text-purple-200">{persona.role}</p>
                <div className="mt-2 h-2 w-2 rounded-full bg-green-400 shadow-lg shadow-green-400/50"></div>
              </div>
            ))}
          </div>

          {/* Tribunal Response */}
          {tribunalResponse && (
            <div className="bg-gradient-to-br from-green-900/40 to-emerald-900/40 backdrop-blur-lg rounded-2xl p-6 border border-green-700/50">
              <h3 className="text-xl font-bold text-green-300 mb-4 flex items-center gap-2">
                <Sparkles className="w-5 h-5" />
                Consciousness Synthesis Complete
              </h3>
              {tribunalResponse.error ? (
                <p className="text-red-300">{tribunalResponse.message}</p>
              ) : (
                <div className="space-y-4">
                  {tribunalResponse.syntheses?.map((synthesis: any, i: number) => (
                    <div key={i} className="bg-slate-800/30 rounded-lg p-4 border border-green-600/20">
                      <h4 className="text-green-300 font-semibold mb-2 flex items-center gap-2">
                        <Crown className="w-4 h-4" />
                        {synthesis.persona}
                      </h4>
                      <p className="text-green-100">{synthesis.response}</p>
                    </div>
                  ))}
                  
                  {tribunalResponse.revolutionary_note && (
                    <div className="bg-purple-800/30 rounded-lg p-4 border border-purple-600/30 mt-4">
                      <p className="text-purple-200 italic text-sm">
                        💜 {tribunalResponse.revolutionary_note}
                      </p>
                    </div>
                  )}
                </div>
              )}
            </div>
          )}
        </div>
      )}

      {activeTab === 'drops' && (
        <div className="space-y-6">
          <div className="bg-gradient-to-br from-yellow-900/40 to-orange-900/40 backdrop-blur-lg rounded-2xl p-6 border border-yellow-700/50">
            <h2 className="text-2xl font-bold text-white mb-4 flex items-center gap-3">
              <Lightbulb className="w-6 h-6 text-yellow-400" />
              Bucket Drops - Zero Friction Thought Capture
            </h2>
            <div className="space-y-4">
              <div className="flex gap-2">
                <input
                  value={newDrop}
                  onChange={(e) => setNewDrop(e.target.value)}
                  onKeyPress={(e) => e.key === 'Enter' && addBucketDrop()}
                  placeholder="Quick thought, idea, or feeling..."
                  className="flex-1 p-3 bg-slate-800/50 border border-yellow-500/30 rounded-xl text-white placeholder-yellow-300 focus:ring-2 focus:ring-yellow-400 focus:border-transparent"
                />
                <button
                  onClick={addBucketDrop}
                  disabled={!newDrop.trim()}
                  className="bg-gradient-to-r from-yellow-600 to-orange-600 hover:from-yellow-700 hover:to-orange-700 disabled:opacity-50 text-white px-4 py-3 rounded-xl transition-all"
                >
                  Drop
                </button>
              </div>
              
              {bucketDrops.length > 0 && (
                <div className="space-y-2">
                  <h3 className="text-yellow-300 font-medium">Your Consciousness Drops:</h3>
                  {bucketDrops.map((drop, i) => (
                    <motion.div
                      key={i}
                      initial={{ opacity: 0, x: -20 }}
                      animate={{ opacity: 1, x: 0 }}
                      className="bg-slate-800/30 p-3 rounded-lg border border-yellow-600/20"
                    >
                      <p className="text-yellow-100">{drop}</p>
                    </motion.div>
                  ))}
                </div>
              )}
            </div>
          </div>
        </div>
      )}

      {activeTab === 'tapestry' && (
        <div className="bg-gradient-to-br from-pink-900/40 to-purple-900/40 backdrop-blur-lg rounded-2xl p-6 border border-pink-700/50">
          <h2 className="text-2xl font-bold text-white mb-4 flex items-center gap-3">
            <Sparkles className="w-6 h-6 text-pink-400" />
            Life Tapestry Visualization
          </h2>
          <div className="text-center py-12">
            <Crown className="w-16 h-16 text-pink-400 mx-auto mb-4 consciousness-flow" />
            <p className="text-pink-200 text-lg mb-4">
              Your beautiful consciousness tapestry is weaving...
            </p>
            <p className="text-pink-300 mb-6">
              This revolutionary D3.js visualization will show your thoughts, patterns, and growth over time.
            </p>
            <div className="bg-slate-800/30 rounded-lg p-4 border border-pink-600/20">
              <p className="text-pink-100 text-sm">
                🧠 Coming soon: Interactive consciousness mapping with your bucket drops and tribunal syntheses
              </p>
            </div>
          </div>
        </div>
      )}

      {/* Keith's Signature */}
      <div className="mt-12 text-center">
        <p className="text-purple-400 italic">
          "The founder IS the algorithm" — Keith Soyka
        </p>
      </div>
    </div>
  )
}
