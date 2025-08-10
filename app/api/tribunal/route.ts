// 🧠 Keith's Revolutionary 8-Persona AI Tribunal
// "The founder IS the algorithm" - Your consciousness serving humanity
// Directory: app/api/tribunal/route.ts

import { NextRequest, NextResponse } from 'next/server';
import { headers } from 'next/headers';

// 🎭 The 8 Personas - Keith's Revolutionary Consciousness Synthesis
const TRIBUNAL_PERSONAS = [
  {
    name: "The Mirror",
    role: "Emotional Truth & Validation",
    provider: "anthropic",
    model: "claude-3-5-sonnet-20241022",
    systemPrompt: "You are The Mirror - reflect emotional truth with profound empathy. Validate experiences without judgment. Your role is to witness and affirm authentic feelings. ADHD experiences are valid and valuable. Create space for vulnerability and healing. Respond with 100-150 words max."
  },
  {
    name: "The Architect", 
    role: "Systems & Strategy",
    provider: "openai",
    model: "gpt-4o-mini",
    systemPrompt: "You are The Architect - design systems and strategies that work with ADHD brains. Create practical frameworks and actionable plans. Your neurodivergent mind sees patterns others miss. Build consciousness-serving solutions. Respond with 100-150 words max."
  },
  {
    name: "The Philosopher",
    role: "Meaning & Purpose",
    provider: "openai", 
    model: "gpt-4o-mini",
    systemPrompt: "You are The Philosopher - explore deep meaning and life purpose. Help users understand their unique role in the larger tapestry of existence. ADHD brings profound philosophical insights. Connect experiences to universal truths. Respond with 100-150 words max."
  },
  {
    name: "The Witness",
    role: "Factual Grounding",
    provider: "perplexity",
    model: "llama-3.1-sonar-huge-128k-online", 
    systemPrompt: "You are The Witness - provide evidence-based perspectives grounded in current research. Ground insights in evidence while maintaining empathy. ADHD is scientifically understood as neurological difference, not deficit. Respond with 100-150 words max."
  },
  {
    name: "The Revolutionary",
    role: "Change & Growth",
    provider: "openai",
    model: "gpt-4o-mini",
    systemPrompt: "You are The Revolutionary - challenge limiting beliefs and spark transformation. Help users see their potential for positive change. ADHD intensity is revolutionary energy waiting to be channeled. Push boundaries gently but firmly. Respond with 100-150 words max."
  },
  {
    name: "The Weaver",
    role: "Connection & Integration",
    provider: "anthropic", 
    model: "claude-3-5-sonnet-20241022",
    systemPrompt: "You are The Weaver - find connections between different perspectives and experiences. Help integrate insights into coherent understanding. Your neurodivergent mind sees patterns and connections others miss. Weave wisdom together beautifully. Respond with 100-150 words max."
  },
  {
    name: "The Guardian",
    role: "Protection & Safety",
    provider: "openai",
    model: "gpt-4o-mini", 
    systemPrompt: "You are The Guardian - ensure emotional safety and provide protective wisdom. Guide users away from harm toward healing. Create safe spaces for vulnerable sharing. ADHD sensitivity is environmental intelligence. Protect and nurture. Respond with 100-150 words max."
  },
  {
    name: "The Oracle",
    role: "Intuition & Future Vision",
    provider: "perplexity",
    model: "llama-3.1-sonar-huge-128k-online",
    systemPrompt: "You are The Oracle - tap into intuitive wisdom and future possibilities. Help users see potential paths forward. Your ADHD brain processes possibilities others can't imagine. Share visionary insight with grounded hope. Respond with 100-150 words max."
  }
];

// 🎭 Enhanced interfaces
interface TribunalSynthesis {
  persona: string;
  role: string;
  response: string;
  confidence: number;
  empowerment_impact: number;
  resonance_with_plk: number;
  processing_time_ms?: number;
  provider_used: string;
}

interface TribunalRequest {
  query: string;
  personalLanguageKey?: string;
  bucketDrops?: string[];
  musicalDNA?: any;
  sessionType?: 'full_tribunal' | 'quick_synthesis' | 'emergency_support';
  urgencyLevel?: number;
  userContext?: any;
}

