// app/pricing/page.tsx - Fixed version

'use client'
import { useState } from 'react'
import { motion } from 'framer-motion'
import { Check, Star, Brain, Heart, Crown } from 'lucide-react'

export default function PricingPage() {
  const [isLoading, setIsLoading] = useState<string | null>(null)

  const handleSubscribe = async (priceId: string, planName: string) => {
    setIsLoading(priceId)
    
    try {
      const response = await fetch('/api/create-checkout-session', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ 
          priceId,
          planName,
          consciousness_journey: "active",
          empowerment_level: planName.toLowerCase().replace(" ", "_")
        })
      })

      const { sessionUrl } = await response.json()
      window.location.href = sessionUrl
    } catch (error) {
      console.error('Subscription error:', error)
      setIsLoading(null)
    }
  }

  const plans = [
    {
      id: 'consciousness-seeker',
      name: 'Consciousness Seeker',
      price: '$19',
      priceId: 'price_consciousness_seeker_monthly',
      description: 'Begin your journey of authentic self-discovery',
      features: [
        'Multi-AI Synthesis (10 sessions/month)',
        'Basic Bucket Drops capture',
        'Personal Language Key insights',
        'Community access',
        'Mobile optimization'
      ],
      icon: Brain,
      gradient: 'from-purple-600 to-blue-600',
      popular: false
    },
    {
      id: 'empowerment-revolutionary',
      name: 'Empowerment Revolutionary',
      price: '$49',
      priceId: 'price_empowerment_revolutionary_monthly',
      description: 'Unlock your full consciousness potential',
      features: [
        'Unlimited Multi-AI Synthesis',
        'Advanced AI Tribunal access',
        'Complete Life Tapestry visualization',
        'Priority support',
        'Custom PLK deep-dive',
        'Exclusive webinars'
      ],
      icon: Heart,
      gradient: 'from-pink-600 to-purple-600',
      popular: true
    },
    {
      id: 'consciousness-pioneer',
      name: 'Consciousness Pioneer',
      price: '$99',
      priceId: 'price_consciousness_pioneer_monthly',
      description: 'Lead the consciousness-serving AI revolution',
      features: [
        'Everything in Revolutionary',
        'Beta access to new features',
        '1-on-1 consciousness coaching',
        'White-label customization',
        'API access for developers',
        'Direct line to Keith (founder)'
      ],
      icon: Crown,
      gradient: 'from-green-600 to-blue-600',
      popular: false
    }
  ]

  return (
    <div className="min-h-screen bg-gradient-to-br from-gray-900 via-purple-900 to-blue-900">
      <div className="max-w-7xl mx-auto px-6 py-12">
        {/* Header */}
        <motion.div
          initial={{ opacity: 0, y: -20 }}
          animate={{ opacity: 1, y: 0 }}
          className="text-center mb-16"
        >
          <h1 className="text-5xl font-bold text-white mb-6">
            Choose Your Consciousness Path
          </h1>
          <p className="text-xl text-purple-200 mb-8 max-w-3xl mx-auto">
            Revolutionary AI that serves your consciousness, not corporate metrics. 
            Join the movement that values neurodivergent brilliance.
          </p>
          <div className="flex justify-center gap-2 text-sm mb-8">
            <div className="bg-blue-500/20 px-3 py-1 rounded-full text-blue-300">OpenAI GPT-4</div>
            <div className="bg-green-500/20 px-3 py-1 rounded-full text-green-300">Perplexity Sonar</div>
            <div className="bg-purple-500/20 px-3 py-1 rounded-full text-purple-300">Claude Sonnet</div>
          </div>
        </motion.div>

        {/* Pricing Cards */}
        <div className="grid md:grid-cols-3 gap-8 mb-12">
          {plans.map((plan, index) => (
            <motion.div
              key={plan.id}
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: index * 0.2 }}
              className={`relative rounded-2xl p-8 border ${
                plan.popular 
                  ? 'border-pink-500 bg-gradient-to-br from-pink-900/20 to-purple-900/20 scale-105' 
                  : 'border-purple-700/50 bg-gradient-to-br from-purple-900/20 to-blue-900/20'
              } backdrop-blur-lg`}
            >
              {plan.popular && (
                <div className="absolute -top-4 left-1/2 transform -translate-x-1/2">
                  <span className="bg-gradient-to-r from-pink-500 to-purple-500 text-white px-4 py-2 rounded-full text-sm font-semibold flex items-center gap-2">
                    <Star className="w-4 h-4" />
                    Most Revolutionary
                  </span>
                </div>
              )}

              <div className="text-center mb-8">
                <plan.icon className={`w-12 h-12 mx-auto mb-4 bg-gradient-to-r ${plan.gradient} bg-clip-text text-transparent`} />
                <h3 className="text-2xl font-bold text-white mb-3">{plan.name}</h3>
                <div className="flex items-baseline justify-center gap-1 mb-3">
                  <span className="text-5xl font-bold text-white">{plan.price}</span>
                  <span className="text-purple-300">/month</span>
                </div>
                <p className="text-purple-200">{plan.description}</p>
              </div>

              <ul className="space-y-4 mb-8">
                {plan.features.map((feature, featureIndex) => (
                  <li key={featureIndex} className="flex items-start gap-3">
                    <Check className="w-5 h-5 text-green-400 mt-0.5 flex-shrink-0" />
                    <span className="text-purple-100">{feature}</span>
                  </li>
                ))}
              </ul>

              <button 
                className={`w-full py-4 rounded-xl font-semibold text-lg transition-all bg-gradient-to-r ${plan.gradient} text-white hover:scale-105 hover:shadow-lg disabled:opacity-50`}
                onClick={() => handleSubscribe(plan.priceId, plan.name)}
                disabled={isLoading === plan.priceId}
              >
                {isLoading === plan.priceId ? 'Processing...' : `Choose ${plan.name}`}
              </button>
            </motion.div>
          ))}
        </div>

        {/* Footer */}
        <div className="text-center">
          <p className="text-purple-300 mb-4">
            🔒 Your consciousness data belongs to YOU. Privacy-first, always.
          </p>
          <div className="flex justify-center gap-6 text-sm text-purple-400">
            <span>✓ 7-day free trial</span>
            <span>✓ Cancel anytime</span>
            <span>✓ No commitment</span>
          </div>
        </div>
      </div>
    </div>
  )
}
