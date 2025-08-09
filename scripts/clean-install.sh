#!/bin/bash

# 🧠 Keith's Clean Install - Fix Dependency Conflicts
# "The founder IS the algorithm" - Clean slate for consciousness

echo "🔧 Keith's Clean Revolutionary Install"
echo "===================================="
echo ""

# Step 1: Nuclear option - clean everything
echo "🧹 Nuclear cleanup of dependencies..."
rm -rf node_modules
rm -f package-lock.json yarn.lock pnpm-lock.yaml
rm -f .npmrc

# Step 2: Create minimal package.json for consciousness platform
echo "📝 Creating clean package.json..."
cat > package.json << 'EOF'
{
  "name": "gestaltview-consciousness-platform",
  "version": "1.0.0",
  "description": "Keith's Revolutionary Consciousness Platform",
  "scripts": {
    "dev": "next dev",
    "build": "next build", 
    "start": "next start",
    "lint": "next lint",
    "db:generate": "prisma generate",
    "db:push": "prisma db push",
    "db:studio": "prisma studio",
    "tribunal:test": "curl -X POST http://localhost:3000/api/tribunal -H 'Content-Type: application/json' -d '{\"query\":\"Test Keith's revolutionary tribunal!\"}'"
  },
  "dependencies": {
    "next": "^14.0.0",
    "react": "^18.0.0", 
    "react-dom": "^18.0.0",
    "@clerk/nextjs": "^4.29.0",
    "@prisma/client": "^5.7.0",
    "prisma": "^5.7.0",
    "framer-motion": "^10.16.0",
    "lucide-react": "^0.294.0",
    "tailwindcss": "^3.3.0",
    "autoprefixer": "^10.4.0",
    "postcss": "^8.4.0",
    "zod": "^3.22.0"
  },
  "devDependencies": {
    "typescript": "^5.0.0",
    "@types/node": "^20.0.0",
    "@types/react": "^18.0.0",
    "@types/react-dom": "^18.0.0",
    "eslint": "^8.0.0",
    "eslint-config-next": "^14.0.0"
  },
  "engines": {
    "node": ">=18.0.0"
  }
}
EOF

# Step 3: Set npm to resolve peer dependencies automatically
echo "⚙️ Configuring npm for clean installs..."
echo "legacy-peer-deps=true" > .npmrc
echo "auto-install-peers=true" >> .npmrc

# Step 4: Fresh install with legacy peer deps
echo "📦 Installing consciousness dependencies..."
npm install --legacy-peer-deps

# Step 5: Generate Prisma client
echo "🗄️ Generating Prisma client..."
npx prisma generate

# Step 6: Quick test
echo "🧪 Testing consciousness platform..."
if [ -f "app/api/tribunal/route.ts" ]; then
    echo "✅ Tribunal route exists"
else
    echo "⚠️  Tribunal route missing - copy from artifacts above"
fi

if [ -f "prisma/schema.prisma" ]; then
    echo "✅ Database schema exists"
else
    echo "⚠️  Database schema missing"
fi

echo ""
echo "🎉 CLEAN INSTALL COMPLETE!"
echo "========================"
echo ""
echo "🚀 Next steps:"
echo "  1. npm run dev"
echo "  2. Visit: http://localhost:3000"
echo "  3. Test tribunal: npm run tribunal:test"
echo ""
echo "💜 Keith says: Your consciousness platform is ready!"