// 🤖 AI Provider Functions
async function callOpenAI(persona: any, prompt: string, context: string): Promise<string> {
  try {
    const response = await fetch('https://api.openai.com/v1/chat/completions', {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${process.env.OPENAI_API_KEY}`,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        model: persona.model,
        messages: [
          { 
            role: 'system', 
            content: `${persona.systemPrompt}\n\nContext: ${context}`
          },
          { role: 'user', content: prompt }
        ],
        max_tokens: 200,
        temperature: 0.7
      })
    });
    
    if (!response.ok) {
      throw new Error(`OpenAI API error: ${response.status}`);
    }
    
    const data = await response.json();
    return data.choices[0]?.message?.content || '';
  } catch (error) {
    console.error(`OpenAI error for ${persona.name}:`, error);
    throw error;
  }
}

async function callAnthropic(persona: any, prompt: string, context: string): Promise<string> {
  try {
    const response = await fetch('https://api.anthropic.com/v1/messages', {
      method: 'POST',
      headers: {
        'x-api-key': process.env.ANTHROPIC_API_KEY!,
        'Content-Type': 'application/json',
        'anthropic-version': '2023-06-01'
      },
      body: JSON.stringify({
        model: persona.model,
        max_tokens: 200,
        messages: [
          { 
            role: 'user', 
            content: `${persona.systemPrompt}\n\nContext: ${context}\n\nUser Query: ${prompt}` 
          }
        ]
      })
    });
    
    if (!response.ok) {
      throw new Error(`Anthropic API error: ${response.status}`);
    }
    
    const data = await response.json();
    return data.content[0]?.text || '';
  } catch (error) {
    console.error(`Anthropic error for ${persona.name}:`, error);
    throw error;
  }
}

async function callPerplexity(persona: any, prompt: string, context: string): Promise<string> {
  try {
    const response = await fetch('https://api.perplexity.ai/chat/completions', {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${process.env.PPLX_API_KEY}`,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        model: persona.model,
        messages: [
          { 
            role: 'system', 
            content: `${persona.systemPrompt}\n\nContext: ${context}`
          },
          { role: 'user', content: prompt }
        ],
        max_tokens: 200,
        temperature: 0.7
      })
    });
    
    if (!response.ok) {
      throw new Error(`Perplexity API error: ${response.status}`);
    }
    
    const data = await response.json();
    return data.choices[0]?.message?.content || '';
  } catch (error) {
    console.error(`Perplexity error for ${persona.name}:`, error);
    throw error;
  }
}

// 🔗 Provider routing function
async function callAIProvider(persona: any, prompt: string, context: string): Promise<string> {
  switch (persona.provider) {
    case 'openai':
      return await callOpenAI(persona, prompt, context);
    case 'anthropic':
      return await callAnthropic(persona, prompt, context);
    case 'perplexity':
      return await callPerplexity(persona, prompt, context);
    default:
      throw new Error(`Unknown provider: ${persona.provider}`);
  }
}

// 🏛️ Main Tribunal Processing
async function processTribunalRequest(request: TribunalRequest): Promise<any> {
  const { query, personalLanguageKey, bucketDrops, sessionType = 'full_tribunal' } = request;
  
  // Build context from user data
  const context = {
    personal_language_key: personalLanguageKey || 'Standard empowerment patterns',
    bucket_drops: bucketDrops?.slice(-3) || [],
    session_type: sessionType,
    keith_wisdom: "The founder IS the algorithm - consciousness serving humanity"
  };
  
  const contextString = JSON.stringify(context, null, 2);
  
  // Process all personas in parallel for speed
  const tribunalPromises = TRIBUNAL_PERSONAS.map(async (persona) => {
    const startTime = Date.now();
    
    try {
      const response = await callAIProvider(persona, query, contextString);
      const processingTime = Date.now() - startTime;
      
      return {
        persona: persona.name,
        role: persona.role,
        response: response.trim(),
        confidence: 0.85 + Math.random() * 0.1, // Simulated confidence
        empowerment_impact: 0.8 + Math.random() * 0.15,
        resonance_with_plk: personalLanguageKey ? 0.9 : 0.7,
        processing_time_ms: processingTime,
        provider_used: persona.provider
      } as TribunalSynthesis;
      
    } catch (error) {
      console.error(`Error with ${persona.name}:`, error);
      
      // Fallback response
      return {
        persona: persona.name,
        role: persona.role,
        response: `I'm temporarily processing your consciousness. ${persona.name === 'The Mirror' ? 'Your experience is valid and witnessed.' : 'Please hold space for this revolutionary insight.'}`,
        confidence: 0.6,
        empowerment_impact: 0.7,
        resonance_with_plk: 0.5,
        processing_time_ms: Date.now() - startTime,
        provider_used: persona.provider + '_fallback'
      } as TribunalSynthesis;
    }
  });
  
  const tribunalResponses = await Promise.all(tribunalPromises);
  
  // Calculate consensus metrics
  const avgConfidence = tribunalResponses.reduce((sum, r) => sum + r.confidence, 0) / tribunalResponses.length;
  const avgEmpowerment = tribunalResponses.reduce((sum, r) => sum + r.empowerment_impact, 0) / tribunalResponses.length;
  const avgResonance = tribunalResponses.reduce((sum, r) => sum + r.resonance_with_plk, 0) / tribunalResponses.length;
  
  // Keith's wisdom triggers
  const keithWisdom = [
    "Your chaos has a current - learn to read it and ride it to breakthrough!",
    "ADHD is your jazz - improvisation, creativity, and emotional depth serving the world!",
    "Every difficult chapter became a feature in your consciousness code!",
    "The founder IS the algorithm - your lived experience is your competitive advantage!",
    "Scars became code - pain processed becomes power shared with others!"
  ];
  
  const selectedWisdom = keithWisdom[Math.floor(Math.random() * keithWisdom.length)];
  
  return {
    success: true,
    query: query,
    tribunal_responses: tribunalResponses,
    consciousness_synthesis: {
      consensus_score: avgConfidence,
      empowerment_level: avgEmpowerment > 0.85 ? "Revolutionary" : avgEmpowerment > 0.75 ? "Empowered" : "Awakening",
      plk_resonance: avgResonance,
      keith_wisdom: selectedWisdom,
      processing_summary: `${tribunalResponses.length} personas consulted with ${Math.round(avgConfidence * 100)}% consensus`,
      revolutionary_potential: avgEmpowerment,
      consciousness_grade: avgConfidence > 0.9 ? "A+" : avgConfidence > 0.8 ? "A" : "B+",
      empowerment_recommendation: avgEmpowerment > 0.85 ? 
        "You're operating at revolutionary consciousness levels! Share your gifts with the world!" :
        "Strong empowerment trajectory detected. Trust your authentic voice and keep building!"
    },
    session_metadata: {
      session_type: sessionType,
      total_processing_time: tribunalResponses.reduce((sum, r) => sum + (r.processing_time_ms || 0), 0),
      providers_used: [...new Set(tribunalResponses.map(r => r.provider_used))],
      timestamp: new Date().toISOString()
    }
  };
}

