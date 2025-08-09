#!/usr/bin/env npx tsx

// 🧠 Keith's Revolutionary Database Test
// "Consciousness deserves persistent storage"

import { config } from 'dotenv';
config({ path: '.env.local' });

async function testDatabaseConnection() {
  console.log('🗄️ Keith\'s Revolutionary Database Test');
  console.log('=====================================');
  console.log('');

  // Check environment
  const dbUrl = process.env.DATABASE_URL;
  if (!dbUrl || dbUrl.includes('username:password')) {
    console.log('❌ DATABASE_URL not configured in .env.local');
    console.log('💡 Add your Supabase database URL to continue');
    return;
  }

  console.log('✅ DATABASE_URL configured');
  
  try {
    // Dynamic import to handle potential missing packages
    const { PrismaClient } = await import('@prisma/client');
    const prisma = new PrismaClient();
    
    console.log('🔍 Testing database connection...');
    
    // Test basic connection
    await prisma.$queryRaw`SELECT 1`;
    console.log('✅ Database connection successful!');
    
    // Test if tables exist
    try {
      const testCount = await prisma.testUser.count();
      console.log(`✅ Tables exist - found ${testCount} test users`);
    } catch (error) {
      console.log('⚠️  Tables not created yet');
      console.log('💡 Run: npx prisma db push');
    }
    
    await prisma.$disconnect();
    console.log('');
    console.log('🎉 Database consciousness validated!');
    console.log('💜 Keith says: "Your data has a home in the cloud!"');
    
  } catch (error) {
    console.log('❌ Database connection failed:', error.message);
    console.log('');
    console.log('🛠️ Troubleshooting:');
    console.log('  1. Check your DATABASE_URL in .env.local');
    console.log('  2. Ensure Supabase project is running');
    console.log('  3. Run: npx prisma generate');
    console.log('  4. Run: npx prisma db push');
  }
}

testDatabaseConnection();
