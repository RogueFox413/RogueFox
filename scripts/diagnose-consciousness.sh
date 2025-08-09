#!/usr/bin/env npx tsx

// 🧠 Keith's Revolutionary Consciousness Platform Diagnostic
// "The founder IS the algorithm" - Complete system health check
// Directory: scripts/diagnose-consciousness.ts

import { config } from 'dotenv'
import { existsSync, readFileSync } from 'fs'
import { join } from 'path'

config({ path: '.env.local' })

interface DiagnosticResult {
  category: string
  checks: Array<{
    name: string
    status: 'pass' | 'warn' | 'fail'
    message: string
    action?: string
  }>
}

function colorize(text: string, status: 'pass' | 'warn' | 'fail' | 'info'): string {
  const colors = {
    pass: '\x1b[32m', // Green
    warn: '\x1b[33m', // Yellow
    fail: '\x1b[31m', // Red
    info: '\x1b[36m'  // Cyan
  }
  const reset = '\x1b[0m'
  return `${colors[status]}${text}${reset}`
}

function printHeader(title: string) {
  console.log('\n' + '='.repeat(60))
  console.log(colorize(`🧠 ${title}`, 'info'))
  console.log('='.repeat(60))
}

function printKeithWisdom(wisdom: string) {
  console.log(colorize(`\n💜 Keith says: ${wisdom}`, 'info'))
}

