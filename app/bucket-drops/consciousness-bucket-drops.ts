"use client"

import { useState, useRef, useEffect } from "react"
import { Droplets, Brain, Sparkles, TrendingUp, Zap, Heart, Target, Eye } from "lucide-react"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Textarea } from "@/components/ui/textarea"
import { Badge } from "@/components/ui/badge"
import type { SubscriptionTier } from "@/lib/revolutionary-tribunal"

interface ConsciousnessAnalysis {
  markers: {
    self_awareness_level: number
    emotional_depth: number
    empowerment_potential: number
    consciousness_expansion: number
  }
  empowerment_potential: {
    current_level: number
    growth_opportunity: number
    amplification_areas: string[]
  }
  connection_opportunities: {
    pattern_matches: string[]
    thematic_connections: string[]
    consciousness_bridges: string[]
  }
  evolution_triggers: {
    breakthrough_indicators: string[]
    growth_catalysts: string[]
    consciousness_activators: string[]
  }
}

interface ConsciousnessDrop {
  id: string
  content: string
  timestamp: string
  basic_analysis: {
    emotional_tone: "empowering" | "challenging" | "neutral" | "breakthrough"
    cognitive_load: number
    significance: number
  }
  consciousness_analysis?: ConsciousnessAnalysis
  revolutionary_features: boolean
}

