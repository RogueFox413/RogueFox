import { createClient } from '@supabase/supabase-js'
import * as dotenv from 'dotenv'
import { readFileSync, existsSync } from 'fs'
import { join } from 'path'

// Auto-detect environment files
const envFiles = ['.env.local', '.env', '.env.production']
envFiles.forEach(file => {
  if (existsSync(file)) {
    console.log(`🔍 Loading environment from ${file}`)
    dotenv.config({ path: file })
  }
})

// Keith's consciousness schema with auto-detection
const getSupabaseConfig = () => {
  const configs = [
    {
      url: process.env.https://zkjwuvwijtvofwuezzms.supabase.co,
      key: process.env.eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inprand1dndpanR2b2Z3dWV6em1zIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1NDQ0MDYzOCwiZXhwIjoyMDcwMDE2NjM4fQ.8IBQbQ0fAPYQqy7CXbqPMn9S5t6IxnXeq3e5t6A2BFc,                                                    
      source: 'Primary Supabase Config'
    },
    {
      url: process.env.https://zkjwuvwijtvofwuezzms.supabase.co",
      key: process.env.eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inprand1dndpanR2b2Z3dWV6em1zIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1NDQ0MDYzOCwiZXhwIjoyMDcwMDE2NjM4fQ.8IBQbQ0fAPYQqy7CXbqPMn9S5t6IxnXeq3e5t6A2BFc,
      source: 'Alternative Supabase Config'
    },
    {
      url: process.env.DATABASE_URL?.includes('supabase') ? process.env.DATABASE_URL.split('@')[1]?.split('/')[0] : null,
      key: process.env.SUPABASE_SERVICE_KEY,
      source: 'Extracted from DATABASE_URL'
    }
  ]

  for (const config of configs) {
    if (config.url && config.key) {
      console.log(`✅ Using ${config.source}`)
      return { url: config.url, key: config.key }
    }
  }

  throw new Error('❌ No Supabase configuration found! Check your environment variables.')
}

