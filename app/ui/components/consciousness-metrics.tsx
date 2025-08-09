"use client"

import type React from "react"

import { useState, useEffect } from "react"
import { motion } from "framer-motion"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { Progress } from "@/components/ui/progress"
import { Brain, Heart, Zap, Network } from "lucide-react"

interface ConsciousnessMetric {
  name: string
  value: number
  icon: React.ReactNode
  color: string
}

export function ConsciousnessMetrics() {
  const [metrics, setMetrics] = useState<ConsciousnessMetric[]>([
    {
      name: "Cognitive Flow",
      value: 87,
      icon: <Brain className="h-5 w-5" />,
      color: "text-blue-400",
    },
    {
      name: "Emotional Resonance",
      value: 92,
      icon: <Heart className="h-5 w-5" />,
      color: "text-pink-400",
    },
    {
      name: "Neural Connectivity",
      value: 78,
      icon: <Network className="h-5 w-5" />,
      color: "text-green-400",
    },
    {
      name: "Insight Generation",
      value: 95,
      icon: <Zap className="h-5 w-5" />,
      color: "text-yellow-400",
    },
  ])

  useEffect(() => {
    const interval = setInterval(() => {
      setMetrics((prev) =>
        prev.map((metric) => ({
          ...metric,
          value: Math.max(60, Math.min(100, metric.value + (Math.random() - 0.5) * 10)),
        })),
      )
    }, 5000)

    return () => clearInterval(interval)
  }, [])

  return (
    <div className="grid grid-cols-2 lg:grid-cols-4 gap-4">
      {metrics.map((metric, index) => (
        <motion.div
          key={metric.name}
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: index * 0.1 }}
        >
          <Card className="glass-panel consciousness-gradient">
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium text-white flex items-center gap-2">
                <span className={metric.color}>{metric.icon}</span>
                {metric.name}
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-2">
                <div className="text-2xl font-bold text-white">{Math.round(metric.value)}%</div>
                <Progress value={metric.value} className="h-2" />
              </div>
            </CardContent>
          </Card>
        </motion.div>
      ))}
    </div>
  )
}
