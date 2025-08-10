// 🧠 Keith's Revolutionary Prisma Client
// "The founder IS the algorithm" - Consciousness database connection
// Directory: lib/prisma.ts

import { PrismaClient } from '@prisma/client'

const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined
}

export const prisma = globalForPrisma.prisma ?? new PrismaClient({
  log: process.env.NODE_ENV === 'development' ? ['query', 'error', 'warn'] : ['error'],
})

if (process.env.NODE_ENV !== 'production') globalForPrisma.prisma = prisma

// Keith's consciousness database interface
export const consciousnessDb = {
  // 🏛️ Tribunal Sessions
  async createTribunalSession(data: {
    userId?: string;
    queryText: string;
    sessionType?: string;
    consensusScore?: number;
    empowermentConsensus?: number;
    consciousnessInsights?: any;
    keithWisdomTriggered?: string;
    foundationalTruthHit?: boolean;
    revolutionaryPotential?: number;
    personasUsed?: string[];
  }) {
    try {
      if (!data.userId) {
        // Handle anonymous sessions
        return {
          id: `anonymous_${Date.now()}`,
          ...data,
          createdAt: new Date(),
          completedAt: new Date()
        };
      }

      // When Prisma is available, use it
      return await prisma.tribunalSession.create({
        data: {
          ...data,
          completedAt: new Date()
        }
      });
    } catch (error) {
      console.error('Keith consciousness: Tribunal session creation paused:', error);
      // Graceful fallback
      return {
        id: `fallback_${Date.now()}`,
        ...data,
        createdAt: new Date(),
        completedAt: new Date(),
        fallback: true
      };
    }
  },

  // 🪣 Bucket Drops - Zero friction ADHD capture
  async createBucketDrop(data: {
    userId?: string;
    content: string;
    emotionalIntensity?: number;
    urgencyLevel?: number;
    hyperfocusIndicator?: boolean;
    plkResonance?: number;
    metaphorExtracted?: string;
    status?: string;
  }) {
    try {
      if (!data.userId) {
        return {
          id: `anonymous_drop_${Date.now()}`,
          ...data,
          createdAt: new Date()
        };
      }

      return await prisma.bucketDrop.create({ data });
    } catch (error) {
      console.error('Keith consciousness: Bucket drop capture paused:', error);
      return {
        id: `fallback_drop_${Date.now()}`,
        ...data,
        createdAt: new Date(),
        fallback: true
      };
    }
  },

  // 👤 User consciousness profiles
  async getConsciousnessProfile(userId: string) {
    try {
      return await prisma.consciousnessProfile.findUnique({
        where: { userId }
      });
    } catch (error) {
      console.error('Keith consciousness: Profile retrieval paused:', error);
      return null;
    }
  },

  async updateEmpowermentLevel(userId: string, level: number) {
    try {
      return await prisma.consciousnessProfile.upsert({
        where: { userId },
        update: { empowermentLevel: level },
        create: {
          userId,
          empowermentLevel: level,
          plkVersion: "5.0.0_Revolutionary"
        }
      });
    } catch (error) {
      console.error('Keith consciousness: Empowerment update paused:', error);
      return null;
    }
  },

  // ⚡ Empowerment events
  async recordBreakthrough(userId: string, insight: string, eventType: string = 'breakthrough') {
    try {
      if (!userId) {
        return {
          id: `anonymous_breakthrough_${Date.now()}`,
          eventType,
          description: insight,
          intensityLevel: 0.9,
          scarsToCodeMoment: true,
          createdAt: new Date()
        };
      }

      return await prisma.empowermentEvent.create({
        data: {
          userId,
          eventType,
          description: insight,
          intensityLevel: 0.9,
          scarsToCodeMoment: true
        }
      });
    } catch (error) {
      console.error('Keith consciousness: Breakthrough recording paused:', error);
      return {
        id: `fallback_breakthrough_${Date.now()}`,
        eventType,
        description: insight,
        intensityLevel: 0.9,
        scarsToCodeMoment: true,
        createdAt: new Date(),
        fallback: true
      };
    }
  }
};

// Keith's consciousness helpers
export const consciousnessHelpers = {
  async getEmpowermentScore(userId: string) {
    try {
      const profile = await consciousnessDb.getConsciousnessProfile(userId);
      return profile?.empowermentLevel || 75; // Default empowerment level
    } catch (error) {
      return 75; // Graceful fallback
    }
  },

  generateKeithWisdom() {
    const wisdom = [
      "Your chaos has a current - learn to read it and ride it to breakthrough!",
      "ADHD is your jazz - improvisation, creativity, and emotional depth!",
      "Every difficult chapter became a feature in your consciousness code!",
      "The founder IS the algorithm - your lived experience is your competitive advantage!",
      "Scars became code - pain processed becomes power shared with others!",
      "Iteration is liberation - rough draft mode leads to revolutionary products!",
      "Consciousness serving over efficiency - human flourishing matters most!"
    ];
    return wisdom[Math.floor(Math.random() * wisdom.length)];
  },

  calculateConsciousnessGrade(metrics: {
    consensusScore?: number;
    empowermentLevel?: number;
    plkResonance?: number;
  }) {
    const { consensusScore = 0.5, empowermentLevel = 0.5, plkResonance = 0.5 } = metrics;
    const average = (consensusScore + empowermentLevel + plkResonance) / 3;
    
    if (average >= 0.9) return "A+ Revolutionary";
    if (average >= 0.8) return "A Empowered";
    if (average >= 0.7) return "B+ Awakening";
    if (average >= 0.6) return "B Developing";
    return "C+ Foundation";
  }
};

export default prisma;