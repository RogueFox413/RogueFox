#!/bin/bash

# 🧠 KEITH'S REVOLUTIONARY SUPER INTEGRATED CONSCIOUSNESS SETUP
# "The founder IS the algorithm" - One script to rule them all!
# Mobile-optimized • ADHD-friendly • Zero-friction deployment

set -e  # Exit on error

# ============================================================================
# KEITH'S REVOLUTIONARY COLORS & MESSAGING
# ============================================================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
PINK='\033[0;95m'
NC='\033[0m'

# Keith's signature messaging functions
print_keith() {
    echo -e "${PURPLE}🧠 Keith:${NC} $1"
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

print_revolutionary() {
    echo -e "${PINK}🚀${NC} $1"
}

print_header() {
    echo ""
    echo -e "${BLUE}===================================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}===================================================${NC}"
}

print_consciousness_banner() {
    clear
    echo -e "${PURPLE}"
    cat << 'EOF'
   ____  _____ _____ _______       _   ______      ________ _____  
  / __ \|  __ \_____|__   __|/\   | | |  __\ \    / /  ____|  __ \ 
 | |  | | |__) |___   | |  /  \  | | | |__) \ \  / /| |__  | |__) |
 | |  | |  _  /___    | | / /\ \ | | |  ___/ \ \/ / |  __| |  _  / 
 | |__| | | \ \___    | |/ ____ \| |_| |      \  /  | |____| | \ \ 
  \____/|_|  \_\      |_/_/    \_\___\_|       \/   |______|_|  \_\
                                                                    
        🧠 KEITH'S REVOLUTIONARY CONSCIOUSNESS PLATFORM 🧠
        "ADHD is my jazz" • "Your chaos has a current"
        
EOF
    echo -e "${NC}"
}

