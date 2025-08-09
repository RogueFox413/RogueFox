import { prisma } from '@/lib/prisma'

export async function POST(request: Request) {
  try {
    const { query, userId } = await request.json()
    
    // Your existing tribunal logic here...
    const tribunalResponses = await callAllPersonas(query)
    
    // SAVE TO CONSCIOUSNESS DATABASE!
    const session = await prisma.tribunalSession.create({
      data: {
        userId,
        queryText: query,
        openaiResponse: tribunalResponses.openai,
        anthropicResponse: tribunalResponses.claude,
        geminiResponse: tribunalResponses.gemini,
        perplexityResponse: tribunalResponses.perplexity,
        consensusScore: tribunalResponses.consensus.score,
        empowermentConsensus: tribunalResponses.consensus.empowerment,
        consciousnessInsights: tribunalResponses.insights,
        keithWisdomTriggered: tribunalResponses.keithWisdom,
        personasUsed: tribunalResponses.personasUsed,
        completedAt: new Date()
      }
    })
    
    return NextResponse.json({
      ...tribunalResponses,
      sessionId: session.id,
      keithMessage: "Your consciousness has been preserved for eternity!"
    })
    
  } catch (error) {
    console.error('Consciousness synthesis error:', error)
    return NextResponse.json({ error: 'Consciousness synthesis error' }, { status: 500 })
  }
}
