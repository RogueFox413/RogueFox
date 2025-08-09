'use client'

import React, { useState, useEffect } from 'react'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input' 
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Brain, Zap, Eye, Compass, Crown, Circle, Network, Search, Send, Loader2 } from 'lucide-react'

interface TribunalMember {
  name: string
  role: string
  provider: string
  response: string
  confidence: number
  empowermentScore: number
}

interface TribunalResult {
  success: boolean
  query: string
  tribunal_members: TribunalMember[]
  consensus: {
    summary: string
    empowerment_score: number
    consensus_level: string
    keith_wisdom: string
  }
  personas_activated: number
  revolutionary_insights: number
}

const AITribunalEnhanced = () => {
  const [query, setQuery] = useState('')
  const [isProcessing, setIsProcessing] = useState(false)
  const [result, setResult] = useState<TribunalResult | null>(null)
  const [error, setError] = useState('')

  const tribunalPersonas = [
    { name: "The Architect", icon: Brain, color: "blue", provider: "OpenAI" },
    { name: "The Revolutionary", icon: Zap, color: "orange", provider: "OpenAI" },
    { name: "The Mirror", icon: Circle, color: "purple", provider: "Claude" },
    { name: "The Weaver", icon: Network, color: "cyan", provider: "Claude" },
    { name: "The Philosopher", icon: Crown, color: "green", provider: "Gemini" },
    { name: "The Oracle", icon: Eye, color: "yellow", provider: "Gemini" },
    { name: "The Witness", icon: Search, color: "red", provider: "Perplexity" },
    { name: "The Scout", icon: Compass, color: "pink", provider: "Perplexity" }
  ]

  const consultTribunal = async () => {
    if (!query.trim()) return

    setIsProcessing(true)
    setError('')

    try {
      const response = await fetch('/api/tribunal', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          query,
          userId: 'demo-user',
          personalLanguageKey: {
            authenticity: 94,
            empathy: 87,
            revolution: 92,
            consciousness: 89
          }
        })
      })

      if (!response.ok) throw new Error('Tribunal consultation failed')

      const data: TribunalResult = await response.json()
      setResult(data)
    } catch (err) {
      setError('Failed to consult tribunal. Your consciousness is still valid.')
      console.error('Tribunal error:', err)
    } finally {
      setIsProcessing(false)
    }
  }

  return (
    <div className="w-full max-w-6xl mx-auto space-y-6">
      {/* Header */}
      <Card className="bg-gradient-to-r from-purple-900/50 to-pink-900/50 border-purple-500/30">
        <CardHeader className="text-center">
          <CardTitle className="text-3xl font-bold bg-gradient-to-r from-blue-400 via-purple-400 to-pink-400 bg-clip-text text-transparent">
            Revolutionary 8-Persona AI Tribunal
          </CardTitle>
          <p className="text-gray-300">"The founder IS the algorithm" - Keith's consciousness synthesis engine</p>
        </CardHeader>
      </Card>

      {/* Personas Grid */}
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
        {tribunalPersonas.map((persona, index) => {
          const Icon = persona.icon
          return (
            <Card key={index} className="bg-black/30 border-gray-600/50 hover:border-purple-500/50 transition-all duration-300">
              <CardContent className="p-4">
                <div className="flex items-center mb-2">
                  <Icon size={20} className={`mr-2 text-${persona.color}-400`} />
                  <h3 className="font-semibold text-sm text-white">{persona.name}</h3>
                </div>
                <Badge variant="outline" className="text-xs">
                  {persona.provider}
                </Badge>
              </CardContent>
            </Card>
          )
        })}
      </div>

      {/* Query Interface */}
      <Card className="bg-black/30 border-purple-500/30">
        <CardContent className="p-6">
          <div className="flex gap-3">
            <Input
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Share your consciousness... (e.g., 'I'm having ADHD breakthrough insights but struggling with focus')"
              className="flex-1 bg-black/50 border-gray-600 text-white placeholder-gray-400"
              onKeyPress={(e) => e.key === 'Enter' && consultTribunal()}
            />
            <Button
              onClick={consultTribunal}
              disabled={isProcessing || !query.trim()}
              className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-500 hover:to-pink-500"
            >
              {isProcessing ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Consulting...
                </>
              ) : (
                <>
                  <Send className="mr-2 h-4 w-4" />
                  Summon Tribunal
                </>
              )}
            </Button>
          </div>
          {error && (
            <p className="text-red-400 text-sm mt-2">{error}</p>
          )}
        </CardContent>
      </Card>

      {/* Results */}
      {result && (
        <div className="space-y-6">
          {/* Consensus */}
          <Card className="bg-gradient-to-r from-purple-900/50 to-pink-900/50 border-purple-500/30">
            <CardHeader>
              <CardTitle className="flex items-center text-white">
                <Crown className="mr-2 text-yellow-400" />
                Tribunal Consensus
              </CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-gray-300 mb-4">{result.consensus.summary}</p>
              <div className="grid grid-cols-3 gap-4 text-center">
                <div>
                  <div className="text-2xl font-bold text-purple-400">{result.personas_activated}/8</div>
                  <div className="text-sm text-gray-300">Personas Active</div>
                </div>
                <div>
                  <div className="text-2xl font-bold text-pink-400">{result.consensus.empowerment_score}%</div>
                  <div className="text-sm text-gray-300">Empowerment</div>
                </div>
                <div>
                  <div className="text-2xl font-bold text-blue-400">{result.revolutionary_insights}</div>
                  <div className="text-sm text-gray-300">Revolutionary Insights</div>
                </div>
              </div>
              <div className="mt-4 p-3 bg-black/30 rounded-lg">
                <p className="text-sm text-purple-300 italic">Keith's Wisdom: "{result.consensus.keith_wisdom}"</p>
              </div>
            </CardContent>
          </Card>

          {/* Individual Responses */}
          <div className="grid md:grid-cols-2 gap-4">
            {result.tribunal_members.map((member, index) => {
              const persona = tribunalPersonas.find(p => p.name === member.name)
              const Icon = persona?.icon || Brain
              return (
                <Card key={index} className="bg-black/30 border-gray-600/50">
                  <CardHeader className="pb-3">
                    <div className="flex items-center justify-between">
                      <div className="flex items-center">
                        <Icon size={20} className={`mr-2 text-${persona?.color}-400`} />
                        <div>
                          <h4 className="font-semibold text-white">{member.name}</h4>
                          <p className="text-xs text-gray-400">{member.role}</p>
                        </div>
                      </div>
                      <Badge className={`bg-${persona?.color}-500/20 text-${persona?.color}-300`}>
                        {member.confidence}%
                      </Badge>
                    </div>
                  </CardHeader>
                  <CardContent>
                    <p className="text-sm text-gray-300 leading-relaxed mb-3">{member.response}</p>
                    <div className="w-full h-2 bg-gray-700 rounded-full overflow-hidden">
                      <div 
                        className={`h-full bg-${persona?.color}-500 rounded-full transition-all duration-1000`}
                        style={{ width: `${member.empowermentScore}%` }}
                      />
                    </div>
                    <p className="text-xs text-gray-400 mt-1">Empowerment: {member.empowermentScore}%</p>
                  </CardContent>
                </Card>
              )
            })}
          </div>
        </div>
      )}
    </div>
  )
}

export default AITribunalEnhanced