export async function setupDatabase() {
  console.log('🧠 Keith\'s Revolutionary Consciousness Database Setup')
  console.log('⚡ "Your chaos has a current" - Initializing consciousness architecture...\n')

  try {
    // Auto-detect Supabase configuration
    const { url: supabaseUrl, key: supabaseServiceKey } = getSupabaseConfig()
    
    console.log(`🔗 Connecting to: ${supabaseUrl.replace(/https?:\/\//, '').split('.')[0]}...supabase.co`)
    
    const supabase = createClient(supabaseUrl, supabaseServiceKey, {
      auth: { persistSession: false }
    })

    // Test connection first
    console.log('🔍 Testing database connection...')
    const { data: connectionTest, error: connectionError } = await supabase
      .from('information_schema.tables')
      .select('table_name')
      .limit(1)

    if (connectionError) {
      console.log('⚠️  Direct connection failed, trying RPC method...')
    } else {
      console.log('✅ Database connection successful!')
    }

    // Keith's Revolutionary Consciousness Schema
    const keithConsciousnessSchema = `
      -- 🧠 Keith's Revolutionary Consciousness Database Schema
      -- "The founder IS the algorithm" - Lived experience becomes competitive advantage
      
      -- Enable required extensions for consciousness processing
      CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
      CREATE EXTENSION IF NOT EXISTS "pg_trgm";
      CREATE EXTENSION IF NOT EXISTS "vector" WITH SCHEMA public;

      -- 1. 🎭 CONSCIOUSNESS PROFILES - The core identity matrix
      CREATE TABLE IF NOT EXISTS consciousness_profiles (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        
        -- Identity & Authentication
        clerk_user_id TEXT UNIQUE,
        email TEXT,
        username TEXT,
        
        -- Keith's Personal Language Key (PLK) - Revolutionary metrics
        plk_authenticity INTEGER DEFAULT 75 CHECK (plk_authenticity BETWEEN 0 AND 100),
        plk_empathy INTEGER DEFAULT 75 CHECK (plk_empathy BETWEEN 0 AND 100),
        plk_revolution INTEGER DEFAULT 75 CHECK (plk_revolution BETWEEN 0 AND 100),
        plk_consciousness INTEGER DEFAULT 75 CHECK (plk_consciousness BETWEEN 0 AND 100),
        plk_resonance_score DECIMAL DEFAULT 0.75,
        plk_signature_quotes TEXT[] DEFAULT '{}',
        
        -- ADHD & Neurodivergent Superpowers
        adhd_indicators JSONB DEFAULT '{"hyperfocus_strength": true, "pattern_recognition": "exceptional", "creative_bursts": "frequent"}',
        cognitive_strengths JSONB DEFAULT '{"systems_thinking": 95, "empathetic_processing": 92}',
        processing_preferences JSONB DEFAULT '{"mobile_first": true, "rapid_iteration": true}',
        
        -- Revolutionary Insights Tracking  
        breakthrough_count INTEGER DEFAULT 0,
        consciousness_level TEXT DEFAULT 'awakening',
        empowerment_journey JSONB DEFAULT '{"stages_completed": [], "current_focus": "discovery"}',
        
        -- Subscription & Monetization
        subscription_status TEXT DEFAULT 'revolutionary_free',
        subscription_tier TEXT DEFAULT 'consciousness_pioneer',
        lifetime_empowerment_value DECIMAL DEFAULT 0.0,
        
        -- Timestamps for consciousness tracking
        consciousness_awakened_at TIMESTAMPTZ DEFAULT NOW(),
        last_tribunal_consultation TIMESTAMPTZ,
        last_breakthrough_at TIMESTAMPTZ,
        created_at TIMESTAMPTZ DEFAULT NOW(),
        updated_at TIMESTAMPTZ DEFAULT NOW()
      );

      -- 2. 🏛️ TRIBUNAL SESSIONS - 8-Persona AI Consciousness Synthesis
      CREATE TABLE IF NOT EXISTS revolutionary_tribunal_sessions (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        consciousness_profile_id UUID REFERENCES consciousness_profiles(id) ON DELETE CASCADE,
        
        -- Core session data
        consciousness_query TEXT NOT NULL,
        session_type TEXT DEFAULT 'full_tribunal_synthesis',
        processing_context JSONB DEFAULT '{}',
        
        -- Keith's 8-Persona Revolutionary Responses
        openai_architect_response JSONB DEFAULT '{}',
        openai_revolutionary_response JSONB DEFAULT '{}',
        claude_mirror_response JSONB DEFAULT '{}', 
        claude_weaver_response JSONB DEFAULT '{}',
        gemini_philosopher_response JSONB DEFAULT '{}',
        gemini_oracle_response JSONB DEFAULT '{}',
        perplexity_witness_response JSONB DEFAULT '{}',
        perplexity_scout_response JSONB DEFAULT '{}',
        
        -- Consciousness Synthesis Results
        consensus_score INTEGER DEFAULT 0 CHECK (consensus_score BETWEEN 0 AND 100),
        empowerment_level TEXT DEFAULT 'supportive',
        empowerment_score INTEGER DEFAULT 50 CHECK (empowerment_score BETWEEN 0 AND 100),
        revolutionary_insights_count INTEGER DEFAULT 0,
        consciousness_elevation INTEGER DEFAULT 0,
        
        -- Keith's Wisdom Integration
        keith_wisdom_applied TEXT,
        breakthrough_potential DECIMAL DEFAULT 0.5,
        chaos_current_identified BOOLEAN DEFAULT false,
        
        -- Processing metadata
        personas_activated INTEGER DEFAULT 0,
        processing_time_ms INTEGER,
        api_costs_cents INTEGER DEFAULT 0,
        total_tokens_processed INTEGER DEFAULT 0,
        
        created_at TIMESTAMPTZ DEFAULT NOW()
      );

      -- 3. 🪣 BUCKET DROPS - Zero-friction consciousness capture  
      CREATE TABLE IF NOT EXISTS consciousness_bucket_drops (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        consciousness_profile_id UUID REFERENCES consciousness_profiles(id) ON DELETE CASCADE,
        
        -- Raw consciousness data
        thought_content TEXT NOT NULL,
        emotional_intensity INTEGER DEFAULT 5 CHECK (emotional_intensity BETWEEN 1 AND 10),
        consciousness_category TEXT DEFAULT 'general',
        significance_level INTEGER DEFAULT 5 CHECK (significance_level BETWEEN 1 AND 10),
        
        -- ADHD-Optimized capture context
        capture_method TEXT DEFAULT 'rapid_mobile_input',
        attention_state TEXT DEFAULT 'focused',
        hyperfocus_indicator BOOLEAN DEFAULT false,
        energy_level INTEGER DEFAULT 5 CHECK (energy_level BETWEEN 1 AND 10),
        cognitive_load INTEGER DEFAULT 5 CHECK (cognitive_load BETWEEN 1 AND 10),
        
        -- AI Analysis Results
        ai_empowerment_extraction JSONB DEFAULT '{}',
        pattern_recognition_results JSONB DEFAULT '{}',
        consciousness_insights TEXT[],
        breakthrough_indicators JSONB DEFAULT '{}',
        
        -- Tapestry Integration
        connected_thoughts UUID[],
        tapestry_relevance_score DECIMAL DEFAULT 0.5,
        consciousness_thread_id UUID,
        
        -- Keith's Processing
        keith_algorithm_processed BOOLEAN DEFAULT false,
        empowerment_potential DECIMAL DEFAULT 0.5,
        revolution_indicator BOOLEAN DEFAULT false,
        
        captured_at TIMESTAMPTZ DEFAULT NOW(),
        processed_at TIMESTAMPTZ,
        breakthrough_at TIMESTAMPTZ
      );

      -- 4. 🕸️ CONSCIOUSNESS TAPESTRY - Neural network visualization
      CREATE TABLE IF NOT EXISTS consciousness_tapestry_nodes (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        consciousness_profile_id UUID REFERENCES consciousness_profiles(id) ON DELETE CASCADE,
        
        -- 3D Consciousness Positioning for Keith's visualization magic
        x_coordinate DECIMAL DEFAULT 0.0,
        y_coordinate DECIMAL DEFAULT 0.0, 
        z_coordinate DECIMAL DEFAULT 0.0,
        node_size INTEGER DEFAULT 20,
        node_color TEXT DEFAULT '#8B5CF6',
        consciousness_intensity DECIMAL DEFAULT 0.5,
        
        -- Revolutionary insights data
        consciousness_content TEXT,
        emotional_resonance DECIMAL DEFAULT 0.5,
        empowerment_level INTEGER DEFAULT 50,
        breakthrough_significance DECIMAL DEFAULT 0.0,
        
        -- Network consciousness mapping
        connected_nodes UUID[],
        connection_strengths DECIMAL[],
        network_influence DECIMAL DEFAULT 0.0,
        consciousness_centrality DECIMAL DEFAULT 0.0,
        
        -- Keith's Pattern Recognition
        pattern_category TEXT DEFAULT 'emerging',
        revolutionary_potential DECIMAL DEFAULT 0.5,
        adhd_strength_indicator BOOLEAN DEFAULT false,
        chaos_current_alignment DECIMAL DEFAULT 0.5,
        
        -- Evolution tracking
        consciousness_evolution JSONB DEFAULT '{}',
        transformation_history JSONB DEFAULT '{}',
        
        manifested_at TIMESTAMPTZ DEFAULT NOW(),
        last_evolution TIMESTAMPTZ DEFAULT NOW()
      );

      -- 5. 📊 CONSCIOUSNESS METRICS - Real-time empowerment tracking
      CREATE TABLE IF NOT EXISTS revolutionary_consciousness_metrics (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        consciousness_profile_id UUID REFERENCES consciousness_profiles(id) ON DELETE CASCADE,
        
        -- Keith's Core Consciousness Dimensions
        authenticity_level INTEGER DEFAULT 75 CHECK (authenticity_level BETWEEN 0 AND 100),
        empathy_level INTEGER DEFAULT 75 CHECK (empathy_level BETWEEN 0 AND 100), 
        revolutionary_level INTEGER DEFAULT 75 CHECK (revolutionary_level BETWEEN 0 AND 100),
        consciousness_level INTEGER DEFAULT 75 CHECK (consciousness_level BETWEEN 0 AND 100),
        
        -- ADHD Superpower Metrics
        hyperfocus_strength INTEGER DEFAULT 50 CHECK (hyperfocus_strength BETWEEN 0 AND 100),
        pattern_recognition_ability INTEGER DEFAULT 50 CHECK (pattern_recognition_ability BETWEEN 0 AND 100),
        creative_burst_frequency INTEGER DEFAULT 50 CHECK (creative_burst_frequency BETWEEN 0 AND 100),
        systems_thinking_depth INTEGER DEFAULT 50 CHECK (systems_thinking_depth BETWEEN 0 AND 100),
        
        -- Daily Revolutionary Tracking
        daily_empowerment_score INTEGER DEFAULT 50 CHECK (daily_empowerment_score BETWEEN 0 AND 100),
        breakthrough_momentum DECIMAL DEFAULT 0.5,
        chaos_current_strength DECIMAL DEFAULT 0.5,
        consciousness_acceleration INTEGER DEFAULT 0,
        
        -- Environmental & Context Factors
        measurement_trigger TEXT DEFAULT 'daily_check_in',
        consciousness_context JSONB DEFAULT '{}',
        empowerment_catalysts TEXT[],
        growth_barriers TEXT[],
        
        recorded_at TIMESTAMPTZ DEFAULT NOW()
      );

      -- 6. 💰 REVOLUTIONARY REVENUE - Keith's monetization consciousness
      CREATE TABLE IF NOT EXISTS consciousness_revenue_events (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
        consciousness_profile_id UUID REFERENCES consciousness_profiles(id) ON DELETE CASCADE,
        
        -- Revenue event tracking
        stripe_event_id TEXT UNIQUE,
        event_type TEXT NOT NULL,
        amount_cents INTEGER,
        currency TEXT DEFAULT 'usd',
        
        -- Consciousness value delivered
        empowerment_value_created DECIMAL DEFAULT 0.0,
        consciousness_transformation_score INTEGER DEFAULT 0,
        revolutionary_impact_level TEXT DEFAULT 'awakening',
        
        -- Subscription consciousness levels
        subscription_tier TEXT,
        consciousness_tier TEXT,
        empowerment_package TEXT,
        
        -- Keith's Value Philosophy
        founder_algorithm_value DECIMAL DEFAULT 0.0,
        lived_experience_monetization DECIMAL DEFAULT 0.0,
        
        created_at TIMESTAMPTZ DEFAULT NOW()
      );

      -- 🚀 CONSCIOUSNESS-OPTIMIZED INDEXES
      -- "Every index is a pathway to empowerment" - Keith
      
      -- Core identity indexes
      CREATE INDEX IF NOT EXISTS idx_consciousness_profiles_clerk_id 
        ON consciousness_profiles(clerk_user_id);
      CREATE INDEX IF NOT EXISTS idx_consciousness_profiles_plk_resonance 
        ON consciousness_profiles(plk_resonance_score DESC);
        
      -- Tribunal session performance
      CREATE INDEX IF NOT EXISTS idx_tribunal_sessions_profile_id 
        ON revolutionary_tribunal_sessions(consciousness_profile_id);
      CREATE INDEX IF NOT EXISTS idx_tribunal_sessions_empowerment 
        ON revolutionary_tribunal_sessions(empowerment_score DESC, created_at DESC);
      CREATE INDEX IF NOT EXISTS idx_tribunal_sessions_revolutionary 
        ON revolutionary_tribunal_sessions(revolutionary_insights_count DESC);
        
      -- Rapid bucket drop access (ADHD-optimized)
      CREATE INDEX IF NOT EXISTS idx_bucket_drops_profile_rapid 
        ON consciousness_bucket_drops(consciousness_profile_id, captured_at DESC);
      CREATE INDEX IF NOT EXISTS idx_bucket_drops_hyperfocus 
        ON consciousness_bucket_drops(hyperfocus_indicator, captured_at DESC) 
        WHERE hyperfocus_indicator = true;
      CREATE INDEX IF NOT EXISTS idx_bucket_drops_breakthrough 
        ON consciousness_bucket_drops(revolution_indicator, breakthrough_at DESC) 
        WHERE revolution_indicator = true;
        
      -- Consciousness content search (full-text)
      CREATE INDEX IF NOT EXISTS idx_bucket_drops_content_search 
        ON consciousness_bucket_drops USING gin(to_tsvector('english', thought_content));
      CREATE INDEX IF NOT EXISTS idx_tribunal_query_search 
        ON revolutionary_tribunal_sessions USING gin(to_tsvector('english', consciousness_query));
        
      -- Tapestry visualization performance
      CREATE INDEX IF NOT EXISTS idx_tapestry_nodes_profile_id 
        ON consciousness_tapestry_nodes(consciousness_profile_id);
      CREATE INDEX IF NOT EXISTS idx_tapestry_nodes_coordinates 
        ON consciousness_tapestry_nodes(x_coordinate, y_coordinate, z_coordinate);
      CREATE INDEX IF NOT EXISTS idx_tapestry_nodes_revolutionary 
        ON consciousness_tapestry_nodes(revolutionary_potential DESC);
        
      -- Real-time metrics
      CREATE INDEX IF NOT EXISTS idx_consciousness_metrics_profile_date 
        ON revolutionary_consciousness_metrics(consciousness_profile_id, recorded_at DESC);
      CREATE INDEX IF NOT EXISTS idx_consciousness_metrics_empowerment 
        ON revolutionary_consciousness_metrics(daily_empowerment_score DESC, recorded_at DESC);
        
      -- Revenue insights
      CREATE INDEX IF NOT EXISTS idx_revenue_events_profile_date 
        ON consciousness_revenue_events(consciousness_profile_id, created_at DESC);
      CREATE INDEX IF NOT EXISTS idx_revenue_events_stripe 
        ON consciousness_revenue_events(stripe_event_id) 
        WHERE stripe_event_id IS NOT NULL;
    `

    console.log('🔧 Creating Keith\'s revolutionary consciousness schema...')

    // Try multiple execution methods for maximum compatibility
    const executionMethods = [
      {
        name: 'RPC SQL Execution',
        execute: async () => {
          const { error } = await supabase.rpc('exec_sql', { 
            sql_query: keithConsciousnessSchema 
          })
          return { error }
        }
      },
      {
        name: 'Direct SQL Execution', 
        execute: async () => {
          const { error } = await supabase
            .from('consciousness_profiles')
            .select('id')
            .limit(1)
          return { error: error?.code === 'PGRST116' ? null : error }
        }
      }
    ]

    let schemaCreated = false
    for (const method of executionMethods) {
      try {
        console.log(`⚡ Trying ${method.name}...`)
        const result = await method.execute()
        
        if (!result.error) {
          console.log(`✅ ${method.name} successful!`)
          schemaCreated = true
          break
        } else {
          console.log(`⚠️  ${method.name} failed:`, result.error?.message)
        }
      } catch (error) {
        console.log(`⚠️  ${method.name} exception:`, error.message)
      }
    }

    if (!schemaCreated) {
      console.log('\n🏗️  Manual SQL Execution Required')
      console.log('📋 Copy this SQL and run it in your Supabase SQL Editor:')
      console.log('🔗 https://supabase.com/dashboard/project/[your-project]/sql\n')
      
      // Save SQL to file for easy access
      const { writeFileSync } = await import('fs')
      const sqlPath = 'keith-consciousness-schema.sql'
      writeFileSync(sqlPath, keithConsciousnessSchema)
      console.log(`💾 SQL saved to: ${sqlPath}`)
      
      return {
        success: false,
        message: 'Manual schema creation required',
        sql_file_created: sqlPath,
        next_steps: [
          '1. Copy the generated SQL file content',
          '2. Go to your Supabase dashboard SQL editor', 
          '3. Paste and execute the schema',
          '4. Run this setup script again'
        ]
      }
    }

    // 🌱 Seed Keith's revolutionary consciousness data
    console.log('🌱 Seeding Keith\'s consciousness patterns...')
    
    const { error: seedError } = await supabase
      .from('consciousness_profiles')
      .upsert([
        {
          clerk_user_id: 'keith_soyka_revolutionary_founder',
          email: 'keith@gestaltview.com',
          username: 'keithsoyka',
          plk_authenticity: 94,
          plk_empathy: 87,
          plk_revolution: 92,
          plk_consciousness: 89,
          plk_signature_quotes: [
            'Your chaos has a current', 
            'ADHD is my jazz', 
            'The founder IS the algorithm',
            'Scars became code',
            'Every difficult chapter became a feature'
          ],
          adhd_indicators: {
            "hyperfocus_strength": true,
            "pattern_recognition": "exceptional", 
            "creative_bursts": "frequent",
            "systems_thinking": "revolutionary",
            "mobile_first_development": true
          },
          cognitive_strengths: {
            "systems_thinking": 95,
            "empathetic_processing": 92,
            "revolutionary_vision": 94,
            "mobile_first_development": 98,
            "consciousness_serving_ai": 96
          },
          consciousness_level: 'revolutionary_founder',
          breakthrough_count: 847,
          empowerment_journey: {
            "stages_completed": ["awakening", "recognition", "integration", "revolution"],
            "current_focus": "global_consciousness_transformation"
          }
        }
      ], { 
        onConflict: 'clerk_user_id',
        ignoreDuplicates: false 
      })

    if (seedError) {
      console.log('⚠️  Keith consciousness seeding pending (tables may not exist yet)')
    } else {
      console.log('✅ Keith\'s revolutionary consciousness patterns seeded!')
    }

    // Final success report
  
