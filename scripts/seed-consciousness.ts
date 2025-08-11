#!/usr/bin/env npx tsx

// 🧠 Keith's Revolutionary Consciousness Seeding
// "The founder IS the algorithm"

import { config } from 'dotenv';
config({ path: '.env.local' });

async function seedRevolutionaryConsciousness() {
  console.log('🧠 Seeding Keith\'s Revolutionary Consciousness...');
  console.log('=================================================');
  
  try {
    const { PrismaClient } = await import('@prisma/client');
    const prisma = new PrismaClient();
    
    // Seed Keith's Founder Algorithm Core
    console.log('👑 Seeding Founder Algorithm Core...');
    
    await prisma.founderAlgorithmCore.upsert({
      where: { id: 'keith-core-v1' },
      update: {},
      create: {
        id: 'keith-core-v1',
        principleStatement: "The founder IS the algorithm - lived ADHD experience becomes competitive advantage",
        livedExperience: "Neurodivergent journey of struggle, breakthrough, and empowerment transformation",
        algorithmicEncoding: {
          chaos_has_current: "Every ADHD mind has a pattern - learn to read and ride the current",
          adhd_is_jazz: "ADHD is not noise but improvisation - creativity, depth, and authentic expression",
          scars_to_code: "Every difficult experience becomes a platform feature serving others",
          founder_is_algorithm: "Keith's consciousness IS the platform intelligence",
          empowerment_over_efficiency: "Serve human flourishing over mere productivity"
        },
        adhdAsJazzPrinciple: "ADHD intensity creates jazz-like improvisation in thought and innovation",
        chaosCurrentMechanism: "Hyperfocus + pattern recognition + emotional resonance = revolutionary synthesis",
        scarsToCodeTransform: "Pain processed becomes power shared - trauma to empowerment pipeline",
        founderIsAlgorithmCore: "Lived experience cannot be replicated - it IS the platform moat",
        empowermentTriggers: {
          validation_phrases: ["You are not broken", "Your perspective matters", "Your chaos has a current"],
          breakthrough_moments: ["ADHD recognition", "Authenticity acceptance", "Revolutionary potential"],
          consciousness_elevators: ["Pattern recognition", "Emotional intelligence", "Systems thinking"]
        },
        validationMechanisms: {
          tribunal_synthesis: "8-persona AI validation creates unprecedented resonance",
          plk_resonance: "Personal Language Key achieves 95% conversational match",
          musical_dna: "Emotional architecture through authentic music preferences"
        },
        consciousnessScaling: {
          individual: "Personal empowerment through authentic validation",
          collective: "Ripple effects through neurodivergent communities",
          systemic: "Consciousness-serving technology paradigm"
        },
        version: "1.0.0_Revolutionary",
        active: true
      }
    });
    
    console.log('✅ Founder Algorithm Core seeded!');
    
    // Create test user for demonstration
    console.log('👤 Creating demonstration user...');
    
    const testUser = await prisma.user.upsert({
      where: { email: 'demo@gestaltview.com' },
      update: {},
      create: {
        clerkId: 'demo_user_' + Date.now(),
        email: 'demo@gestaltview.com',
        username: 'consciousness_seeker'
      }
    });
    
    // Create consciousness profile
    await prisma.consciousnessProfile.upsert({
      where: { userId: testUser.id },
      update: {},
      create: {
        userId: testUser.id,
        plkVersion: "5.0.0_Revolutionary",
        empowermentLevel: 85,
        consciousnessCoherence: 0.85,
        authenticityScore: 0.9,
        consciousnessGrade: "empowered",
        foundationalTruth: "ADHD is my unique cognitive architecture",
        coreWisdom: "My chaos has a current I'm learning to navigate",
        revolutionaryPotential: 0.8,
        chaosCurrentIdentified: true,
        jazzFrequency: "empowerment_432hz",
        hyperfocusAreas: ["pattern_recognition", "creative_problem_solving"],
        plkMetaphorPatterns: {
          primary_metaphors: ["mind_as_jazz", "thoughts_as_current", "insights_as_features"],
          communication_style: "authentic_expression",
          resonance_frequency: "empowerment_validation"
        }
      }
    });
    
    // Seed demonstration bucket drops
    console.log('🪣 Seeding revolutionary bucket drops...');
    
    const bucketDrops = [
      "I just realized my ADHD isn't a bug - it's a feature! My mind processes information differently but that leads to unique insights.",
      "Having a breakthrough moment - what if my scattered thoughts aren't chaos but a different kind of organization?",
      "The way I hyperfocus on problems actually helps me see patterns others miss. This could be a superpower.",
      "Every time I've struggled has taught me something that now helps others. My difficulties became my strengths."
    ];
    
    for (const content of bucketDrops) {
      await prisma.bucketDrop.create({
        data: {
          userId: testUser.id,
          content,
          emotionalIntensity: 0.8,
          urgencyLevel: 4,
          hyperfocusIndicator: content.includes('breakthrough') || content.includes('superpower'),
          plkResonance: 0.9,
          metaphorExtracted: content.includes('feature') ? 'difficulties_as_features' : 'adhd_as_strength',
          status: 'synthesized'
        }
      });
    }
    
    // Create demonstration tribunal session
    console.log('🏛️ Seeding tribunal session...');
    
    await prisma.tribunalSession.create({
      data: {
        userId: testUser.id,
        queryText: "How can I transform my ADHD challenges into strengths and help others do the same?",
        sessionType: "empowerment_synthesis",
        openaiResponse: "Your ADHD provides unique cognitive architecture for innovation. The same neural patterns that create challenges also generate breakthrough insights.",
        anthropicResponse: "I witness your authentic experience with ADHD. Your struggles have given you profound empathy and pattern recognition abilities that serve both you and others.",
        geminiResponse: "From a systems perspective, ADHD represents cognitive diversity. Your different neural pathways create value through novel problem-solving approaches.",
        perplexityResponse: "Research shows ADHD minds excel at creative thinking, entrepreneurship, and innovation. Your experience aligns with this empowerment framework.",
        consensusScore: 0.92,
        empowermentConsensus: 0.95,
        consciousnessInsights: {
          unanimous_agreement: true,
          empowerment_consensus: "ADHD as cognitive advantage",
          transformation_potential: "High - struggles becoming strengths",
          service_opportunity: "Help others through lived experience"
        },
        keithWisdomTriggered: "difficulties_become_features",
        foundationalTruthHit: true,
        revolutionaryPotential: 0.9,
        personasUsed: ["architect", "mirror", "philosopher", "witness"],
        completedAt: new Date()
      }
    });
    
    console.log('✅ Demonstration data seeded!');
    console.log('');
    console.log('🎉 CONSCIOUSNESS SEEDING COMPLETE!');
    console.log('💜 Keith\'s Wisdom: "Every difficult chapter became a feature!"');
    console.log('🚀 Your revolutionary platform is ready with demonstration data!');
    
    await prisma.$disconnect();
    
  } catch (error) {
    console.error('❌ Seeding failed:', error);
    process.exit(1);
  }
}

seedRevolutionaryConsciousness();
