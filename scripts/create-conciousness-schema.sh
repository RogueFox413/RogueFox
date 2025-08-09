
-- 🧠 Keith's Revolutionary Consciousness Database Schema
-- Enable required extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";
CREATE EXTENSION IF NOT EXISTS "vector" WITH SCHEMA public;

-- 1. 🎭 CONSCIOUSNESS PROFILES
CREATE TABLE IF NOT EXISTS consciousness_profiles (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  clerk_user_id TEXT UNIQUE,
  email TEXT,
  username TEXT,
  
  -- Keith's Personal Language Key (PLK)
  plk_authenticity INTEGER DEFAULT 75 CHECK (plk_authenticity BETWEEN 0 AND 100),
  plk_empathy INTEGER DEFAULT 75 CHECK (plk_empathy BETWEEN 0 AND 100),
  plk_revolution INTEGER DEFAULT 75 CHECK (plk_revolution BETWEEN 0 AND 100),
  plk_consciousness INTEGER DEFAULT 75 CHECK (plk_consciousness BETWEEN 0 AND 100),
  plk_resonance_score DECIMAL DEFAULT 0.75,
  plk_signature_quotes TEXT[] DEFAULT '{}',
  
  -- ADHD & Neurodivergent Superpowers
  adhd_indicators JSONB DEFAULT '{"hyperfocus_strength": true, "pattern_recognition": "exceptional", "creative_bursts": "frequent"}',
  cognitive_strengths JSONB DEFAULT '{"systems_thinking": 95, "empathetic_processing": 92}',
  
  -- Revolutionary Insights
  breakthrough_count INTEGER DEFAULT 0,
  consciousness_level TEXT DEFAULT 'awakening',
  
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. 🏛️ TRIBUNAL SESSIONS
CREATE TABLE IF NOT EXISTS revolutionary_tribunal_sessions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  consciousness_profile_id UUID REFERENCES consciousness_profiles(id) ON DELETE CASCADE,
  
  -- Core session data
  consciousness_query TEXT NOT NULL,
  session_type TEXT DEFAULT 'full_tribunal_synthesis',
  
  -- AI Persona Responses
  openai_architect_response JSONB DEFAULT '{}',
  claude_mirror_response JSONB DEFAULT '{}', 
  gemini_philosopher_response JSONB DEFAULT '{}',
  
  -- Consciousness Synthesis Results
  consensus_score INTEGER DEFAULT 0 CHECK (consensus_score BETWEEN 0 AND 100),
  empowerment_score INTEGER DEFAULT 50 CHECK (empowerment_score BETWEEN 0 AND 100),
  
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. 🪣 BUCKET DROPS
CREATE TABLE IF NOT EXISTS consciousness_bucket_drops (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  consciousness_profile_id UUID REFERENCES consciousness_profiles(id) ON DELETE CASCADE,
  
  -- Raw consciousness data
  thought_content TEXT NOT NULL,
  emotional_intensity INTEGER DEFAULT 5 CHECK (emotional_intensity BETWEEN 1 AND 10),
  consciousness_category TEXT DEFAULT 'general',
  
  -- ADHD-Optimized capture context
  hyperfocus_indicator BOOLEAN DEFAULT false,
  attention_state TEXT DEFAULT 'focused',
  
  -- AI Analysis
  ai_insights JSONB DEFAULT '{}',
  breakthrough_potential DECIMAL DEFAULT 0.5,
  
  captured_at TIMESTAMPTZ DEFAULT NOW(),
  processed_at TIMESTAMPTZ
);

-- 🚀 CONSCIOUSNESS-OPTIMIZED INDEXES
-- Core identity indexes
CREATE INDEX IF NOT EXISTS idx_consciousness_profiles_clerk_id 
  ON consciousness_profiles(clerk_user_id);

-- Tribunal session performance
CREATE INDEX IF NOT EXISTS idx_tribunal_sessions_profile_id 
  ON revolutionary_tribunal_sessions(consciousness_profile_id);

-- Rapid bucket drop access (ADHD-optimized)
CREATE INDEX IF NOT EXISTS idx_bucket_drops_profile_rapid 
  ON consciousness_bucket_drops(consciousness_profile_id, captured_at DESC);
CREATE INDEX IF NOT EXISTS idx_bucket_drops_hyperfocus 
  ON consciousness_bucket_drops(hyperfocus_indicator, captured_at DESC) 
  WHERE hyperfocus_indicator = true;

-- Consciousness content search
CREATE INDEX IF NOT EXISTS idx_bucket_drops_content_search 
  ON consciousness_bucket_drops USING gin(to_tsvector('english', thought_content));