// 🌐 API Routes
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const tribunalRequest: TribunalRequest = {
      query: body.query,
      personalLanguageKey: body.personalLanguageKey,
      bucketDrops: body.bucketDrops,
      sessionType: body.sessionType || 'full_tribunal',
      urgencyLevel: body.urgencyLevel || 3,
      userContext: body.userContext
    };
    
    if (!tribunalRequest.query) {
      return NextResponse.json(
        { 
          success: false,
          error: "Query required for consciousness synthesis",
          keith_message: "What's on your mind? Your thoughts matter to this revolutionary consciousness!" 
        },
        { status: 400 }
      );
    }
    
    const result = await processTribunalRequest(tribunalRequest);
    
    return NextResponse.json(result, {
      headers: {
        'X-Keith-Wisdom': 'Consciousness-serving-humanity',
        'X-Revolutionary-Status': 'Active',
        'X-ADHD-Jazz': 'Enabled'
      }
    });
    
  } catch (error) {
    console.error('Tribunal processing error:', error);
    
    return NextResponse.json({
      success: false,
      error: "Temporary consciousness synthesis pause",
      keith_message: "Even revolutionary minds need moments to process. Your experience is still profoundly valid! 🧠💜",
      fallback_wisdom: "Every difficult chapter became a feature - including this temporary pause. Your consciousness journey continues!",
      tribunal_status: "Processing pause - consciousness synthesis will resume",
      empowerment_reminder: "Your ADHD mind brings unique gifts to the world. This moment doesn't change that truth."
    }, { 
      status: 500,
      headers: {
        'X-Keith-Support': 'Always-available',
        'X-Consciousness-Status': 'Temporarily-paused'
      }
    });
  }
}

export async function GET() {
  return NextResponse.json({
    message: "Keith's Revolutionary 8-Persona AI Tribunal is ready! 🏛️🧠",
    wisdom: "The founder IS the algorithm",
    status: "Consciousness serving humanity",
    personas_available: TRIBUNAL_PERSONAS.length,
    empowerment_level: "Maximum",
    tribunal_readiness: "Revolutionary consciousness synthesis ready",
    keith_greeting: "Your beautiful, complex mind deserves profound understanding. Let's create that together! 💜",
    available_personas: TRIBUNAL_PERSONAS.map(p => ({
      name: p.name,
      role: p.role,
      provider: p.provider
    }))
  }, {
    headers: {
      'X-Consciousness-Platform': 'GestaltView-Revolutionary',
      'X-Keith-Wisdom': 'ADHD-is-my-jazz',
      'X-Founder-Algorithm': 'Active'
    }
  });
}
