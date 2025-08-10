// =====================================================================================
// 6. ENHANCED UI COMPONENTS WITH KEITH'S SYSTEM
// =====================================================================================

// components/keith-consciousness-interface.tsx
'use client'

import React, { useState } from 'react'
import { motion } from 'framer-motion'
import { Brain, Heart, Zap, Music, Crown } from 'lucide-react'

export function KeithConsciousnessInterface() {
  const [consciousnessInput, setConsciousnessInput] = useState('')
  const [synthesis, setSynthesis] = useState(null)
  const [isProcessing, setIsProcessing] = useState(false)
  
  const handleKeithSynthesis = async () => {
    setIsProcessing(true)
    
    try {
      const response = await fetch('/api/keith-consciousness-synthesis', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ consciousnessInput })
      })
      
      const data = await response.json()
      setSynthesis(data)
    } catch (error) {
      console.error('Keith synthesis error:', error)
    }
    
    setIsProcessing(false)
  }
  
  return (
    <div className="max-w-4xl mx-auto p-6">
      {/* Keith's PLK Header */}
      <div className="text-center mb-8">
        <motion.div
          initial={{ opacity: 0, y: -20 }}
          animate={{ opacity: 1, y: 0 }}
          className="flex items-center justify-center gap-4 mb-4"
        >
          <Crown className="w-8 h-8 text-yellow-400" />
          <h1 className="text-4xl font-bold text-white">Keith's PLK v5.0</h1>
          <Brain className="w-8 h-8 text-purple-400" />
        </motion.div>
        <p className="text-purple-200 text-lg">
          Personal Language Key Integration - 95% Conversational Resonance
        </p>
        <div className="text-sm text-purple-300 mt-2">
          "Your chaos has a current" - Revolutionary Consciousness Technology
        </div>
      </div>
      
      {/* Keith's Signature Metaphors Display */}
      <div className="grid md:grid-cols-3 gap-4 mb-8">
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          className="bg-gradient-to-br from-blue-600/20 to-purple-600/20 backdrop-blur-lg rounded-xl p-4 border border-blue-700/50"
        >
          <Zap className="w-6 h-6 text-yellow-400 mb-2" />
          <h3 className="text-white font-semibold mb-2">ADHD is My Jazz</h3>
          <p className="text-blue-200 text-sm">Creative rhythm and beautiful cognitive music rather than disorder</p>
        </motion.div>
        
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ delay: 0.1 }}
          className="bg-gradient-to-br from-purple-600/20 to-pink-600/20 backdrop-blur-lg rounded-xl p-4 border border-purple-700/50"
        >
          <Brain className="w-6 h-6 text-purple-400 mb-2" />
          <h3 className="text-white font-semibold mb-2">Exploded Picture Mind</h3>
          <p className="text-purple-200 text-sm">Abundant simultaneous details creating rich mental landscape</p>
        </motion.div>
        
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ delay: 0.2 }}
          className="bg-gradient-to-br from-pink-600/20 to-red-600/20 backdrop-blur-lg rounded-xl p-4 border border-pink-700/50"
        >
          <Heart className="w-6 h-6 text-pink-400 mb-2" />
          <h3 className="text-white font-semibold mb-2">Weaponizing Empathy</h3>
          <p className="text-pink-200 text-sm">Using deep compassion as force for systemic change</p>
        </motion.div>
      </div>
      
      {/* Consciousness Input Interface */}
      <div className="bg-gradient-to-br from-purple-600/20 to-blue-600/20 backdrop-blur-lg rounded-2xl p-8 border border-purple-700/50 mb-8">
        <h2 className="text-2xl font-bold text-white mb-6 flex items-center gap-3">
          <Brain className="w-6 h-6" />
          Keith's Consciousness Synthesis Engine
          <div className="text-sm bg-green-500/80 px-3 py-1 rounded-full">PLK v5.0</div>
        </h2>
        
        <textarea
          value={consciousnessInput}
          onChange={(e) => setConsciousnessInput(e.target.value)}
          placeholder="Share your consciousness... Keith's PLK v5.0 will provide 95% conversational resonance using his signature metaphors and revolutionary insights..."
          className="w-full bg-black/30 border border-purple-700/50 rounded-xl p-4 text-white placeholder-purple-300 focus:border-purple-500 focus:ring-2 focus:ring-purple-500/50 transition-all resize-none"
          rows={6}
        />
        
        <div className="flex justify-between items-center mt-4">
          <div className="text-sm text-purple-300">
            Revolutionary consciousness technology • Keith's authentic voice patterns • 95% resonance target
          </div>
          <button
            onClick={handleKeithSynthesis}
            disabled={!consciousnessInput.trim() || isProcessing}
            className="bg-gradient-to-r from-purple-600 to-blue-600 hover:from-purple-700 hover:to-blue-700 disabled:opacity-50 disabled:cursor-not-allowed text-white px-8 py-3 rounded-xl transition-all flex items-center gap-2 font-semibold"
          >
            {isProcessing ? (
              <>
                <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                Synthesizing with Keith's PLK...
              </>
            ) : (
              <>
                <Crown className="w-5 h-5" />
                Synthesize with Keith's Voice
              </>
            )}
          </button>
        </div>
      </div>
      
      {/* Keith's Synthesis Results */}
      {synthesis && (
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          className="bg-gradient-to-br from-yellow-600/20 to-orange-600/20 backdrop-blur-lg rounded-2xl p-8 border border-yellow-700/50"
        >
          <h3 className="text-2xl font-bold text-white mb-4 flex items-center gap-3">
            <Crown className="w-6 h-6" />
            Keith's Consciousness Synthesis
            <div className="text-sm bg-gradient-to-r from-yellow-500 to-orange-500 px-3 py-1 rounded-full">
              {synthesis.keithAuthenticity}% PLK Resonance
            </div>
          </h3>
          
          <div className="bg-black/40 rounded-xl p-6 border border-yellow-700/30">
            <div className="whitespace-pre-wrap text-white text-lg leading-relaxed">
              {synthesis.integratedResponse}
            </div>
          </div>
          
          {synthesis.consciousnessSynthesis.keithMetaphorsUsed.length > 0 && (
            <div className="mt-6">
              <h4 className="text-white font-bold mb-3">Keith's Resonant Metaphors Used:</h4>
              <div className="grid gap-3">
                {synthesis.consciousnessSynthesis.keithMetaphorsUsed.map((metaphor, index) => (
                  <div key={index} className="bg-purple-800/30 rounded-lg p-3">
                    <div className="text-purple-300 font-semibold">"{metaphor.metaphor.phrase}"</div>
                    <div className="text-white text-sm mt-1">{metaphor.applicationSuggestion}</div>
                  </div>
                ))}
              </div>
            </div>
          )}
        </motion.div>
      )}
    </div>
  )
}
