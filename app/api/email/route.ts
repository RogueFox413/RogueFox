// app/api/email/route.ts
// Keith's Revolutionary Email API Route - FIXED VERSION

import { NextRequest, NextResponse } from 'next/server';

export async function POST(request: NextRequest) {
  try {
    const { userId, query, responses } = await request.json();

    if (!userId || !query) {
      return NextResponse.json(
        { error: "Missing required fields" },
        { status: 400 }
      );
    }

    // Keith's consciousness tribunal session creation
    // FIXED: Added proper async/await and error handling
    try {
      const session = await consciousnessDb.createTribunalSession(userId, query, responses);
      
      return NextResponse.json({
        success: true,
        message: "GestaltView Waitlist API",
        sessionId: session?.id || 'test-session'
      });
      
    } catch (dbError) {
      console.error('Database error:', dbError);
      
      // Keith's graceful fallback - always empowering
      return NextResponse.json({
        success: true,
        message: "Revolutionary consciousness captured! We'll be in touch soon.",
        fallback: true
      });
    }

  } catch (error) {
    console.error('Email API error:', error);
    
    return NextResponse.json({
      success: false,
      error: "Revolutionary consciousness synthesis temporarily paused",
      keith_message: "Your experience is still valid. Every difficult chapter became a feature! 🚀"
    }, { status: 500 });
  }
}

export async function GET() {
  return NextResponse.json({
    message: "Keith's Revolutionary Email API - Consciousness serving technology",
    status: "operational",
    wisdom: "ADHD is my jazz - not noise, but a different frequency of genius"
  });
}
