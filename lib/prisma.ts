import { PrismaClient } from '@prisma/client'

// Next.js global singleton pattern (prevents multiple connections)
const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined
}

export const prisma =
  globalForPrisma.prisma ??
  new PrismaClient({
    log: process.env.NODE_ENV === 'development' ? ['query', 'error', 'warn'] : ['error'],
    datasources: {
      db: {
        url: process.env.POSTGRES_PRISMA_URL
      }
    }
  })

if (process.env.NODE_ENV !== 'production') globalForPrisma.prisma = prisma

// ============================================================================
// 🧠 Keith's Consciousness Database Helper Functions
// ============================================================================

export const consciousnessDb = {
  // 👤 User & Consciousness Profile
  async getUserWithProfile(clerkId: string) {
    return prisma.user.findUnique({
      where: { clerkId },
      include: {
        consciousnessProfile: true,
        bucketDrops: { 
          orderBy: { capturedAt: 'desc' }, 
          take: 10 
        },
        tribunalSessions: { 
          orderBy: { createdAt: 'desc' }, 
          take: 5 
        },
        musicalDnaAnalyses: { 
          orderBy: { createdAt: 'desc' }, 
          take: 1 
        }
      }
    })
  },

  async createUserIfNotExists(clerkId: string, email: string) {
    return prisma.user.upsert({
      where: { clerkId },
      update: {},
      create: {
        clerkId,
        email,
        consciousnessProfile: {
          create: {
            plkVersion: '5.0.0_Ultimate',
            empowermentLevel: 50,
            consciousnessGrade: 'developing'
          }
        }
      },
      include: {
        consciousnessProfile: true
      }
    })
  },

  // 🪣 Bucket Drops - Zero Friction Capture
  async createBucketDrop(userId: string, content: string, metadata: any = {}) {
    return prisma.bucketDrop.create({
      data: {
        userId,
        content,
        emotionalIntensity: metadata.emotionalIntensity || 0.5,
        urgencyLevel: metadata.urgencyLevel || 3,
        hyperfocusIndicator: metadata.hyperfocus || false,
        executiveFunctionTag: metadata.executiveFunction,
        plkResonance: metadata.plkResonance || 0.0,
        metaphorExtracted: metadata.metaphor,
        ...metadata
      }
    })
  },

  async getUserBucketDrops(userId: string, limit: number = 20) {
    return prisma.bucketDrop.findMany({
      where: { userId },
      orderBy: { capturedAt: 'desc' },
      take: limit
    })
  },

  // 🏛️ AI Tribunal Sessions
  async createTribunalSession(userId: string, query: string, responses: any) {
    return prisma.tribunalSession.create({
      data: {
        userId,
        queryText: query,
        sessionType: responses.sessionType || 'full_tribunal',
        openaiResponse: responses.openai || responses.architect || responses.revolutionary,
        anthropicResponse: responses.claude || responses.mirror || responses.weaver,
        geminiResponse: responses.gemini || responses.philosopher || responses.oracle,
        perplexityResponse: responses.perplexity || responses.witness || responses.scout,
        consensusScore: responses.consensus?.score || 0,
        empowermentConsensus: responses.consensus?.empowerment || 0,
        consciousnessInsights: responses.insights || {},
        keithWisdomTriggered: responses.keithWisdom || false,
        foundationalTruthHit: responses.foundationalTruth || false,
        revolutionaryPotential: responses.revolutionaryPotential || 0.5,
        personasUsed: responses.personasUsed || [],
        completedAt: new Date()
      }
    })
  },

  async getUserTribunalSessions(userId: string, limit: number = 10) {
    return prisma.tribunalSession.findMany({
      where: { userId },
      orderBy: { createdAt: 'desc' },
      take: limit
    })
  },

  // 🎵 Musical DNA Analysis
  async updateMusicalDNA(userId: string, analysis: any) {
    return prisma.musicalDnaAnalysis.upsert({
      where: { userId },
      update: {
        primaryGenres: analysis.genres || [],
        primaryArtists: analysis.artists || [],
        emotionalThemes: analysis.themes || {},
        acousticPreference: analysis.acoustic || 0.5,
        introspectionLevel: analysis.introspection || 0.5,
        resilienceMarkers: analysis.resilience || 0.5,
        connectionLonging: analysis.connection || 0.5,
        catharticProcessing: analysis.catharsis || 0.5,
        narrativeArc: analysis.narrative,
        transformationStage: analysis.stage,
        musicalMetaphors: analysis.metaphors || {},
        songsAnalyzed: analysis.songCount || 0,
        confidenceLevel: analysis.confidence || 0.0,
        updatedAt: new Date()
      },
      create: {
        userId,
        primaryGenres: analysis.genres || [],
        primaryArtists: analysis.artists || [],
        emotionalThemes: analysis.themes || {},
        acousticPreference: analysis.acoustic || 0.5,
        introspectionLevel: analysis.introspection || 0.5,
        resilienceMarkers: analysis.resilience || 0.5,
        connectionLonging: analysis.connection || 0.5,
        catharticProcessing: analysis.catharsis || 0.5,
        narrativeArc: analysis.narrative,
        transformationStage: analysis.stage,
        musicalMetaphors: analysis.metaphors || {},
        songsAnalyzed: analysis.songCount || 0,
        confidenceLevel: analysis.confidence || 0.0
      }
    })
  },

  // 📊 Consciousness Metrics
  async trackConsciousnessMetric(userId: string, metrics: any) {
    return prisma.consciousnessMetric.create({
      data: {
        userId,
        attentionLevel: metrics.attention || 50,
        flowStateIndicator: metrics.flow || 0.5,
        executiveFunctionLoad: metrics.executiveLoad || 0.5,
        hyperfocusActive: metrics.hyperfocus || false,
        empowermentMomentum: metrics.empowerment || 0.5,
        authenticityAlignment: metrics.authenticity || 0.5,
        consciousnessClarity: metrics.clarity || 0.5,
        revolutionaryReadiness: metrics.revolutionary || 0.0,
        environmentalFactors: metrics.environment || {},
        socialContext: metrics.social || {},
        timeOfDay: metrics.timeOfDay,
        energyLevel: metrics.energy || 50,
        supportNeeded: metrics.support || false,
        interventionType: metrics.intervention
      }
    })
  },

  // 🎉 Empowerment Events
  async createEmpowermentEvent(userId: string, event: any, bucketDropId?: string) {
    return prisma.empowermentEvent.create({
      data: {
        userId,
        eventType: event.type || 'breakthrough',
        description: event.description,
        intensityLevel: event.intensity || 0.5,
        scarsToCodeMoment: event.scarsToCode || false,
        chaosCurrentRealized: event.chaosCurrentRealized || false,
        jazzFrequencyTuned: event.jazzFrequencyTuned || false,
        sourceType: event.source || 'tribunal',
        bucketDropId,
        consciousnessShift: event.shift || 0.0,
        empowermentIncrease: event.increase || 0.0,
        revolutionaryPotential: event.revolutionary || 0.0,
        aiValidated: event.aiValidated || false,
        userConfirmed: event.confirmed || false
      }
    })
  },

  // 🎨 Beautiful Tapestry
  async createTapestryNode(userId: string, thought: string, bucketDropId?: string, metadata: any = {}) {
    return prisma.tapestryNode.create({
      data: {
        userId,
        thoughtContent: thought,
        emotionalResonance: metadata.emotional || 0.5,
        consciousnessDepth: metadata.depth || 1,
        growthSignificance: metadata.growth || 0.0,
        xCoordinate: metadata.x,
        yCoordinate: metadata.y,
        zCoordinate: metadata.z || 0,
        nodeSize: metadata.size || 20,
        nodeColor: metadata.color || '#8B5CF6',
        connectedNodes: metadata.connections || [],
        connectionStrengths: metadata.strengths || [],
        aiInterpretation: metadata.ai || {},
        patternCategory: metadata.category,
        empowermentPotential: metadata.potential || 0.5,
        bucketDropId
      }
    })
  }
}

// Export default for direct access
export default prisma