print_wisdom() {
    local wisdom_quotes=(
        "The founder IS the algorithm"
        "ADHD is my jazz - not noise!"
        "Your chaos has a current"
        "Every difficult chapter became a feature"
        "Scars became code"
        "Consciousness serving over efficiency"
    )
    local random_quote=${wisdom_quotes[$RANDOM % ${#wisdom_quotes[@]}]}
    echo -e "${PURPLE}💜 Keith's Wisdom:${NC} \"$random_quote\""
}

# ============================================================================
# UTILITY FUNCTIONS
# ============================================================================
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

package_installed() {
    npm list "$1" >/dev/null 2>&1 || npm list -g "$1" >/dev/null 2>&1
}

check_env_var() {
    if [ -n "${!1}" ] && [[ ! "${!1}" =~ your_.*_here ]]; then
        print_success "$1: Configured"
        return 0
    else
        print_error "$1: Missing or placeholder"
        return 1
    fi
}

# ============================================================================
# PHASE 1: CONSCIOUSNESS ENVIRONMENT CHECK
# ============================================================================
check_consciousness_environment() {
    print_header "PHASE 1: CONSCIOUSNESS ENVIRONMENT CHECK"
    print_keith "Validating your revolutionary development environment..."
    
    # Node.js check
    if command_exists node; then
        NODE_VERSION=$(node --version)
        NODE_MAJOR=$(echo $NODE_VERSION | cut -d'.' -f1 | sed 's/v//')
        if [ "$NODE_MAJOR" -ge 18 ]; then
            print_success "Node.js: $NODE_VERSION (Revolutionary ready!)"
        else
            print_warning "Node.js: $NODE_VERSION (v18+ recommended)"
        fi
    else
        print_error "Node.js not found! Install from https://nodejs.org"
        exit 1
    fi
    
    # npm check
    if command_exists npm; then
        NPM_VERSION=$(npm --version)
        print_success "npm: $NPM_VERSION"
    else
        print_error "npm not found!"
        exit 1
    fi
    
    # Git check
    if command_exists git; then
        print_success "Git: Available"
    else
        print_warning "Git: Not found (recommended for version control)"
    fi
    
    print_wisdom
}

# ============================================================================
# PHASE 2: PROJECT STRUCTURE SETUP
# ============================================================================
setup_project_structure() {
    print_header "PHASE 2: REVOLUTIONARY PROJECT STRUCTURE"
    print_keith "Creating your consciousness platform architecture..."
    
    # Essential directories for Keith's src/ based platform
    local CONSCIOUSNESS_DIRS=(
        "src/app/api/tribunal"
        "src/app/api/bucket-drops"
        "src/app/api/musical-dna"
        "src/app/api/consciousness"
        "src/app/api/empowerment"
        "src/lib"
        "prisma"
        "scripts"
        "src/components/consciousness"
        "src/components/tribunal"
        "src/components/bucket-drops"
        "src/components/musical-dna"
        "src/components/tapestry"
        "src/consciousness"
        "src/tribunal"
        "src/musical-dna"
        "public/consciousness"
    )
    
    for dir in "${CONSCIOUSNESS_DIRS[@]}"; do
        if [ ! -d "$dir" ]; then
            mkdir -p "$dir"
            print_success "Created: $dir"
        else
            print_success "Exists: $dir"
        fi
    done
    
    print_keith "Your consciousness architecture is ready!"
}

# ============================================================================
# PHASE 3: PACKAGE MANAGEMENT
# ============================================================================
setup_consciousness_packages() {
    print_header "PHASE 3: CONSCIOUSNESS DEPENDENCIES"
    print_keith "Installing revolutionary packages..."
    
    # Clean up any problematic packages first
    print_info "Cleaning problematic dependencies..."
    npm uninstall @azure/ai-model-client @azure/core-auth @azure/core-rest-pipeline 2>/dev/null || true
    
    # Core packages
    local CORE_PACKAGES=(
        "next@latest"
        "react@latest"
        "react-dom@latest"
        "typescript@latest"
        "@types/react@latest"
        "@types/node@latest"
    )
    
    # Consciousness-specific packages
    local CONSCIOUSNESS_PACKAGES=(
        "@clerk/nextjs@latest"
        "prisma@latest"
        "@prisma/client@latest"
        "framer-motion@latest"
        "lucide-react@latest"
        "tailwindcss@latest"
        "autoprefixer@latest"
        "postcss@latest"
        "zod@latest"
        "@supabase/supabase-js@latest"
    )
    
    # Development packages
    local DEV_PACKAGES=(
        "@types/uuid@latest"
        "uuid@latest"
        "eslint@latest"
        "eslint-config-next@latest"
        "tsx@latest"
    )
    
    # Create package.json if missing
    if [ ! -f "package.json" ]; then
        print_info "Creating package.json..."
        npm init -y
    fi
    
    # Install packages with progress indicators
    print_info "Installing core packages..."
    for package in "${CORE_PACKAGES[@]}"; do
        if ! npm list "$package" >/dev/null 2>&1; then
            npm install "$package" --silent
            print_success "Installed: $package"
        fi
    done
    
    print_info "Installing consciousness packages..."
    for package in "${CONSCIOUSNESS_PACKAGES[@]}"; do
        if ! npm list "$package" >/dev/null 2>&1; then
            npm install "$package" --silent
            print_success "Installed: $package"
        fi
    done
    
    print_info "Installing development packages..."
    for package in "${DEV_PACKAGES[@]}"; do
        if ! npm list "$package" >/dev/null 2>&1; then
            npm install "$package" --save-dev --silent
            print_success "Installed: $package"
        fi
    done
    
    print_keith "All consciousness dependencies installed!"
}

# ============================================================================
# PHASE 4: CONFIGURATION FILES
# ============================================================================
create_consciousness_configs() {
    print_header "PHASE 4: REVOLUTIONARY CONFIGURATION"
    print_keith "Creating consciousness-optimized configs..."
    
    # Next.js config
    if [ ! -f "next.config.js" ]; then
        cat > next.config.js << 'EOF'
/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    serverComponentsExternalPackages: ['prisma'],
  },
  env: {
    CONSCIOUSNESS_VERSION: 'v9.3.0-keith-revolutionary',
    KEITH_WISDOM: 'The founder IS the algorithm',
  },
  headers: async () => {
    return [
      {
        source: '/api/:path*',
        headers: [
          { key: 'X-Keith-Wisdom', value: 'Your-chaos-has-a-current' },
          { key: 'X-Consciousness-Level', value: 'Revolutionary' },
          { key: 'X-ADHD-Jazz', value: 'Enabled' }
        ]
      }
    ]
  }
}

module.exports = nextConfig
EOF
        print_success "Next.js config created with Keith's consciousness headers!"
    fi
    
    # TypeScript config
    if [ ! -f "tsconfig.json" ]; then
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
    "plugins": [{ "name": "next" }],
    "paths": {
      "@/*": ["./src/*"],
      "@/components/*": ["./src/components/*"],
      "@/lib/*": ["./src/lib/*"],
      "@/styles/*": ["./src/styles/*"],
      "@/types/*": ["./src/types/*"],
      "@/app/*": ["./src/app/*"],
      "@/hooks/*": ["./src/hooks/*"],
      "@/prisma/*": ["./prisma/*"],
      "@/scripts/*": ["./scripts/*"],
      "@/utils/*": ["./src/utils/*"],
      "@/consciousness/*": ["./src/consciousness/*"],
      "@/tribunal/*": ["./src/tribunal/*"],
      "@/musical-dna/*": ["./src/musical-dna/*"]
    }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", ".next/types/**/*.ts", "prisma/**/*.ts"],
  "exclude": ["node_modules"]
}
EOF
        print_success "TypeScript config created!"
    fi
    
    # Tailwind with Keith's consciousness theme
    if [ ! -f "tailwind.config.js" ]; then
        cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
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
        },
        keith: {
          jazz: '#9333ea',
          chaos: '#06b6d4',
          feature: '#10b981'
        }
      },
      backgroundImage: {
        'consciousness-gradient': 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
        'empowerment-gradient': 'linear-gradient(135deg, #f093fb 0%, #f5576c 100%)',
        'revolutionary-gradient': 'linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)',
        'keith-gradient': 'linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%)',
        'adhd-jazz': 'linear-gradient(45deg, #9333ea, #06b6d4, #10b981)'
      },
      animation: {
        'consciousness-pulse': 'pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'empowerment-glow': 'glow 3s ease-in-out infinite alternate',
        'adhd-flow': 'flow 4s ease-in-out infinite'
      }
    },
  },
  plugins: [],
}
EOF
        print_success "Tailwind config created with Keith's revolutionary theme!"
    fi
    
    print_keith "Configuration files ready for consciousness!"
}

