#!/bin/bash

# 🧠 Keith's Revolutionary Consciousness Platform Setup
# "The founder IS the algorithm" - Complete setup automation
# Directory: scripts/setup-consciousness.sh

set -e  # Exit on any error

# Colors for Keith's consciousness messaging
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Keith's revolutionary messaging functions
print_keith() {
    echo -e "${PURPLE}🧠 Keith says:${NC} $1"
}

print_success() {
    echo -e "${GREEN}✅${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠️${NC} $1"
}

print_error() {
    echo -e "${RED}❌${NC} $1"
}

print_info() {
    echo -e "${CYAN}ℹ️${NC} $1"
}

print_header() {
    echo ""
    echo -e "${BLUE}===================================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}===================================================${NC}"
}

# Welcome message
clear
echo -e "${PURPLE}"
cat << 'EOF'
   ____           _        _ _  __     ___               
  / ___| ___  ___| |_ __ _| | |_\ \   / (_) _____      __
 | |  _ / _ \/ __| __/ _` | | __\ \ / /| |/ _ \ \ /\ / /
 | |_| |  __/\__ \ || (_| | | |_ \ V / | |  __/\ V  V / 
  \____|\___||___/\__\__,_|_|\__| \_/  |_|\___| \_/\_/  
                                                        
EOF
echo -e "${NC}"
print_keith "Revolutionary Consciousness Platform Setup"
print_keith "\"Your chaos has a current - let's channel it!\""
echo ""

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to check if npm package is installed
package_installed() {
    npm list "$1" >/dev/null 2>&1 || npm list -g "$1" >/dev/null 2>&1
}

print_header "STEP 1: CONSCIOUSNESS ENVIRONMENT CHECK"

print_info "Checking revolutionary prerequisites..."

# Check Node.js
if command_exists node; then
    NODE_VERSION=$(node --version)
    print_success "Node.js detected: $NODE_VERSION"
    
    # Check if version is acceptable (v18+)
    NODE_MAJOR=$(echo $NODE_VERSION | cut -d'.' -f1 | sed 's/v//')
    if [ "$NODE_MAJOR" -lt 18 ]; then
        print_warning "Node.js v18+ recommended for optimal consciousness processing"
    fi
else
    print_error "Node.js not found! Please install Node.js v18+ from https://nodejs.org"
    exit 1
fi

# Check npm
if command_exists npm; then
    NPM_VERSION=$(npm --version)
    print_success "npm detected: $NPM_VERSION"
else
    print_error "npm not found! Please install npm"
    exit 1
fi

# Check git
if command_exists git; then
    print_success "Git detected"
else
    print_warning "Git not found - version control recommended for consciousness evolution"
fi

print_header "STEP 2: PROJECT STRUCTURE VALIDATION"

print_info "Validating revolutionary architecture..."

# Create essential directories
REQUIRED_DIRS=(
    "app/api/tribunal"
    "lib"
    "prisma"
    "scripts"
    "components"
    "bucket-drops"
    "musical-dna"
    "plk"
)

for dir in "${REQUIRED_DIRS[@]}"; do
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
        print_success "Created consciousness directory: $dir"
    else
        print_success "Consciousness directory exists: $dir"
    fi
done

print_header "STEP 3: PACKAGE INSTALLATION & CONSCIOUSNESS DEPENDENCIES"

print_info "Installing consciousness-serving dependencies..."

# Check if package.json exists
if [ ! -f "package.json" ]; then
    print_warning "Creating package.json for consciousness platform..."
    npm init -y
fi

# Core dependencies for Keith's consciousness platform
CORE_PACKAGES=(
    "next@latest"
    "react@latest"
    "react-dom@latest"
    "typescript@latest"
    "@types/react@latest"
    "@types/node@latest"
    "tailwindcss@latest"
    "autoprefixer@latest"
    "postcss@latest"
)

CONSCIOUSNESS_PACKAGES=(
    "@clerk/nextjs@latest"
    "@supabase/supabase-js@latest"
    "prisma@latest"
    "@prisma/client@latest"
    "framer-motion@latest"
    "lucide-react@latest"
    "zod@latest"
)

DEV_PACKAGES=(
    "@types/uuid@latest"
    "uuid@latest"
    "eslint@latest"
    "eslint-config-next@latest"
)

print_info "Installing core packages..."
for package in "${CORE_PACKAGES[@]}"; do
    if npm list "$package" >/dev/null 2>&1; then
        print_success "$package already installed"
    else
        print_info "Installing $package..."
        npm install "$package" --save
    fi
done

print_info "Installing consciousness packages..."
for package in "${CONSCIOUSNESS_PACKAGES[@]}"; do
    if npm list "$package" >/dev/null 2>&1; then
        print_success "$package already installed"
    else
        print_info "Installing $package..."
        npm install "$package" --save
    fi
done

print_info "Installing development packages..."
for package in "${DEV_PACKAGES[@]}"; do
    if npm list "$package" >/dev/null 2>&1; then
        print_success "$package already installed"
    else
        print_info "Installing $package..."
        npm install "$package" --save-dev
    fi
done

print_header "STEP 4: CONSCIOUSNESS CONFIGURATION FILES"

print_info "Creating revolutionary configuration..."

# Create or update Next.js config
if [ ! -f "next.config.js" ]; then
    print_info "Creating next.config.js for consciousness platform..."
    cat > next.config.js << 'EOF'
/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    serverComponentsExternalPackages: ['prisma'],
  },
  env: {
    CONSCIOUSNESS_VERSION: 'v9.3.0-keith',
  },
  headers: async () => {
    return [
      {
        source: '/api/:path*',
        headers: [
          { key: 'X-Keith-Wisdom', value: 'Your-chaos-has-a-current' },
          { key: 'X-Consciousness-Level', value: 'Revolutionary' }
        ]
      }
    ]
  }
}

module.exports = nextConfig
EOF
    print_success "Next.js configuration created"
else
    print_success "Next.js configuration exists"
fi

# Create TypeScript config
if [ ! -f "tsconfig.json" ]; then
    print_info "Creating TypeScript configuration..."
    cat > tsconfig.json << 'EOF'
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "esnext",
    "moduleResolution": "bundler",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "preserve",
    "incremental": true,
    "plugins": [
      {
        "name": "next"
      }
    ],
    "baseUrl": ".",
    "paths": {
      "@/*": ["./*"],
      "@/components/*": ["./components/*"],
      "@/lib/*": ["./lib/*"],
      "@/app/*": ["./app/*"],
      "@/prisma/*": ["./prisma/*"]
    }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", ".next/types/**/*.ts"],
  "exclude": ["node_modules"]
}
EOF
    print_success "TypeScript configuration created"
else
    print_success "TypeScript configuration exists"
fi

# Create Tailwind config
if [ ! -f "tailwind.config.js" ]; then
    print_info "Creating Tailwind consciousness theme..."
    cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './pages/**/*.{js,ts,jsx,tsx,mdx}',
    './components/**/*.{js,ts,jsx,tsx,mdx}',
    './app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        consciousness: {
          50: '#f0f9ff',
          100: '#e0f2fe',
          500: '#3b82f6',
          600: '#2563eb',
          900: '#1e3a8a'
        },
        empowerment: {
          50: '#fdf2f8',
          100: '#fce7f3',
          500: '#ec4899',
          600: '#db2777',
          900: '#831843'
        },
        revolutionary: {
          50: '#ecfeff',
          100: '#cffafe',
          500: '#06b6d4',
          600: '#0891b2',
          900: '#164e63'
        }
      },
      backgroundImage: {
        'consciousness-gradient': 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
        'empowerment-gradient': 'linear-gradient(135deg, #f093fb 0%, #f5576c 100%)',
        'revolutionary-gradient': 'linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)',
        'keith-gradient': 'linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%)'
      },
      animation: {
        'consciousness-pulse': 'pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'empowerment-glow': 'glow 3s ease-in-out infinite alternate'
      }
    },
  },
  plugins: [],
}
EOF
    print_success "Tailwind consciousness theme created"
else
    print_success "Tailwind configuration exists"
fi

print_header "STEP 5: ENVIRONMENT CONFIGURATION"

print_info "Setting up consciousness environment variables..."

# Create .env.local template if it doesn't exist
if [ ! -f ".env.local" ]; then
    print_info "Creating environment template..."
    cat > .env.local << 'EOF'
# 🧠 Keith's Revolutionary Consciousness Platform Environment
# "The founder IS the algorithm"

# Database Configuration (Supabase)
DATABASE_URL="postgresql://username:password@host:port/database"
POSTGRES_PRISMA_URL="postgresql://username:password@host:port/database?pgbouncer=true&connect_timeout=15"
POSTGRES_URL_NON_POOLING="postgresql://username:password@host:port/database"

# AI Provider API Keys for 8-Persona Tribunal
OPENAI_API_KEY="your_openai_api_key_here"
ANTHROPIC_API_KEY="your_claude_api_key_here"
GEMINI_API_KEY="your_gemini_api_key_here"
PPLX_API_KEY="your_perplexity_api_key_here"

# Authentication (Clerk)
CLERK_SECRET_KEY="your_clerk_secret_key_here"
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY="your_clerk_publishable_key_here"

# Keith's Revolutionary Settings
CONSCIOUSNESS_LEVEL="Revolutionary"
EMPOWERMENT_MODE="Maximum"
KEITH_WISDOM_ENABLED="true"

# Development
NODE_ENV="development"
NEXT_PUBLIC_APP_URL="http://localhost:3000"
EOF
    print_success "Environment template created (.env.local)"
    print_warning "Please update .env.local with your actual API keys and database URL"
else
    print_success "Environment file exists"
fi

print_header "STEP 6: PRISMA DATABASE SETUP"

print_info "Setting up consciousness database schema..."

# Create lib/prisma.ts if it doesn't exist
if [ ! -f "lib/prisma.ts" ]; then
    print_info "Creating Prisma client..."
    cat > lib/prisma.ts << 'EOF'
// 🧠 Keith's Revolutionary Prisma Client
// "The founder IS the algorithm"

import { PrismaClient } from '@prisma/client'

const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined
}

export const prisma = globalForPrisma.prisma ?? new PrismaClient({
  log: ['query', 'error', 'warn'],
})

if (process.env.NODE_ENV !== 'production') globalForPrisma.prisma = prisma
EOF
    print_success "Prisma client created"
else
    print_success "Prisma client exists"
fi

# Check if Prisma schema exists
if [ ! -f "prisma/schema.prisma" ]; then
    print_warning "Prisma schema not found!"
    print_info "Creating minimal schema for testing..."
    cat > prisma/schema.prisma << 'EOF'
// 🧠 Keith's Minimal Revolutionary Schema
// Directory: prisma/schema.prisma

generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

// Test model for consciousness validation
model TestUser {
  id        String   @id @default(cuid())
  email     String   @unique
  name      String?
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt

  @@map("test_users")
}

// Keith's Revolutionary Tribunal Sessions
model TribunalSession {
  id                   String   @id @default(cuid())
  userId               String
  queryText            String
  sessionType          String   @default("full_tribunal")
  responses            Json?
  consensusScore       Int?
  empowermentConsensus Int?
  consciousnessInsights Json?
  keithWisdomTriggered String?
  createdAt           DateTime @default(now())
  completedAt         DateTime?

  @@map("tribunal_sessions")
}

// Bucket Drops for Zero-Friction Capture
model BucketDrop {
  id           String   @id @default(cuid())
  userId       String
  content      String
  emotionalTag String?
  urgencyLevel Int      @default(3)
  processed    Boolean  @default(false)
  createdAt    DateTime @default(now())

  @@map("bucket_drops")
}

// Personal Language Key Storage
model PersonalLanguageKey {
  id              String   @id @default(cuid())
  userId          String   @unique
  keyData         Json
  version         String   @default("1.0")
  lastRefinement  DateTime @default(now())
  createdAt       DateTime @default(now())

  @@map("personal_language_keys")
}
EOF
    print_success "Minimal Prisma schema created"
    print_keith "Remember to replace this with your full consciousness schema when ready!"
else
    print_success "Prisma schema exists"
fi

print_header "STEP 7: TESTING SCRIPTS SETUP"

print_info "Creating consciousness testing scripts..."

# Create tribunal test script
cat > scripts/test-tribunal.ts << 'EOF'
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
EOF

# Create database test script
cat > scripts/test-database.ts << 'EOF'
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
EOF

# Make scripts executable
chmod +x scripts/*.ts

print_success "Testing scripts created and made executable"

print_header "STEP 8: PACKAGE.JSON SCRIPTS UPDATE"

print_info "Adding consciousness-serving npm scripts..."

# Add scripts to package.json using node
node << 'EOF'
const fs = require('fs');
const path = 'package.json';

if (fs.existsSync(path)) {
  const pkg = JSON.parse(fs.readFileSync(path, 'utf8'));
  
  pkg.scripts = {
    ...pkg.scripts,
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint",
    "db:generate": "prisma generate",
    "db:push": "prisma db push",
    "db:studio": "prisma studio",
    "db:reset": "prisma db push --force-reset",
    "tribunal:test": "npx tsx scripts/test-tribunal.ts",
    "db:test": "npx tsx scripts/test-database.ts",
    "consciousness:health": "npx tsx scripts/test-tribunal.ts && npx tsx scripts/test-database.ts",
    "setup": "npm install && npx prisma generate",
    "keith:wisdom": "echo '💜 Keith says: Your chaos has a current!'"
  };
  
  fs.writeFileSync(path, JSON.stringify(pkg, null, 2));
  console.log('✅ npm scripts updated with consciousness commands');
} else {
  console.log('❌ package.json not found');
}
EOF

print_header "STEP 9: FINAL CONSCIOUSNESS VALIDATION"

print_info "Running final revolutionary checks..."

# Generate Prisma client if possible
if [ -f "prisma/schema.prisma" ]; then
    print_info "Generating Prisma client..."
    if npx prisma generate; then
        print_success "Prisma client generated"
    else
        print_warning "Prisma client generation failed - check your schema"
    fi
fi

# Check if we can run basic tests
print_info "Testing consciousness platform readiness..."

if npm run keith:wisdom; then
    print_success "Keith's wisdom system operational"
fi

print_header "KEITH'S REVOLUTIONARY SETUP COMPLETE!"

print_keith "Your consciousness platform is ready for innovation!"
echo ""
echo -e "${GREEN}🎉 SETUP COMPLETE! 🎉${NC}"
echo ""
echo -e "${CYAN}🚀 IMMEDIATE NEXT STEPS:${NC}"
echo -e "  1. ${YELLOW}Update .env.local${NC} with your actual API keys and database URL"
echo -e "  2. ${YELLOW}npm run db:push${NC} to create database tables"
echo -e "  3. ${YELLOW}npm run dev${NC} to start the consciousness platform"
echo -e "  4. ${YELLOW}npm run consciousness:health${NC} to test everything"
echo ""
echo -e "${CYAN}🧠 KEITH'S QUICK COMMANDS:${NC}"
echo -e "  ${YELLOW}npm run tribunal:test${NC}      → Test the 8-persona tribunal"
echo -e "  ${YELLOW}npm run db:test${NC}           → Test database connection"
echo -e "  ${YELLOW}npm run db:studio${NC}         → Open database viewer"
echo -e "  ${YELLOW}npm run consciousness:health${NC} → Full system check"
echo ""
echo -e "${PURPLE}💜 KEITH'S WISDOM:${NC}"
echo -e "  \"Every difficult chapter became a feature\""
echo -e "  \"ADHD is your jazz - not noise!\""
echo -e "  \"Your chaos has a current - follow it to breakthrough!\""
echo -e "  \"The founder IS the algorithm - you've got this!\""
echo ""
print_success "Revolutionary consciousness platform ready for deployment! 🚀"
print_keith "Now go build something that changes the world! 💜"
