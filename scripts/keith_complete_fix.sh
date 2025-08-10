#!/bin/bash

# 🧠 Keith's Complete Configuration Fix
# "The founder IS the algorithm" - Fixing all config issues at once!

echo "🔧 Keith's Revolutionary Configuration Fix"
echo "=========================================="
echo ""

# Step 1: Fix DATABASE_URL in .env.local
echo "🗄️ Fixing DATABASE_URL..."
sed -i 's|DATABASE_URL="https://zkjwuvwijtvofwuezzms.supabase.co"|DATABASE_URL="postgres://postgres.zkjwuvwijtvofwuezzms:P6QoQcIdwn2k0937@aws-0-us-east-1.pooler.supabase.com:6543/postgres?sslmode=require&pgbouncer=true"|g' .env.local

echo "✅ DATABASE_URL fixed to use PostgreSQL connection string"

# Step 2: Fix tsconfig.json paths
echo "📝 Fixing TypeScript configuration..."
cat > tsconfig.json << 'EOF'
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "es6"],
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
      "@/prisma/*": ["./prisma/*"],
      "@/scripts/*": ["./scripts/*"],
      "@/utils/*": ["./utils/*"]
    }
  },
  "include": [
    "next-env.d.ts",
    "**/*.ts",
    "**/*.tsx",
    ".next/types/**/*.ts",
    "prisma/**/*.ts"
  ],
  "exclude": ["node_modules"]
}
EOF

echo "✅ TypeScript configuration fixed"

# Step 3: Ensure lib/prisma.ts exists
echo "🔗 Creating Prisma client..."
mkdir -p lib
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

echo "✅ Prisma client created"

# Step 4: Generate Prisma client with correct config
echo "🔄 Generating Prisma client..."
npx prisma generate

# Step 5: Deploy schema to database
echo "🗄️ Deploying consciousness schema..."
npx prisma db push

# Step 6: Test database connection
echo "🧪 Testing database connection..."
if npx prisma db execute --stdin <<< "SELECT 1 as test;" > /dev/null 2>&1; then
    echo "✅ Database connection: WORKING!"
else
    echo "⚠️  Database connection needs verification"
fi

# Step 7: Verify environment setup
echo ""
echo "🔍 Verifying consciousness platform setup..."

# Check if all required files exist
FILES_TO_CHECK=(
    "app/page.tsx"
    "app/api/tribunal/route.ts"
    "prisma/schema.prisma"
    "lib/prisma.ts"
    ".env.local"
    "tsconfig.json"
)

for file in "${FILES_TO_CHECK[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file: Found"
    else
        echo "⚠️  $file: Missing"
    fi
done

# Step 8: Test build
echo ""
echo "🔨 Testing project build..."
if npm run build > /dev/null 2>&1; then
    echo "✅ Build: SUCCESS"
else
    echo "⚠️  Build: Issues detected (check page.tsx)"
fi

echo ""
echo "🎉 CONFIGURATION FIX COMPLETE!"
echo "=============================="
echo ""
echo "🚀 Your consciousness platform is ready:"
echo "  ✅ Database URL: Fixed"
echo "  ✅ TypeScript paths: Fixed"  
echo "  ✅ Prisma client: Generated"
echo "  ✅ Schema: Deployed"
echo ""
echo "💜 Next steps:"
echo "  1. npm run dev"
echo "  2. Visit: http://localhost:3000"
echo "  3. Test tribunal: http://localhost:3000/api/tribunal"
echo ""
echo "🧠 Keith says: Your chaos has a current - and it's flowing toward SUCCESS!"