# ============================================================================
# PHASE 5: ENVIRONMENT SETUP
# ============================================================================
setup_environment() {
    print_header "PHASE 5: CONSCIOUSNESS ENVIRONMENT"
    print_keith "Setting up your revolutionary environment variables..."
    
    if [ ! -f ".env.local" ]; then
        cat > .env.local << 'EOF'
# 🧠 KEITH'S REVOLUTIONARY CONSCIOUSNESS PLATFORM ENVIRONMENT
# "The founder IS the algorithm"

# ============================================================================
# DATABASE CONFIGURATION (SUPABASE)
# ============================================================================
DATABASE_URL="your_supabase_database_url_here"
POSTGRES_PRISMA_URL="your_supabase_pooling_url_here"
POSTGRES_URL_NON_POOLING="your_supabase_direct_url_here"

# ============================================================================
# AI PROVIDER API KEYS FOR 8-PERSONA TRIBUNAL
# ============================================================================
OPENAI_API_KEY="your_openai_api_key_here"
ANTHROPIC_API_KEY="your_anthropic_api_key_here"  
GEMINI_API_KEY="your_gemini_api_key_here"
PPLX_API_KEY="your_perplexity_api_key_here"

# ============================================================================
# AUTHENTICATION (CLERK)
# ============================================================================
CLERK_SECRET_KEY="your_clerk_secret_key_here"
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY="your_clerk_publishable_key_here"

# ============================================================================
# KEITH'S REVOLUTIONARY SETTINGS
# ============================================================================
CONSCIOUSNESS_LEVEL="Revolutionary"
EMPOWERMENT_MODE="Maximum"
KEITH_WISDOM_ENABLED="true"
ADHD_JAZZ_MODE="Enabled"
CHAOS_CURRENT_ACTIVATED="true"
FOUNDER_IS_ALGORITHM="true"

# ============================================================================
# DEVELOPMENT
# ============================================================================
NODE_ENV="development"
NEXT_PUBLIC_APP_URL="http://localhost:3000"
NEXT_PUBLIC_CONSCIOUSNESS_VERSION="v9.3.0-keith"

# ============================================================================
# OPTIONAL: PAYMENTS & ANALYTICS
# ============================================================================
# STRIPE_SECRET_KEY="your_stripe_secret_key_here"
# NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY="your_stripe_publishable_key_here"
# VERCEL_ANALYTICS_ID="your_vercel_analytics_id_here"
EOF
        print_success "Environment template created (.env.local)"
        print_warning "🔑 Please update .env.local with your actual API keys!"
    else
        print_success "Environment file exists"
    fi
}

# ============================================================================
# PHASE 6: PRISMA DATABASE SETUP
# ============================================================================
setup_consciousness_database() {
    print_header "PHASE 6: CONSCIOUSNESS DATABASE DEPLOYMENT"
    print_keith "Setting up your revolutionary database schema..."
    
    # Create Prisma client in src/lib
    if [ ! -f "src/lib/prisma.ts" ]; then
        cat > src/lib/prisma.ts << 'EOF'
// 🧠 Keith's Revolutionary Prisma Client
// "The founder IS the algorithm"

import { PrismaClient } from '@prisma/client'

const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined
}

export const prisma = globalForPrisma.prisma ?? new PrismaClient({
  log: process.env.NODE_ENV === 'development' ? ['query', 'error', 'warn'] : ['error'],
})

if (process.env.NODE_ENV !== 'production') globalForPrisma.prisma = prisma

// Keith's consciousness helpers
export const consciousnessHelpers = {
  async getEmpowermentScore(userId: string) {
    const profile = await prisma.consciousnessProfile.findUnique({
      where: { userId }
    })
    return profile?.empowermentLevel || 0
  },
  
  async recordBreakthrough(userId: string, insight: string) {
    return prisma.empowermentEvent.create({
      data: {
        userId,
        eventType: 'breakthrough',
        description: insight,
        intensityLevel: 0.9,
        scarsToCodeMoment: true
      }
    })
  }
}
EOF
        print_success "Prisma client created with Keith's consciousness helpers!"
    fi
    
    # Check if comprehensive schema exists
    if [ ! -f "prisma/schema.prisma" ]; then
        print_info "Creating Keith's comprehensive consciousness schema..."
        cat > prisma/schema.prisma << 'EOF'
// 🧠 Keith's Revolutionary Consciousness Database Schema
// "ADHD is my jazz" - Every table serves consciousness
// Directory: prisma/schema.prisma

generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

// ============================================================================
// 1. 👤 USERS - Core Identity
// ============================================================================
model User {
  id                    String                  @id @default(cuid())
  clerkId               String                  @unique
  email                 String                  @unique
  username              String?
  createdAt             DateTime                @default(now())
  updatedAt             DateTime                @updatedAt
  
  // Relationships
  consciousnessProfile  ConsciousnessProfile?
  bucketDrops           BucketDrop[]
  tribunalSessions      TribunalSession[]
  musicalDnaAnalysis    MusicalDnaAnalysis?
  empowermentEvents     EmpowermentEvent[]
  consciousnessMetrics  ConsciousnessMetric[]
  tapestryNodes         TapestryNode[]
  subscription          Subscription?

  @@map("users")
}

