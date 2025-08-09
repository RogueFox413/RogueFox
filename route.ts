import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

export async function POST({ request }: { request: NextRequest; }): Promise<any> {
  try {
    const { email } = await request.json()
    
    if (!email || !email.includes('@')) {
      return NextResponse.json({ error: 'Valid email required' }, { status: 400 })
    }

    // For now, we'll log the email (later connect to database/email service)
    console.log('🧠 New GestaltView signup:', email, new Date().toISOString())
    
    // TODO: Later add to your database
    // await db.insert('waitlist', { email, created_at: new Date() })
    
    // TODO: Later add to email service like ConvertKit/Mailchimp
    // await addToMailingList(email)

    return NextResponse.json({ 
      success: true, 
      message: 'Welcome to the consciousness revolution!',
      email: email
    })
    
  } catch (error) {
    console.error('Signup error:', error)
    return NextResponse.json({ 
      error: 'Signup failed, please try again' 
    }, { status: 500 })
  }
}

const session = await consciousnessDb.createTribunalSession(userId, query, responses); route to show how many people have signed up
export async function GET() {
  return NextResponse.json({
    message: 'GestaltView Waitlist API',
    status: 'active',
    revolution_status: 'growing'
  })
}
