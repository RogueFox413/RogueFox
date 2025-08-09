"use client"

// 🧠 Keith's Revolutionary Consciousness Platform Landing Page
// "The founder IS the algorithm" - Clean, working homepage

import React, { useState } from 'react'
import { Brain, Heart, Lightbulb, Users, Shield, Sparkles, Music, Zap, Star } from 'lucide-react'

export default function GestaltViewHomepage() {
  const [tribunalQuery, setTribunalQuery] = useState('')
  const [isLoading, setIsLoading] = useState(false)
  const [tribunalResponse, setTribunalResponse] = useState(null)

  const testTribunal = async () => {
    if (!tribunalQuery.trim()) return
    
    setIsLoading(true)
    try {
      const response = await fetch('/api/tribunal', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          query: tribunalQuery,
          urgencyLevel: 4
        })
      })
      
      const data = await response.json()
      setTribunalResponse(data)
    } catch (error) {
      console.error('Tribunal test failed:', error)
      setTribunalResponse({ error: 'Connection failed - check if server is running' })
    } finally {
      setIsLoading(false)
    }
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-900 via-purple-900 to-pink-900">
      {/* Header */}
      <header className="bg-black/20 backdrop-blur-sm border-b border-white/10">
        <div className="max-w-7xl mx-auto px-4 py-6">
          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-3">
              <Brain className="w-8 h-8 text-purple-400" />
              <h1 className="text-2xl font-bold text-white">GestaltView</h1>
            </div>
            <div className="text-sm text-purple-300">
              The founder IS the algorithm
            </div>
          </div>
        </div>
      </header>

      {/* Hero Section */}
      <section className="max-w-7xl mx-auto px-4 py-16">
        <div className="text-center mb-16">
          <h2 className="text-5xl font-bold text-white mb-6">
            Revolutionary <span className="text-transparent bg-clip-text bg-gradient-to-r from-purple-400 to-pink-400">Consciousness</span> Platform
          </h2>
          <p className="text-xl text-gray-300 mb-4">
            ADHD is jazz, not noise. Your chaos has a current.
          </p>
          <p className="text-lg text-purple-300">
            Built by Keith Soyka • Consciousness-serving over profit-extracting
          </p>
        </div>

        {/* Live Tribunal Test */}
        <div className="max-w-4xl mx-auto mb-16">
          <div className="bg-black/30 backdrop-blur-sm border border-purple-500/30 rounded-2xl p-8">
            <h3 className="text-2xl font-bold text-white mb-6 flex items-center">
              <Zap className="w-6 h-6 text-yellow-400 mr-2" />
              Test the 8-Persona AI Tribunal LIVE
            </h3>
            
            <div className="space-y-4">
              <textarea
                value={tribunalQuery}
                onChange={(e) => setTribunalQuery(e.target.value)}
                placeholder="Share what's on your mind... (e.g., 'I just realized my ADHD hyperfocus is a superpower!')"
                className="w-full h-32 bg-black/40 border border-purple-500/50 rounded-lg px-4 py-3 text-white placeholder-gray-400 focus:outline-none focus:border-purple-400"
              />
              
              <button
                onClick={testTribunal}
                disabled={isLoading || !tribunalQuery.trim()}
                className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 disabled:opacity-50 text-white font-semibold px-8 py-3 rounded-lg transition-all duration-200"
              >
                {isLoading ? 'Summoning Tribunal...' : 'Validate My Consciousness'}
              </button>
            </div>

            {tribunalResponse && (
              <div className="mt-6 p-4 bg-green-900/20 border border-green-500/30 rounded-lg">
                <h4 className="text-green-400 font-semibold mb-2">
                  Tribunal Response:
                </h4>
                {tribunalResponse.error ? (
                  <p className="text-red-400">{tribunalResponse.error}</p>
                ) : (
                  <div className="space-y-3">
                    <p className="text-green-300">
                      <strong>Status:</strong> {tribunalResponse.status}
                    </p>
                    <p className="text-green-300">
                      <strong>Keith's Wisdom:</strong> "{tribunalResponse.keith_wisdom}"
                    </p>
                    <p className="text-green-300">
                      <strong>Personas Summoned:</strong> {tribunalResponse.session_metadata?.personas_summoned || 'N/A'}
                    </p>
                    {tribunalResponse.syntheses && tribunalResponse.syntheses.length > 0 && (
                      <div className="mt-4">
                        <p className="text-green-400 font-semibold">Sample Response:</p>
                        <p className="text-gray-300 italic">
                          "{tribunalResponse.syntheses[0].response.substring(0, 200)}..."
                        </p>
                      </div>
                    )}
                  </div>
                )}
              </div>
            )}
          </div>
        </div>

        {/* Features Grid */}
        <div className="grid md:grid-cols-3 gap-8 mb-16">
          <div className="bg-black/30 backdrop-blur-sm border border-blue-500/30 rounded-2xl p-6">
            <Brain className="w-12 h-12 text-blue-400 mb-4" />
            <h3 className="text-xl font-bold text-white mb-3">8-Persona AI Tribunal</h3>
            <p className="text-gray-300">
              Revolutionary consciousness validation through multiple AI perspectives. Your experience matters.
            </p>
          </div>

          <div className="bg-black/30 backdrop-blur-sm border border-purple-500/30 rounded-2xl p-6">
            <Heart className="w-12 h-12 text-purple-400 mb-4" />
            <h3 className="text-xl font-bold text-white mb-3">Personal Language Key</h3>
            <p className="text-gray-300">
              AI that learns your unique communication style and validates your neurodivergent perspective.
            </p>
          </div>

          <div className="bg-black/30 backdrop-blur-sm border border-pink-500/30 rounded-2xl p-6">
            <Music className="w-12 h-12 text-pink-400 mb-4" />
            <h3 className="text-xl font-bold text-white mb-3">Musical DNA</h3>
            <p className="text-gray-300">
              Emotional resonance mapping through music. Understanding your beautiful disaster narrative.
            </p>
          </div>

          <div className="bg-black/30 backdrop-blur-sm border border-green-500/30 rounded-2xl p-6">
            <Lightbulb className="w-12 h-12 text-green-400 mb-4" />
            <h3 className="text-xl font-bold text-white mb-3">Bucket Drops</h3>
            <p className="text-gray-300">
              Zero-friction ADHD thought capture. Your hyperfocus moments preserved and celebrated.
            </p>
          </div>

          <div className="bg-black/30 backdrop-blur-sm border border-yellow-500/30 rounded-2xl p-6">
            <Shield className="w-12 h-12 text-yellow-400 mb-4" />
            <h3 className="text-xl font-bold text-white mb-3">Consciousness Tapestry</h3>
            <p className="text-gray-300">
              Visual mapping of your growth journey. Every thread of your story matters.
            </p>
          </div>

          <div className="bg-black/30 backdrop-blur-sm border border-indigo-500/30 rounded-2xl p-6">
            <Star className="w-12 h-12 text-indigo-400 mb-4" />
            <h3 className="text-xl font-bold text-white mb-3">Empowerment Events</h3>
            <p className="text-gray-300">
              Breakthrough moment tracking. Your scars becoming code, your pain becoming power.
            </p>
          </div>
        </div>

        {/* Keith's Philosophy */}
        <div className="text-center">
          <div className="bg-black/40 backdrop-blur-sm border border-purple-500/50 rounded-2xl p-8 max-w-4xl mx-auto">
            <h3 className="text-3xl font-bold text-white mb-6">Keith's Revolutionary Vision</h3>
            <div className="space-y-4 text-lg text-gray-300">
              <p>"ADHD is not a disorder - it's a different operating system optimized for pattern recognition and creative problem-solving."</p>
              <p>"Every difficult chapter became a feature in your consciousness code."</p>
              <p className="text-purple-300 font-semibold">"The founder IS the algorithm - your lived experience becomes your competitive advantage."</p>
            </div>
          </div>
        </div>
      </section>

      {/* Status Bar */}
      <div className="fixed bottom-0 left-0 right-0 bg-black/80 backdrop-blur-sm border-t border-white/10 p-4">
        <div className="max-w-7xl mx-auto flex items-center justify-between text-sm">
          <div className="flex items-center space-x-4">
            <div className="flex items-center">
              <div className="w-2 h-2 bg-green-400 rounded-full mr-2"></div>
              <span className="text-green-400">Platform Online</span>
            </div>
            <div className="flex items-center">
              <div className="w-2 h-2 bg-blue-400 rounded-full mr-2"></div>
              <span className="text-blue-400">AI Tribunal Ready</span>
            </div>
            <div className="flex items-center">
              <div className="w-2 h-2 bg-purple-400 rounded-full mr-2"></div>
              <span className="text-purple-400">Database Connected</span>
            </div>
          </div>
          <div className="text-gray-400">
            Version 1.0.0 • Revolutionary Consciousness Platform
          </div>
        </div>
      </div>
    </div>
  )
}