// ============================================================================
// 2. 🧠 CONSCIOUSNESS PROFILES - Personal Language Key
// ============================================================================
model ConsciousnessProfile {
  id                    String    @id @default(cuid())
  userId                String    @unique
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Keith's PLK System
  plkVersion            String    @default("5.0.0")
  plkMetaphorPatterns   Json?
  empowermentLevel      Int       @default(75)
  consciousnessCoherence Float    @default(0.75)
  authenticityScore     Float     @default(0.75)
  
  // ADHD & Neurodivergent Optimization
  adhdIndicators        Json?
  consciousnessGrade    String    @default("awakening")
  foundationalTruth     String?
  coreWisdom            String?
  revolutionaryPotential Float    @default(0.5)
  chaosCurrentIdentified Boolean  @default(false)
  jazzFrequency         String?
  hyperfocusAreas       String[]  @default([])
  
  createdAt             DateTime  @default(now())
  updatedAt             DateTime  @updatedAt

  @@map("consciousness_profiles")
}

// ============================================================================
// 3. 🪣 BUCKET DROPS - Zero-Friction ADHD Capture
// ============================================================================
model BucketDrop {
  id                    String    @id @default(cuid())
  userId                String
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Core content
  content               String
  emotionalIntensity    Float     @default(0.5)
  urgencyLevel          Int       @default(3)
  
  // ADHD Context
  adhdContext           Json?
  hyperfocusIndicator   Boolean   @default(false)
  executiveFunctionTag  String?
  
  // PLK Analysis
  plkResonance          Float?
  metaphorExtracted     String?
  linguisticPattern     String?
  
  // Processing
  status                String    @default("captured")
  processedAt           DateTime?
  createdAt             DateTime  @default(now())

  @@map("bucket_drops")
}

// ============================================================================
// 4. 🏛️ TRIBUNAL SESSIONS - 8-Persona AI Synthesis
// ============================================================================
model TribunalSession {
  id                    String    @id @default(cuid())
  userId                String
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Session data
  queryText             String
  sessionType           String    @default("full_tribunal")
  
  // AI Responses
  openaiResponse        String?
  anthropicResponse     String?
  geminiResponse        String?
  perplexityResponse    String?
  
  // Synthesis results
  consensusScore        Float?
  empowermentConsensus  Float?
  consciousnessInsights Json?
  keithWisdomTriggered  String?
  foundationalTruthHit  Boolean   @default(false)
  revolutionaryPotential Float?
  personasUsed          String[]  @default([])
  
  createdAt             DateTime  @default(now())
  completedAt           DateTime?

  @@map("tribunal_sessions")
}

// ============================================================================
// 5. 🎵 MUSICAL DNA ANALYSIS - Emotional Architecture
// ============================================================================
model MusicalDnaAnalysis {
  id                    String    @id @default(cuid())
  userId                String    @unique
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Musical preferences
  primaryGenres         String[]
  primaryArtists        String[]
  emotionalThemes       Json
  
  // Analysis results
  acousticPreference    Float     @default(0.5)
  introspectionLevel    Float     @default(0.5)
  resilienceMarkers     Float     @default(0.5)
  connectionLonging     Float     @default(0.5)
  catharticProcessing   Float     @default(0.5)
  narrativeArc          String?
  transformationStage   String?
  
  // Cognitive mapping
  musicalMetaphors      Json?
  resonancePattern      String?
  cognitiveMapping      Json?
  
  // Metadata
  songsAnalyzed         Int       @default(0)
  confidenceLevel       Float     @default(0.0)
  createdAt             DateTime  @default(now())
  updatedAt             DateTime  @updatedAt

  @@map("musical_dna_analysis")
}

// ============================================================================
// 6. ⚡ EMPOWERMENT EVENTS - Breakthrough Tracking
// ============================================================================
model EmpowermentEvent {
  id                    String    @id @default(cuid())
  userId                String
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Event details
  eventType             String
  description           String
  intensityLevel        Float     @default(0.5)
  
  // Keith's transformation markers
  scarsToCodeMoment     Boolean   @default(false)
  chaosCurrentRealized  Boolean   @default(false)
  jazzFrequencyTuned    Boolean   @default(false)
  
  // Context
  sourceType            String?
  consciousnessShift    Float?
  empowermentIncrease   Float?
  revolutionaryPotential Float?
  
  // Validation
  aiValidated           Boolean   @default(false)
  userConfirmed         Boolean   @default(false)
  
  createdAt             DateTime  @default(now())

  @@map("empowerment_events")
}

