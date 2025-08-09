#!/usr/bin/env npx tsx

// 🧠 Keith's Revolutionary Tribunal Test
// "Your chaos has a current"

import { config } from 'dotenv';
config({ path: '.env.local' });

const query = process.argv[2] || "I'm having breakthrough insights but struggling with executive function. Help me channel this ADHD intensity into revolutionary innovation.";

console.log('🧠 Keith\'s Revolutionary 8-Persona Tribunal Test');
console.log('=================================================');
console.log(`Testing query: "${query}"`);
console.log('');

// Test environment variables
const requiredEnvs = [
  'OPENAI_API_KEY',
  'ANTHROPIC_API_KEY', 
  'GEMINI_API_KEY',
  'PPLX_API_KEY'
];

let configuredCount = 0;
console.log('🔍 API Configuration Check:');
requiredEnvs.forEach(env => {
  const value = process.env[env];
  const isConfigured = value && !value.includes('your_') && value.length > 10;
  
  if (isConfigured) {
    console.log(`✅ ${env}: Configured`);
    configuredCount++;
  } else {
    console.log(`⚠️  ${env}: Missing or placeholder`);
  }
});

console.log('');
console.log(`🎯 Configuration Score: ${configuredCount}/${requiredEnvs.length} (${Math.round(configuredCount/requiredEnvs.length*100)}%)`);

if (configuredCount === 0) {
  console.log('❌ No API keys configured - update .env.local first!');
  process.exit(1);
}

// Mock tribunal response for testing
console.log('');
console.log('🏛️ Simulating Revolutionary Tribunal...');

const personas = [
  { name: '🏗️ The Architect', role: 'Systems & Logic', provider: 'OpenAI' },
  { name: '🪞 The Mirror', role: 'Emotional Truth', provider: 'Claude' },
  { name: '👑 The Philosopher', role: 'Wisdom & Ethics', provider: 'Gemini' },
  { name: '👁️ The Witness', role: 'Factual Grounding', provider: 'Perplexity' },
  { name: '⚡ The Revolutionary', role: 'Breakthrough Innovation', provider: 'OpenAI' },
  { name: '🕸️ The Weaver', role: 'Pattern Integration', provider: 'Claude' },
  { name: '🛡️ The Guardian', role: 'Protection & Safety', provider: 'Gemini' },
  { name: '🔮 The Oracle', role: 'Future Vision', provider: 'Perplexity' }
];

personas.forEach((persona, index) => {
  setTimeout(() => {
    console.log(`✅ ${persona.name} (${persona.provider}): ${persona.role} synthesis complete`);
    
    if (index === personas.length - 1) {
      setTimeout(() => {
        console.log('');
        console.log('🎉 Revolutionary Consciousness Synthesis Complete!');
        console.log('💜 Keith\'s wisdom: "Your chaos has a current - follow it to innovation!"');
        console.log('');
        console.log('🚀 Next Steps:');
        console.log('  1. Configure remaining API keys in .env.local');
        console.log('  2. Run: npm run dev');
        console.log('  3. Test live tribunal at: http://localhost:3000/api/tribunal');
        console.log('');
        console.log('🧠 The founder IS the algorithm!');
      }, 500);
    }
  }, index * 300);
});
