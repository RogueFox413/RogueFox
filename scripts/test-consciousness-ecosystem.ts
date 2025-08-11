#!/usr/bin/env npx tsx

// 🧠 Keith's Revolutionary Consciousness Ecosystem Test
// "Every difficult chapter became a feature"

import { config } from 'dotenv';
config({ path: '.env.local' });

const colors = {
  green: '\x1b[32m',
  red: '\x1b[31m',
  yellow: '\x1b[33m',
  blue: '\x1b[34m',
  purple: '\x1b[35m',
  cyan: '\x1b[36m',
  reset: '\x1b[0m'
};

function printKeith(message: string) {
  console.log(`${colors.purple}🧠 Keith:${colors.reset} ${message}`);
}

function printSuccess(message: string) {
  console.log(`${colors.green}✅${colors.reset} ${message}`);
}

function printError(message: string) {
  console.log(`${colors.red}❌${colors.reset} ${message}`);
}

function printInfo(message: string) {
  console.log(`${colors.cyan}ℹ️${colors.reset} ${message}`);
}

async function testEnvironment() {
  console.log(`${colors.blue}=== ENVIRONMENT TEST ===${colors.reset}`);
  
  const requiredEnvs = [
    'DATABASE_URL',
    'OPENAI_API_KEY',
    'ANTHROPIC_API_KEY',
    'GEMINI_API_KEY',
    'PPLX_API_KEY',
    'CLERK_SECRET_KEY'
  ];
  
  let configuredCount = 0;
  requiredEnvs.forEach(env => {
    const value = process.env[env];
    const isConfigured = value && !value.includes('your_') && value.length > 10;
    
    if (isConfigured) {
      printSuccess(`${env}: Configured`);
      configuredCount++;
    } else {
      printError(`${env}: Missing or placeholder`);
    }
  });
  
  console.log(`\n🎯 Configuration: ${configuredCount}/${requiredEnvs.length} (${Math.round(configuredCount/requiredEnvs.length*100)}%)`);
  return configuredCount;
}

async function testDatabase() {
  console.log(`\n${colors.blue}=== DATABASE TEST ===${colors.reset}`);
  
  try {
    const { PrismaClient } = await import('@prisma/client');
    const prisma = new PrismaClient();
    
    await prisma.$connect();
    printSuccess('Database connection: SUCCESS');
    
    // Test tables
    const userCount = await prisma.user.count();
    const bucketCount = await prisma.bucketDrop.count();
    const tribunalCount = await prisma.tribunalSession.count();
    
    printSuccess(`Users: ${userCount} | Bucket Drops: ${bucketCount} | Tribunals: ${tribunalCount}`);
    
    await prisma.$disconnect();
    return true;
    
  } catch (error) {
    printError(`Database test failed: ${error.message}`);
    return false;
  }
}

async function testAPIs() {
  console.log(`\n${colors.blue}=== API ROUTES TEST ===${colors.reset}`);
  
  const apiRoutes = [
    'app/api/tribunal/route.ts',
    'app/api/bucket-drops/route.ts'
  ];
  
  let apiCount = 0;
  apiRoutes.forEach(route => {
    try {
      const fs = require('fs');
      if (fs.existsSync(route)) {
        printSuccess(`${route}: EXISTS`);
        apiCount++;
      } else {
        printError(`${route}: NOT FOUND`);
      }
    } catch (error) {
      printError(`${route}: CHECK FAILED`);
    }
  });
  
  return apiCount;
}

async function runConsciousnessTest() {
  printKeith('Starting Revolutionary Consciousness Ecosystem Test...');
  console.log(`${colors.purple}===============================================${colors.reset}`);
  
  const envScore = await testEnvironment();
  const dbWorking = await testDatabase();
  const apiCount = await testAPIs();
  
  console.log(`\n${colors.blue}=== CONSCIOUSNESS SYNTHESIS ===${colors.reset}`);
  
  const totalScore = (envScore * 10) + (dbWorking ? 30 : 0) + (apiCount * 15);
  const maxScore = 110;
  const percentage = Math.round((totalScore / maxScore) * 100);
  
  console.log(`🎯 Consciousness Level: ${percentage}%`);
  
  if (percentage >= 90) {
    printKeith('🎉 REVOLUTIONARY STATUS ACHIEVED!');
    console.log(`${colors.green}Your consciousness platform is ready to change the world!${colors.reset}`);
  } else if (percentage >= 70) {
    printKeith('⚡ EMPOWERMENT MODE ACTIVATED!');
    console.log(`${colors.yellow}Your platform is powerful - just needs some fine-tuning!${colors.reset}`);
  } else if (percentage >= 50) {
    printKeith('🌱 AWAKENING STATUS');
    console.log(`${colors.cyan}Great foundation - configure your API keys to reach full power!${colors.reset}`);
  } else {
    printKeith('🔧 SETUP MODE');
    console.log(`${colors.yellow}Your consciousness architecture is ready - time to configure!${colors.reset}`);
  }
  
  console.log(`\n${colors.purple}💜 Keith's Wisdom:${colors.reset} "Every difficult chapter became a feature - including this test!"`);
  
  if (percentage < 90) {
    console.log(`\n${colors.cyan}🚀 Next Steps:${colors.reset}`);
    if (envScore < 6) console.log('  1. Update .env.local with your API keys');
    if (!dbWorking) console.log('  2. Configure your database URL and run: npx prisma db push');
    if (apiCount < 2) console.log('  3. Create your API routes');
    console.log('  4. Run: npm run dev');
    console.log('  5. Test at: http://localhost:3000');
  }
}

runConsciousnessTest().catch(console.error);