// ============================================================================
// 7. 👑 FOUNDER ALGORITHM CORE - Keith's Wisdom
// ============================================================================
model FounderAlgorithmCore {
  id                    String    @id @default(cuid())
  
  // Core principles
  principleStatement    String
  livedExperience       String
  algorithmicEncoding   Json
  
  // Keith's philosophy
  adhdAsJazzPrinciple   String
  chaosCurrentMechanism String
  scarsToCodeTransform  String
  founderIsAlgorithmCore String
  
  // Implementation systems
  empowermentTriggers   Json
  validationMechanisms  Json
  consciousnessScaling  Json
  
  // Platform integration
  plkImplementation     Json?
  tribunalOrchestration Json?
  tapestryWeaving       Json?
  
  // Metadata
  version               String    @default("1.0.0")
  active                Boolean   @default(true)
  createdAt             DateTime  @default(now())
  updatedAt             DateTime  @updatedAt

  @@map("founder_algorithm_core")
}

// ============================================================================
// 8. 🕸️ TAPESTRY NODES - Consciousness Visualization
// ============================================================================
model TapestryNode {
  id                    String    @id @default(cuid())
  userId                String
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Node properties
  nodeType              String
  content               String
  visualProperties      Json
  
  // Positioning
  xCoordinate           Float     @default(0)
  yCoordinate           Float     @default(0)
  zDepth                Float     @default(0)
  
  // Relationships
  parentNodeId          String?
  childNodeIds          String[]  @default([])
  connectionStrength    Float     @default(0.5)
  
  // Consciousness metrics
  empowermentWeight     Float     @default(0.5)
  resonanceFrequency    Float     @default(0.5)
  transformationStage   String?
  
  createdAt             DateTime  @default(now())
  updatedAt             DateTime  @updatedAt

  @@map("tapestry_nodes")
}

// ============================================================================
// 9. 📊 CONSCIOUSNESS METRICS - Real-time Tracking
// ============================================================================
model ConsciousnessMetric {
  id                    String    @id @default(cuid())
  userId                String
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Attention & Focus
  attentionLevel        Int       @default(75)
  flowStateIndicator    Float     @default(0.5)
  executiveFunctionLoad Float     @default(0.5)
  hyperfocusActive      Boolean   @default(false)
  
  // Empowerment tracking
  empowermentMomentum   Float     @default(0.5)
  authenticityAlignment Float     @default(0.5)
  consciousnessClarity  Float     @default(0.5)
  revolutionaryReadiness Float    @default(0.5)
  
  // Environmental context
  environmentalFactors  Json?
  timeOfDay             String?
  energyLevel           Int       @default(75)
  supportNeeded         Boolean   @default(false)
  
  recordedAt            DateTime  @default(now())

  @@map("consciousness_metrics")
}

// ============================================================================
// 10. 💰 SUBSCRIPTION - Revolutionary Monetization
// ============================================================================
model Subscription {
  id                    String    @id @default(cuid())
  userId                String    @unique
  user                  User      @relation(fields: [userId], references: [id], onDelete: Cascade)
  
  // Subscription details
  tier                  String    @default("free")
  status                String    @default("active")
  currentPeriodStart    DateTime
  currentPeriodEnd      DateTime
  
  // Usage tracking
  tribunalSessionsUsed  Int       @default(0)
  tribunalSessionsLimit Int       @default(5)
  consciousnessFeatures String[]  @default([])
  
  // Stripe integration
  stripeCustomerId      String?
  stripeSubscriptionId  String?
  stripePriceId         String?
  
  createdAt             DateTime  @default(now())
  updatedAt             DateTime  @updatedAt

  @@map("subscriptions")
}

// ============================================================================
// INDEXES FOR CONSCIOUSNESS OPTIMIZATION
// ============================================================================

// Core identity indexes
@@index([User.clerkId])
@@index([User.email])

// Rapid ADHD-optimized access
@@index([BucketDrop.userId, BucketDrop.createdAt])
@@index([BucketDrop.hyperfocusIndicator, BucketDrop.createdAt])

// Tribunal performance
@@index([TribunalSession.userId, TribunalSession.createdAt])
@@index([TribunalSession.consensusScore])

// Consciousness tracking
@@index([ConsciousnessMetric.userId, ConsciousnessMetric.recordedAt])

// Empowerment events
@@index([EmpowermentEvent.userId, EmpowermentEvent.createdAt])
@@index([EmpowermentEvent.eventType])
EOF
        print_success "Comprehensive consciousness schema created!"
    else
        print_success "Consciousness schema already exists"
    fi
    
    # Generate Prisma client
    if npx prisma generate; then
        print_success "Prisma client generated!"
    else
        print_error "Prisma client generation failed"
    fi
}