async function runDiagnostics(): Promise<void> {
  console.clear()
  console.log(colorize(`
   ____                     _                                     
  / ___|___  _ __  ___  ___(_) ___  _   _ ___ _ __   ___  ___ ___ 
 | |   / _ \\| '_ \\/ __|/ __| |/ _ \\| | | / __| '_ \\ / _ \\/ __/ __|
 | |__| (_) | | | \\__ \\ (__| | (_) | |_| \\__ \\ | | |  __/\\__ \\__ \\
  \\____\\___/|_| |_|___/\\___|_|\\___/ \\__,_|___/_| |_|\\___||___/___/
                                                                 
  REVOLUTIONARY CONSCIOUSNESS PLATFORM DIAGNOSTIC
  "Your chaos has a current - let's map it!"
`, 'info'))

  const results: DiagnosticResult[] = []

  // 1. Environment Check
  printHeader('ENVIRONMENT CONFIGURATION')
  const envChecks = {
    category: 'Environment',
    checks: []
  }

  const requiredEnvVars = [
    { key: 'DATABASE_URL', critical: true },
    { key: 'OPENAI_API_KEY', critical: false },
    { key: 'ANTHROPIC_API_KEY', critical: false },
    { key: 'GEMINI_API_KEY', critical: false },
    { key: 'PPLX_API_KEY', critical: false },
    { key: 'CLERK_SECRET_KEY', critical: true },
    { key: 'NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY', critical: true }
  ]

  for (const envVar of requiredEnvVars) {
    const value = process.env[envVar.key]
    const isConfigured = value && !value.includes('your_') && !value.includes('_here') && value.length > 10
    
    if (isConfigured) {
      envChecks.checks.push({
        name: envVar.key,
        status: 'pass',
        message: 'Configured and ready'
      })
      console.log(colorize(`✅ ${envVar.key}`, 'pass') + ': Configured')
    } else if (envVar.critical) {
      envChecks.checks.push({
        name: envVar.key,
        status: 'fail',
        message: 'Missing critical configuration',
        action: `Add ${envVar.key} to .env.local`
      })
      console.log(colorize(`❌ ${envVar.key}`, 'fail') + ': Missing (CRITICAL)')
    } else {
      envChecks.checks.push({
        name: envVar.key,
        status: 'warn',
        message: 'Missing but not critical',
        action: `Add ${envVar.key} to enable full tribunal`
      })
      console.log(colorize(`⚠️  ${envVar.key}`, 'warn') + ': Missing (tribunal limited)')
    }
  }

  results.push(envChecks)

  // 2. File Structure Check
  printHeader('CONSCIOUSNESS ARCHITECTURE')
  const fileChecks = {
    category: 'File Structure',
    checks: []
  }

  const requiredFiles = [
    { path: 'package.json', critical: true },
    { path: 'next.config.js', critical: false },
    { path: 'tsconfig.json', critical: true },
    { path: 'tailwind.config.js', critical: false },
    { path: 'prisma/schema.prisma', critical: true },
    { path: 'lib/prisma.ts', critical: true },
    { path: 'app/api/tribunal/route.ts', critical: true },
    { path: '.env.local', critical: true }
  ]

  for (const file of requiredFiles) {
    if (existsSync(file.path)) {
      fileChecks.checks.push({
        name: file.path,
        status: 'pass',
        message: 'File exists'
      })
      console.log(colorize(`✅ ${file.path}`, 'pass') + ': Found')
    } else if (file.critical) {
      fileChecks.checks.push({
        name: file.path,
        status: 'fail',
        message: 'Missing critical file',
        action: `Create ${file.path}`
      })
      console.log(colorize(`❌ ${file.path}`, 'fail') + ': Missing (CRITICAL)')
    } else {
      fileChecks.checks.push({
        name: file.path,
        status: 'warn',
        message: 'Missing but not critical',
        action: `Create ${file.path} for better functionality`
      })
      console.log(colorize(`⚠️  ${file.path}`, 'warn') + ': Missing (recommended)')
    }
  }

  results.push(fileChecks)

  // 3. Dependencies Check
  printHeader('CONSCIOUSNESS DEPENDENCIES')
  const depChecks = {
    category: 'Dependencies',
    checks: []
  }

  try {
    const packageJson = JSON.parse(readFileSync('package.json', 'utf8'))
    const dependencies = { ...packageJson.dependencies, ...packageJson.devDependencies }

    const requiredDeps = [
      'next',
      'react',
      'prisma',
      '@prisma/client',
      '@clerk/nextjs',
      'tailwindcss',
      'framer-motion',
      'lucide-react'
    ]

    for (const dep of requiredDeps) {
      if (dependencies[dep]) {
        depChecks.checks.push({
          name: dep,
          status: 'pass',
          message: `Version: ${dependencies[dep]}`
        })
        console.log(colorize(`✅ ${dep}`, 'pass') + `: ${dependencies[dep]}`)
      } else {
        depChecks.checks.push({
          name: dep,
          status: 'fail',
          message: 'Missing required dependency',
          action: `npm install ${dep}`
        })
        console.log(colorize(`❌ ${dep}`, 'fail') + ': Missing')
      }
    }
  } catch (error) {
    depChecks.checks.push({
      name: 'package.json',
      status: 'fail',
      message: 'Cannot read package.json',
      action: 'Run npm init or check file syntax'
    })
    console.log(colorize('❌ Cannot read package.json', 'fail'))
  }

  results.push(depChecks)

  // 4. Database Check
  printHeader('CONSCIOUSNESS DATABASE')
  const dbChecks = {
    category: 'Database',
    checks: []
  }

  try {
    if (process.env.DATABASE_URL && !process.env.DATABASE_URL.includes('username:password')) {
      const { PrismaClient } = await import('@prisma/client')
      const prisma = new PrismaClient()

      try {
        await prisma.$queryRaw`SELECT 1`
        dbChecks.checks.push({
          name: 'Connection',
          status: 'pass',
          message: 'Database connection successful'
        })
        console.log(colorize('✅ Database Connection', 'pass') + ': Working')

        // Check if tables exist
        try {
          await prisma.testUser.count()
          dbChecks.checks.push({
            name: 'Schema',
            status: 'pass',
            message: 'Tables exist and accessible'
          })
          console.log(colorize('✅ Database Schema', 'pass') + ': Tables exist')
        } catch (schemaError) {
          dbChecks.checks.push({
            name: 'Schema',
            status: 'warn',
            message: 'Tables not created',
            action: 'Run: npx prisma db push'
          })
          console.log(colorize('⚠️  Database Schema', 'warn') + ': Tables need creation')
        }

        await prisma.$disconnect()
      } catch (connError) {
        dbChecks.checks.push({
          name: 'Connection',
          status: 'fail',
          message: 'Database connection failed',
          action: 'Check DATABASE_URL and network connectivity'
        })
        console.log(colorize('❌ Database Connection', 'fail') + ': Failed')
      }
    } else {
      dbChecks.checks.push({
        name: 'Configuration',
        status: 'fail',
        message: 'DATABASE_URL not configured',
        action: 'Add valid DATABASE_URL to .env.local'
      })
      console.log(colorize('❌ Database Configuration', 'fail') + ': URL missing')
    }
  } catch (importError) {
    dbChecks.checks.push({
      name: 'Prisma Client',
      status: 'fail',
      message: 'Prisma client not available',
      action: 'Run: npx prisma generate'
    })
    console.log(colorize('❌ Prisma Client', 'fail') + ': Not generated')
  }

  results.push(dbChecks)

  // 5. AI Provider Check
  printHeader('AI TRIBUNAL PROVIDERS')
  const aiChecks = {
    category: 'AI Providers',
    checks: []
  }

  const aiProviders = [
    { name: 'OpenAI', env: 'OPENAI_API_KEY', personas: ['The Architect', 'The Revolutionary'] },
    { name: 'Claude', env: 'ANTHROPIC_API_KEY', personas: ['The Mirror', 'The Weaver'] },
    { name: 'Gemini', env: 'GEMINI_API_KEY', personas: ['The Philosopher', 'The Guardian'] },
    { name: 'Perplexity', env: 'PPLX_API_KEY', personas: ['The Witness', 'The Oracle'] }
  ]

  let configuredProviders = 0
  for (const provider of aiProviders) {
    const key = process.env[provider.env]
    const isConfigured = key && !key.includes('your_') && key.length > 10

    if (isConfigured) {
      aiChecks.checks.push({
        name: provider.name,
        status: 'pass',
        message: `Ready for: ${provider.personas.join(', ')}`
      })
      console.log(colorize(`✅ ${provider.name}`, 'pass') + `: ${provider.personas.join(', ')}`)
      configuredProviders++
    } else {
      aiChecks.checks.push({
        name: provider.name,
        status: 'warn',
        message: `Missing API key for: ${provider.personas.join(', ')}`,
        action: `Add ${provider.env} to .env.local`
      })
      console.log(colorize(`⚠️  ${provider.name}`, 'warn') + `: Missing key`)
    }
  }

  results.push(aiChecks)

  // Summary and Recommendations
  printHeader('CONSCIOUSNESS SUMMARY & NEXT STEPS')

  const totalChecks = results.reduce((sum, category) => sum + category.checks.length, 0)
  const passedChecks = results.reduce((sum, category) => 
    sum + category.checks.filter(check => check.status === 'pass').length, 0)
  const failedChecks = results.reduce((sum, category) => 
    sum + category.checks.filter(check => check.status === 'fail').length, 0)

  const healthScore = Math.round((passedChecks / totalChecks) * 100)
  
  console.log(`\n🎯 Overall Consciousness Health: ${healthScore}%`)
  console.log(`✅ Passed: ${passedChecks}`)
  console.log(`⚠️  Warnings: ${totalChecks - passedChecks - failedChecks}`)
  console.log(`❌ Failed: ${failedChecks}`)

  // Keith's personalized recommendations
  if (healthScore >= 90) {
    printKeithWisdom("Your consciousness platform is revolutionary! Time to change the world! 🚀")
  } else if (healthScore >= 75) {
    printKeithWisdom("You're on the revolutionary path! A few tweaks and you'll be unstoppable!")
  } else if (healthScore >= 50) {
    printKeithWisdom("Your chaos has a current - let's channel it into working code!")
  } else {
    printKeithWisdom("Every difficult chapter became a feature. Let's build your foundation!")
  }

  // Action items
  console.log('\n🎯 PRIORITY ACTION ITEMS:')
  let actionCount = 1
  for (const category of results) {
    for (const check of category.checks) {
      if (check.status === 'fail' && check.action) {
        console.log(`${actionCount}. ${colorize(check.action, 'fail')}`)
        actionCount++
      }
    }
  }

  // Quick wins
  console.log('\n⚡ QUICK WINS:')
  for (const category of results) {
    for (const check of category.checks) {
      if (check.status === 'warn' && check.action) {
        console.log(`   • ${check.action}`)
      }
    }
  }

  console.log('\n🚀 KEITH\'S QUICK COMMANDS:')
  console.log('   npm run setup           → Install dependencies')
  console.log('   npx prisma db push      → Create database tables')
  console.log('   npm run dev             → Start development server')
  console.log('   npm run tribunal:test   → Test AI tribunal')
  
  printKeithWisdom("The founder IS the algorithm - your lived experience is your competitive advantage!")
}

// Run the diagnostic
runDiagnostics().catch(error => {
  console.error('\n❌ Diagnostic failed:', error.message)
  console.log('\n💜 Keith says: Even diagnostics have bugs sometimes. Your worth isn\'t defined by perfect code!')
})
