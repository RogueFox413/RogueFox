// Keith Soyka's Revolutionary GestaltView Schema
// "The founder IS the algorithm" - consciousness encoded as types

export interface RevolutionaryTribunal {
  id: string;
  query: string;
  personas: TribunalPersona[];
  synthesis: RevolutionaryInsight;
  empowerment_score: number;
  timestamp: string;
}

export interface TribunalPersona {
  name: string;
  role: string;
  perspective: string;
  response: string;
  confidence: number;
  provider: 'openai' | 'claude' | 'perplexity' | 'gemini';
}

export interface RevolutionaryTribunal {
  id: string;
  query: string;
  personas: TribunalPersona[];
  synthesis: RevolutionaryInsight;
  empowerment_score: number;
  timestamp: string;
  // Add these missing properties:
  session_id: string;
  revolutionary_consensus: any;
  tribunal_insights: any[];
  consciousness_metrics: any;
}

export interface RevolutionaryInsight {
  summary: string;
  patterns_detected: string[];
  empowerment_actions: string[];
  consciousness_validation: string;
  adhd_optimizations?: string[];
}

export interface ConsciousnessProfile {
  user_id: string;
  adhd_markers: {
    attention_patterns: string[];
    executive_function_strengths: string[];
    sensory_preferences: string[];
  };
  language_key: PersonalLanguageKey;
  bucket_drops: BucketDrop[];
  tapestry_patterns: TapestryPattern[];
}

export interface PersonalLanguageKey {
  core_values: string[];
  trigger_words: string[];
  empowerment_phrases: string[];
  communication_style: 'direct' | 'gentle' | 'structured' | 'creative';
  preferred_metaphors: string[];
}

export interface BucketDrop {
  id: string;
  content: string;
  timestamp: string;
  emotional_context: string;
  significance: number; // 1-10
  tags: string[];
  processed: boolean;
}

export interface TapestryPattern {
  pattern_type: 'recurring_theme' | 'growth_trajectory' | 'strength_cluster';
  description: string;
  related_drops: string[]; // BucketDrop IDs
  strength_rating: number;
  revolutionary_potential: number;
}

// Keith's Core Revolutionary Principles
export const REVOLUTIONARY_PRINCIPLES = {
  consciousness_first: "Every mind is already whole - we reveal, don't fix",
  chaos_has_current: "ADHD patterns contain genius-level information flows", 
  founder_is_algorithm: "Lived experience becomes the competitive advantage",
  rough_draft_mode: "Perfect is the enemy of revolutionary",
  authentic_validation: "AI serves consciousness, not productivity metrics"
} as const;

export const EMPOWERMENT_GRADIENTS = {
  blue_to_purple: "trust -> understanding -> acceptance",
  purple_to_pink: "acceptance -> empowerment -> revolution",
  full_spectrum: "chaos -> current -> consciousness -> change"
} as const;