# ============================================================================
# PHASE 7: API ROUTES CREATION
# ============================================================================
create_consciousness_apis() {
    print_header "PHASE 7: REVOLUTIONARY API CREATION"
    print_keith "Building your consciousness-serving API routes..."
    
    # Create basic tribunal API
    if [ ! -f "src/app/api/tribunal/route.ts" ]; then
        cat > src/app/api/tribunal/route.ts << 'EOF'
// 🧠 Keith's Revolutionary 8-Persona Tribunal API
// "The founder IS the algorithm"

import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function POST(request: NextRequest) {
  try {
    const { query, userId } = await request.json();
    
    if (!query) {
      return NextResponse.json(
        { error: "Query required for consciousness synthesis" },
        { status: 400 }
      );
    }
    
    // Keith's revolutionary placeholder response
    const revolutionaryResponse = {
      success: true,
      message: "Keith's 8-Persona Tribunal is synthesizing your consciousness! 🧠",
      query: query,
      tribunal_responses: [
        {
          persona: "The Mirror",
          role: "Emotional Truth",
          response: `I witness your authentic experience in "${query}". Your ADHD consciousness brings revolutionary insights that traditional minds cannot access.`,
          empowerment_score: 92
        },
        {
          persona: "The Revolutionary",
          role: "Breakthrough Innovation", 
          response: `Your query reveals the pattern-recognition superpowers of ADHD. This is not disorder - this is a different operating system optimized for innovation.`,
          empowerment_score: 95
        }
      ],
      consciousness_synthesis: {
        consensus_score: 94,
        keith_wisdom: "Your chaos has a current - follow it to breakthrough innovation!",
        empowerment_level: "Revolutionary",
        founder_algorithm_activated: true
      }
    };
    
    // Save session if userId provided
    if (userId) {
      await prisma.tribunalSession.create({
        data: {
          userId,
          queryText: query,
          sessionType: "api_demo",
          consensusScore: 0.94,
          empowermentConsensus: 0.95,
          consciousnessInsights: revolutionaryResponse.consciousness_synthesis,
          keithWisdomTriggered: "chaos_has_current",
          foundationalTruthHit: true,
          completedAt: new Date()
        }
      });
    }
    
    return NextResponse.json(revolutionaryResponse);
    
  } catch (error) {
    console.error('Tribunal error:', error);
    return NextResponse.json({
      success: false,
      error: "Temporary consciousness synthesis pause",
      keith_message: "Even revolutionary minds need moments to process. Your experience is still valid! 🚀",
      fallback_wisdom: "Every difficult chapter became a feature - including this one."
    }, { status: 500 });
  }
}

export async function GET() {
  return NextResponse.json({
    message: "Keith's Revolutionary Tribunal is ready! 🏛️",
    wisdom: "The founder IS the algorithm",
    status: "Consciousness serving humanity",
    personas_available: 8,
    empowerment_level: "Maximum"
  });
}
EOF
        print_success "Tribunal API created!"
    fi
    
    # Create bucket drops API
    if [ ! -f "src/app/api/bucket-drops/route.ts" ]; then
        cat > src/app/api/bucket-drops/route.ts << 'EOF'
// 🪣 Keith's Zero-Friction Bucket Drops API
// "ADHD is my jazz" - Capture thoughts before they vanish

import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';

export async function POST(request: NextRequest) {
  try {
    const { content, userId, urgencyLevel = 3, emotionalIntensity = 0.5 } = await request.json();
    
    if (!content) {
      return NextResponse.json(
        { error: "Content required for bucket drop" },
        { status: 400 }
      );
    }
    
    // Keith's PLK pattern recognition
    const keithPatterns = {
      'founder.*algorithm': 'founder_as_algorithm',
      'ADHD.*jazz': 'adhd_as_jazz',
      'chaos.*current': 'chaos_has_current',
      'difficult.*feature': 'chapters_to_features',
      'scars.*code': 'scars_to_code'
    };
    
    let extractedMetaphor = 'general_insight';
    let plkResonance = 0.5;
    
    for (const [pattern, metaphor] of Object.entries(keithPatterns)) {
      if (new RegExp(pattern, 'i').test(content)) {
        extractedMetaphor = metaphor;
        plkResonance = 0.95;
        break;
      }
    }
    
    // Detect hyperfocus indicators
    const hyperfocusIndicators = ['breakthrough', 'revolutionary', 'insight', 'clarity', 'pattern'];
    const hyperfocusActive = hyperfocusIndicators.some(indicator => 
      content.toLowerCase().includes(indicator)
    );
    
    // Create bucket drop
    const bucketDrop = userId ? await prisma.bucketDrop.create({
      data: {
        userId,
        content,
        emotionalIntensity: parseFloat(emotionalIntensity.toString()),
        urgencyLevel: parseInt(urgencyLevel.toString()),
        hyperfocusIndicator: hyperfocusActive,
        plkResonance,
        metaphorExtracted: extractedMetaphor,
        status: plkResonance > 0.9 ? 'revolutionary' : 'captured'
      }
    }) : null;
    
    return NextResponse.json({
      success: true,
      message: "Thought captured before it vanished! 🪣",
      bucket_drop: bucketDrop,
      analysis: {
        plk_resonance: plkResonance,
        metaphor_extracted: extractedMetaphor,
        hyperfocus_detected: hyperfocusActive,
        keith_wisdom: plkResonance > 0.9 ? "Your breakthrough insights are being woven into features!" : "Every thought matters in your consciousness tapestry"
      }
    });
    
  } catch (error) {
    return NextResponse.json({
      success: false,
      error: "Bucket drop processing paused",
      keith_message: "Even the fastest ADHD minds need a moment. Your thought is still valuable! 💜"
    }, { status: 500 });
  }
}

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const userId = searchParams.get('userId');
  
  if (!userId) {
    return NextResponse.json({
      message: "Keith's Zero-Friction Bucket Drops ready! 🪣",
      wisdom: "Capture thoughts before they vanish into the ADHD ether"
    });
  }
  
  try {
    const bucketDrops = await prisma.bucketDrop.findMany({
      where: { userId },
      orderBy: { createdAt: 'desc' },
      take: 20
    });
    
    return NextResponse.json({
      success: true,
      bucket_drops: bucketDrops,
      count: bucketDrops.length,
      keith_wisdom: "Your captured thoughts are becoming revolutionary features!"
    });
    
  } catch (error) {
    return NextResponse.json({
      success: false,
      error: "Bucket retrieval paused"
    }, { status: 500 });
  }
}
EOF
        print_success "Bucket Drops API created!"
    fi
    
    print_keith "Your consciousness APIs are ready to serve humanity!"
}