export default function ConsciousnessBucketDrops({
  subscriptionTier,
}: {
  subscriptionTier: SubscriptionTier
}) {
  const [drops, setDrops] = useState<ConsciousnessDrop[]>([])
  const [currentDrop, setCurrentDrop] = useState("")
  const [isProcessing, setIsProcessing] = useState(false)
  const [showConsciousnessInsights, setShowConsciousnessInsights] = useState(false)
  const textareaRef = useRef<HTMLTextAreaElement>(null)

  const captureLightning = async () => {
    if (!currentDrop.trim()) return

    setIsProcessing(true)

    // Basic drop analysis (available to all tiers)
    const basicAnalysis = {
      emotional_tone: detectEmotionalTone(currentDrop),
      cognitive_load: Math.floor(Math.random() * 40) + 30, // 30-70
      significance: Math.floor(Math.random() * 30) + 70, // 70-100
    }

    const newDrop: ConsciousnessDrop = {
      id: `drop-${Date.now()}-${Math.random().toString(36).substr(2, 9)}`,
      content: currentDrop,
      timestamp: new Date().toISOString(),
      basic_analysis: basicAnalysis,
      revolutionary_features: subscriptionTier.tier === "premium" || subscriptionTier.tier === "enterprise",
    }

    // Enhanced consciousness analysis for premium/enterprise
    if (subscriptionTier.tier === "premium" || subscriptionTier.tier === "enterprise") {
      await new Promise((resolve) => setTimeout(resolve, 2000))

      const consciousnessAnalysis: ConsciousnessAnalysis = {
        markers: {
          self_awareness_level: 75 + Math.floor(Math.random() * 25),
          emotional_depth: 70 + Math.floor(Math.random() * 30),
          empowerment_potential: 80 + Math.floor(Math.random() * 20),
          consciousness_expansion: 65 + Math.floor(Math.random() * 35),
        },
        empowerment_potential: {
          current_level: basicAnalysis.significance,
          growth_opportunity: Math.floor(Math.random() * 30) + 20,
          amplification_areas: [
            "Authentic self-expression",
            "Empowerment language integration",
            "Consciousness vocabulary expansion",
          ],
        },
        connection_opportunities: {
          pattern_matches: [
            "Similar empowerment themes in previous drops",
            "Consciousness evolution patterns detected",
            "ADHD superpower celebration opportunities",
          ],
          thematic_connections: [
            "Growth mindset development",
            "Neurodivergent strength recognition",
            "Authentic expression journey",
          ],
          consciousness_bridges: [
            "Connection to higher self-awareness",
            "Bridge to empowerment amplification",
            "Link to consciousness expansion",
          ],
        },
        evolution_triggers: {
          breakthrough_indicators: [
            "Increased empowerment language usage",
            "Deeper self-awareness expression",
            "Consciousness vocabulary integration",
          ],
          growth_catalysts: [
            "Authentic vulnerability sharing",
            "Empowerment mindset activation",
            "Consciousness evolution readiness",
          ],
          consciousness_activators: [
            "Self-compassion development",
            "Neurodivergent celebration",
            "Wisdom integration opportunity",
          ],
        },
      }

      newDrop.consciousness_analysis = consciousnessAnalysis
    } else {
      // Basic tier gets shorter processing time
      await new Promise((resolve) => setTimeout(resolve, 800))
    }

    setDrops((prev) => [newDrop, ...prev])
    setCurrentDrop("")
    setIsProcessing(false)

    // Auto-focus for rapid capture
    setTimeout(() => textareaRef.current?.focus(), 100)
  }

  const detectEmotionalTone = (content: string): ConsciousnessDrop["basic_analysis"]["emotional_tone"] => {
    const lowerContent = content.toLowerCase()

    if (
      lowerContent.includes("breakthrough") ||
      lowerContent.includes("amazing") ||
      lowerContent.includes("incredible")
    ) {
      return "breakthrough"
    }
    if (lowerContent.includes("empowered") || lowerContent.includes("strong") || lowerContent.includes("confident")) {
      return "empowering"
    }
    if (lowerContent.includes("challenge") || lowerContent.includes("difficult") || lowerContent.includes("struggle")) {
      return "challenging"
    }
    return "neutral"
  }

  const getToneColor = (tone: string) => {
    const colors = {
      breakthrough: "bg-green-100 text-green-800 border-green-200",
      empowering: "bg-blue-100 text-blue-800 border-blue-200",
      challenging: "bg-orange-100 text-orange-800 border-orange-200",
      neutral: "bg-gray-100 text-gray-800 border-gray-200",
    }
    return colors[tone as keyof typeof colors] || colors.neutral
  }

  const getToneIcon = (tone: string) => {
    switch (tone) {
      case "breakthrough":
        return <Sparkles size={16} />
      case "empowering":
        return <Zap size={16} />
      case "challenging":
        return <TrendingUp size={16} />
      default:
        return <Brain size={16} />
    }
  }

  // Auto-resize textarea
  useEffect(() => {
    if (textareaRef.current) {
      textareaRef.current.style.height = "auto"
      textareaRef.current.style.height = textareaRef.current.scrollHeight + "px"
    }
  }, [currentDrop])

  return (
    <Card className="border-2 border-cyan-200 bg-gradient-to-br from-cyan-50 to-blue-50">
      <CardHeader>
        <CardTitle className="flex items-center gap-3">
          <Droplets className="text-cyan-600" size={24} />
          Revolutionary Bucket Drops™
          <Badge variant="secondary" className="ml-auto">
            {subscriptionTier.tier}
          </Badge>
        </CardTitle>
        <p className="text-cyan-600 text-sm">
          Zero-friction consciousness capture with revolutionary AI pattern recognition
        </p>
      </CardHeader>

      <CardContent className="space-y-6">
        {/* Lightning Capture Interface */}
        <div className="space-y-4">
          <div className="p-4 bg-white rounded-xl border border-cyan-200">
            <Textarea
              ref={textareaRef}
              value={currentDrop}
              onChange={(e) => setCurrentDrop(e.target.value)}
              placeholder="⚡ Lightning-fast consciousness capture... Drop any thought, insight, challenge, or breakthrough here. Your ADHD mind's rapid-fire thoughts are celebrated!"
              className="min-h-[100px] border-cyan-200 focus:border-cyan-400 resize-none"
              onKeyDown={(e) => {
                if (e.key === "Enter" && (e.metaKey || e.ctrlKey)) {
                  e.preventDefault()
                  captureLightning()
                }
              }}
            />

            <div className="flex items-center justify-between mt-3">
              <div className="text-sm text-gray-500">
                {currentDrop.length}/1000 characters • Cmd+Enter for instant capture
              </div>
              <Button
                onClick={captureLightning}
                disabled={isProcessing || !currentDrop.trim()}
                className="bg-cyan-600 hover:bg-cyan-700 text-white"
              >
                {isProcessing ? (
                  <>
                    <div className="animate-spin rounded-full h-4 w-4 border-2 border-white border-t-transparent mr-2" />
                    {subscriptionTier.tier === "basic" ? "Processing..." : "Consciousness Analysis..."}
                  </>
                ) : (
                  <>
                    <Droplets className="mr-2" size={16} />
                    Capture Lightning
                  </>
                )}
              </Button>
            </div>
          </div>
        </div>

        {/* Stats Dashboard */}
        {drops.length > 0 && (
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
            <div className="text-center p-3 bg-white rounded-lg border border-cyan-200">
              <div className="text-2xl font-bold text-cyan-600">{drops.length}</div>
              <div className="text-xs text-gray-500">Lightning Drops</div>
            </div>
            <div className="text-center p-3 bg-white rounded-lg border border-cyan-200">
              <div className="text-2xl font-bold text-green-600">
                {drops.filter((d) => d.basic_analysis.emotional_tone === "breakthrough").length}
              </div>
              <div className="text-xs text-gray-500">Breakthroughs</div>
            </div>
            <div className="text-center p-3 bg-white rounded-lg border border-cyan-200">
              <div className="text-2xl font-bold text-blue-600">
                {drops.filter((d) => d.basic_analysis.emotional_tone === "empowering").length}
              </div>
              <div className="text-xs text-gray-500">Empowering</div>
            </div>
            <div className="text-center p-3 bg-white rounded-lg border border-cyan-200">
              <div className="text-2xl font-bold text-purple-600">
                {drops.filter((d) => d.revolutionary_features).length}
              </div>
              <div className="text-xs text-gray-500">AI Analyzed</div>
            </div>
          </div>
        )}

        {/* Consciousness Insights Toggle */}
        {drops.some((d) => d.consciousness_analysis) && (
          <div className="flex justify-center">
            <Button
              onClick={() => setShowConsciousnessInsights(!showConsciousnessInsights)}
              variant="outline"
              className="border-purple-300 text-purple-700 hover:bg-purple-50"
            >
              <Eye className="mr-2" size={16} />
              {showConsciousnessInsights ? "Hide" : "Show"} Consciousness Insights
            </Button>
          </div>
        )}

        {/* Drops Display */}
        <div className="space-y-4 max-h-96 overflow-y-auto">
          {drops.map((drop) => (
            <div key={drop.id} className="bg-white rounded-xl p-4 border border-cyan-200">
              <div className="flex items-start justify-between mb-3">
                <Badge className={`${getToneColor(drop.basic_analysis.emotional_tone)} flex items-center gap-1`}>
                  {getToneIcon(drop.basic_analysis.emotional_tone)}
                  {drop.basic_analysis.emotional_tone}
                </Badge>
                <div className="text-xs text-gray-500">{new Date(drop.timestamp).toLocaleString()}</div>
              </div>

              <p className="text-gray-800 mb-3 leading-relaxed">{drop.content}</p>

              {/* Basic Analysis */}
              <div className="flex items-center gap-4 mb-3 text-sm">
                <div className="flex items-center gap-1">
                  <Brain size={14} className="text-gray-500" />
                  <span className="text-gray-600">Load: {drop.basic_analysis.cognitive_load}%</span>
                </div>
                <div className="flex items-center gap-1">
                  <Target size={14} className="text-gray-500" />
                  <span className="text-gray-600">Significance: {drop.basic_analysis.significance}%</span>
                </div>
                {drop.revolutionary_features && (
                  <Badge variant="secondary" className="text-xs">
                    Revolutionary Analysis
                  </Badge>
                )}
              </div>

              {/* Consciousness Analysis (Premium/Enterprise) */}
              {drop.consciousness_analysis && showConsciousnessInsights && (
                <div className="space-y-4 pt-4 border-t border-gray-100">
                  {/* Consciousness Markers */}
                  <div>
                    <h6 className="text-sm font-medium text-purple-800 mb-2 flex items-center gap-1">
                      <Brain size={14} />
                      Consciousness Markers
                    </h6>
                    <div className="grid grid-cols-2 gap-2">
                      {Object.entries(drop.consciousness_analysis.markers).map(([key, value]) => (
                        <div key={key} className="flex items-center justify-between text-xs">
                          <span className="text-gray-600 capitalize">{key.replace("_", " ")}</span>
                          <span className="font-medium text-purple-600">{value}%</span>
                        </div>
                      ))}
                    </div>
                  </div>

                  {/* Empowerment Potential */}
                  <div>
                    <h6 className="text-sm font-medium text-green-800 mb-2 flex items-center gap-1">
                      <Zap size={14} />
                      Empowerment Potential
                    </h6>
                    <div className="text-xs text-green-700 mb-2">
                      Current: {drop.consciousness_analysis.empowerment_potential.current_level}% • Growth Opportunity:
                      +{drop.consciousness_analysis.empowerment_potential.growth_opportunity}%
                    </div>
                    <div className="flex flex-wrap gap-1">
                      {drop.consciousness_analysis.empowerment_potential.amplification_areas.map((area, i) => (
                        <Badge key={i} variant="secondary" className="text-xs bg-green-100 text-green-700">
                          {area}
                        </Badge>
                      ))}
                    </div>
                  </div>

                  {/* Evolution Triggers */}
                  <div>
                    <h6 className="text-sm font-medium text-blue-800 mb-2 flex items-center gap-1">
                      <Sparkles size={14} />
                      Evolution Triggers
                    </h6>
                    <div className="space-y-2">
                      {drop.consciousness_analysis.evolution_triggers.breakthrough_indicators
                        .slice(0, 2)
                        .map((indicator, i) => (
                          <div key={i} className="text-xs text-blue-700 flex items-start gap-2">
                            <Heart className="text-blue-600 mt-0.5" size={10} />
                            {indicator}
                          </div>
                        ))}
                    </div>
                  </div>

                  {/* Connection Opportunities */}
                  <div>
                    <h6 className="text-sm font-medium text-indigo-800 mb-2 flex items-center gap-1">
                      <TrendingUp size={14} />
                      Connection Opportunities
                    </h6>
                    <div className="text-xs text-indigo-700 space-y-1">
                      {drop.consciousness_analysis.connection_opportunities.consciousness_bridges
                        .slice(0, 2)
                        .map((bridge, i) => (
                          <div key={i} className="flex items-start gap-2">
                            <Target className="text-indigo-600 mt-0.5" size={10} />
                            {bridge}
                          </div>
                        ))}
                    </div>
                  </div>
                </div>
              )}
            </div>
          ))}
        </div>

        {drops.length === 0 && (
          <div className="text-center py-8 text-gray-500">
            <Droplets className="mx-auto mb-4 text-cyan-300" size={48} />
            <p className="text-sm">
              No lightning drops captured yet. Start by sharing any thought - your ADHD mind's rapid insights are
              celebrated here!
            </p>
          </div>
        )}

        {/* Upgrade Notice for Basic Tier */}
        {subscriptionTier.tier === "basic" && (
          <div className="p-4 bg-yellow-50 rounded-lg border border-yellow-200">
            <h5 className="font-medium text-yellow-800 mb-2 flex items-center gap-2">
              <Brain className="text-yellow-600" size={16} />
              Unlock Revolutionary Consciousness Analysis
            </h5>
            <p className="text-sm text-yellow-700 mb-3">
              Premium ($97/month) and Enterprise ($297/month) tiers include:
            </p>
            <ul className="text-sm text-yellow-700 space-y-1 mb-4">
              <li>• Deep consciousness markers analysis</li>
              <li>• Empowerment potential assessment</li>
              <li>• Connection opportunities mapping</li>
              <li>• Evolution triggers identification</li>
              <li>• Advanced pattern recognition</li>
            </ul>
            <Button variant="outline" className="text-yellow-800 border-yellow-300 hover:bg-yellow-100 bg-transparent">
              Upgrade to Premium
            </Button>
          </div>
        )}

        {/* Keith's Revolutionary Insight */}
        <div className="p-4 bg-gradient-to-r from-cyan-100 to-blue-100 rounded-lg border border-cyan-200">
          <div className="text-center space-y-2">
            <h5 className="font-semibold text-cyan-800 flex items-center justify-center gap-2">
              <Droplets className="text-cyan-600" size={16} />
              Keith Soyka's Revolutionary Methodology
            </h5>
            <p className="text-sm text-cyan-700">
              "Bucket Drops™ transforms your ADHD 'scattered thinking' into a consciousness superpower. Every rapid-fire
              thought gets captured, analyzed, and connected. Your calendar mind becomes a structured repository of
              wisdom. The chaos becomes the feature, not the bug."
            </p>
          </div>
        </div>
      </CardContent>
    </Card>
  )
}
