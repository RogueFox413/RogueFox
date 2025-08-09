// lib/utils.ts
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

// Emotional color mapping for UI
export function getEmotionalColor(tone: string): string {
  const colors: Record<string, string> = {
    joy: "text-yellow-400",
    sadness: "text-blue-400",
    anger: "text-red-400",
    anxiety: "text-orange-400",
    calm: "text-green-400",
    neutral: "text-gray-400",
  }
  return colors[tone] || colors.neutral
}

// Calculate intensity based on text content
export function calculateIntensity(text: string): number {
  // Simple heuristic: longer text with more punctuation = higher intensity
  const punctuationCount = (text.match(/[!?]/g) || []).length
  const capsRatio = (text.match(/[A-Z]/g) || []).length / text.length
  const length = Math.min(text.length / 200, 1) // Normalize to 0-1
  
  const intensity = Math.round(
    (length * 0.3 + punctuationCount * 0.4 + capsRatio * 0.3) * 100
  )
  
  return Math.min(Math.max(intensity, 10), 100) // Clamp between 10-100
}