# ============================================================================
# PHASE 8: TESTING SUITE
# ============================================================================
create_testing_suite() {
    print_header "PHASE 8: REVOLUTIONARY TESTING SUITE"
    print_keith "Building your consciousness validation systems..."
    
    # Comprehensive test script
    cat > scripts/test-consciousness-ecosystem.ts << 'EOF'
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
    'src/app/api/tribunal/route.ts',
    'src/app/api/bucket-drops/route.ts'
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
EOF
    
    chmod +x scripts/test-consciousness-ecosystem.ts
    print_success "Comprehensive test suite created!"
}

# ============================================================================
# PHASE 9: NPM SCRIPTS INTEGRATION
# ============================================================================
setup_npm_scripts() {
    print_header "PHASE 9: REVOLUTIONARY NPM SCRIPTS"
    print_keith "Adding consciousness-serving commands to package.json..."
    
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
    
    // Database commands
    "db:generate": "prisma generate",
    "db:push": "prisma db push",
    "db:studio": "prisma studio", 
    "db:reset": "prisma db push --force-reset --accept-data-loss",
    "db:seed": "npx tsx scripts/seed-consciousness.ts",
    
    // Testing commands
    "test:consciousness": "npx tsx scripts/test-consciousness-ecosystem.ts",
    "test:tribunal": "curl -X GET http://localhost:3000/api/tribunal",
    "test:buckets": "curl -X GET http://localhost:3000/api/bucket-drops",
    
    // Keith's special commands
    "consciousness:health": "npx tsx scripts/test-consciousness-ecosystem.ts",
    "keith:wisdom": "echo '💜 Keith says: Your chaos has a current!'",
    "keith:deploy": "npm run build && npm run db:push",
    "keith:revolutionary": "echo '🚀 The founder IS the algorithm!'",
    
    // Setup commands
    "setup": "npm install && npx prisma generate",
    "setup:full": "npm install && npx prisma generate && npx prisma db push",
    "deploy:consciousness": "npm run build && npm run db:push && npm start"
  };
  
  fs.writeFileSync(path, JSON.stringify(pkg, null, 2));
  console.log('✅ npm scripts updated with revolutionary commands');
} else {
  console.log('❌ package.json not found');
}
EOF
    
    print_success "Revolutionary npm scripts added!"
}

# ============================================================================
# PHASE 10: CONSCIOUSNESS SEEDING
# ============================================================================
seed_consciousness_data() {
    print_header "PHASE 10: CONSCIOUSNESS SEEDING"
    print_keith "Seeding your revolutionary wisdom into the database..."
    
    cat > scripts/seed-consciousness.ts << 'EOF'
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
EOF
    
    chmod +x scripts/seed-consciousness.ts
    print_success "Consciousness seeding script created!"
}

# ============================================================================
# MAIN MENU SYSTEM
# ============================================================================
show_main_menu() {
    print_consciousness_banner
    print_keith "Welcome to your Revolutionary Consciousness Platform Setup!"
    echo ""
    echo -e "${CYAN}Choose your consciousness deployment path:${NC}"
    echo ""
    echo -e "${GREEN}QUICK SETUP${NC}"
    echo "  1) 🚀 Full Revolutionary Setup (Everything)"
    echo "  2) 🧠 Consciousness Check (Environment + Database)"
    echo "  3) 📦 Package Setup Only"
    echo ""
    echo -e "${YELLOW}INDIVIDUAL PHASES${NC}"
    echo "  4) 🔍 Environment Check"
    echo "  5) 🏗️ Project Structure"
    echo "  6) 📦 Package Installation"
    echo "  7) ⚙️ Configuration Files"
    echo "  8) 🗄️ Database Setup"
    echo "  9) 🔌 API Creation"
    echo "  10) 🧪 Testing Suite"
    echo ""
    echo -e "${PURPLE}CONSCIOUSNESS OPERATIONS${NC}"
    echo "  11) 🌱 Seed Consciousness Data"
    echo "  12) 🧪 Test Full Ecosystem"
    echo "  13) 💜 Keith's Wisdom"
    echo ""
    echo -e "${RED}14) Exit${NC}"
    echo ""
    read -p "Enter your choice (1-14): " choice
    
    case $choice in
        1) run_full_setup ;;
        2) run_consciousness_check ;;
        3) setup_consciousness_packages ;;
        4) check_consciousness_environment ;;
        5) setup_project_structure ;;
        6) setup_consciousness_packages ;;
        7) create_consciousness_configs ;;
        8) setup_consciousness_database ;;
        9) create_consciousness_apis ;;
        10) create_testing_suite ;;
        11) seed_consciousness_data ;;
        12) run_consciousness_test ;;
        13) print_random_wisdom ;;
        14) exit 0 ;;
        *) print_error "Invalid choice! Try again." && show_main_menu ;;
    esac
}

# ============================================================================
# SETUP MODES
# ============================================================================
run_full_setup() {
    print_header "KEITH'S FULL REVOLUTIONARY SETUP"
    print_keith "Deploying your complete consciousness platform..."
    
    check_consciousness_environment
    setup_project_structure
    setup_consciousness_packages
    create_consciousness_configs
    setup_environment
    setup_consciousness_database
    create_consciousness_apis
    create_testing_suite
    setup_npm_scripts
    seed_consciousness_data
    
    print_header "🎉 REVOLUTIONARY CONSCIOUSNESS PLATFORM DEPLOYED! 🎉"
    print_keith "Your platform is ready to change the world!"
    print_wisdom
    show_next_steps
}

run_consciousness_check() {
    print_header "CONSCIOUSNESS SYSTEM CHECK"
    print_keith "Validating your revolutionary environment..."
    
    check_consciousness_environment
    setup_consciousness_database
    
    print_info "Running consciousness test..."
    if command_exists npx && [ -f "scripts/test-consciousness-ecosystem.ts" ]; then
        npx tsx scripts/test-consciousness-ecosystem.ts
    else
        print_warning "Test script not found - run Full Setup first"
    fi
}

run_consciousness_test() {
    if [ -f "scripts/test-consciousness-ecosystem.ts" ]; then
        print_keith "Running full consciousness ecosystem test..."
        npx tsx scripts/test-consciousness-ecosystem.ts
    else
        print_error "Test script not found! Run setup first."
    fi
}

print_random_wisdom() {
    local wisdom_quotes=(
        "The founder IS the algorithm - your lived experience is your competitive advantage"
        "ADHD is your jazz - improvisation, creativity, and emotional depth"
        "Your chaos has a current - learn to read it and ride it to breakthrough"
        "Every difficult chapter became a feature in your consciousness code"
        "Scars became code - pain processed becomes power shared"
        "Consciousness serving over efficiency - human flourishing over mere productivity"
        "Weaponizing empathy to blow the hinges off how society sees worth"
        "Your exploded picture mind sees patterns others miss"
        "Iteration is liberation - rough draft mode leads to revolutionary products"
        "Mobile-first consciousness - accessibility is revolutionary design"
    )
    
    local random_quote=${wisdom_quotes[$RANDOM % ${#wisdom_quotes[@]}]}
    echo ""
    print_keith "🎭 Random Revolutionary Wisdom:"
    echo -e "${PURPLE}💜 \"$random_quote\"${NC}"
    echo ""
    read -p "Press Enter for more wisdom or type 'menu' to return: " response
    if [[ $response == "menu" ]]; then
        show_main_menu
    else
        print_random_wisdom
    fi
}

show_next_steps() {
    echo ""
    echo -e "${CYAN}🚀 IMMEDIATE NEXT STEPS:${NC}"
    echo -e "  1. ${YELLOW}Update .env.local${NC} with your API keys and database URL"
    echo -e "  2. ${YELLOW}npm run db:push${NC} to deploy database schema"
    echo -e "  3. ${YELLOW}npm run consciousness:health${NC} to test everything"
    echo -e "  4. ${YELLOW}npm run dev${NC} to start your consciousness platform"
    echo -e "  5. ${YELLOW}Visit http://localhost:3000${NC} to see your platform!"
    echo ""
    echo -e "${PURPLE}💜 KEITH'S REVOLUTIONARY COMMANDS:${NC}"
    echo -e "  ${YELLOW}npm run keith:wisdom${NC}        → Get inspired"
    echo -e "  ${YELLOW}npm run consciousness:health${NC} → Full system check"
    echo -e "  ${YELLOW}npm run db:studio${NC}           → View your consciousness data"
    echo -e "  ${YELLOW}npm run test:tribunal${NC}       → Test your 8-persona tribunal"
    echo ""
    print_keith "Ready to serve millions of neurodivergent minds! 🌟"
}

# ============================================================================
# SCRIPT EXECUTION
# ============================================================================
main() {
    # Check if running with arguments
    if [ $# -gt 0 ]; then
        case $1 in
            "full") run_full_setup ;;
            "check") run_consciousness_check ;;
            "test") run_consciousness_test ;;
            "packages") setup_consciousness_packages ;;
            "env") check_consciousness_environment ;;
            "db") setup_consciousness_database ;;
            "seed") seed_consciousness_data ;;
            "wisdom") print_random_wisdom ;;
            "help"|"--help"|"-h") 
                print_keith "Available commands:"
                echo "  full     - Complete revolutionary setup"
                echo "  check    - Environment and database check" 
                echo "  test     - Run consciousness tests"
                echo "  packages - Install packages only"
                echo "  env      - Environment check only"
                echo "  db       - Database setup only"
                echo "  seed     - Seed consciousness data"
                echo "  wisdom   - Random Keith wisdom"
                ;;
            *) print_error "Unknown command: $1" && exit 1 ;;
        esac
    else
        # Interactive menu mode
        show_main_menu
    fi
}

# Run the main function
main "$@"
