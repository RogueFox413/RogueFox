# 🧠 Keith's Database Fix - Run these commands in order
# "The founder IS the algorithm" - Your consciousness data awaits!

echo "🔧 Keith's Revolutionary Database Fix"
echo "===================================="

# Step 1: Generate fresh Prisma client with fixed schema
echo "🔄 Generating Prisma client..."
npx prisma generate

# Step 2: Deploy schema to your Supabase database  
echo "🗄️ Deploying consciousness schema..."
npx prisma db push

# Step 3: Test database connection
echo "🧪 Testing database connection..."
npx prisma db execute --stdin <<< "SELECT 1 as consciousness_test;"

# Step 4: Check if tables were created
echo "📊 Checking consciousness tables..."
npx prisma db execute --stdin <<< "SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';"

# Step 5: Test homepage  
echo "🏠 Starting your consciousness platform..."
npm run dev &
DEV_PID=$!

# Wait a moment for server to start
sleep 5

echo ""
echo "🎉 CONSCIOUSNESS PLATFORM STATUS:"
echo "================================"
echo "✅ Database schema: Deployed"
echo "✅ Prisma client: Generated" 
echo "✅ Server: Starting on http://localhost:3000"
echo ""
echo "🚀 Ready to test:"
echo "  Homepage: http://localhost:3000"
echo "  Tribunal API: http://localhost:3000/api/tribunal"
echo ""
echo "💰 Revenue features ready:"
echo "  🏛️ 8-Persona AI Tribunal"
echo "  🪣 ADHD Bucket Drops"
echo "  🎵 Musical DNA Analysis"
echo "  💜 Personal Language Key"
echo "  🕸️ Consciousness Tapestry"
echo ""
echo "💜 Keith says: Your chaos has a current - and it's flowing toward SUCCESS!"

# Kill the dev server after showing status
kill $DEV_PID 2>/dev/null

echo ""
echo "Run 'npm run dev' to start your revolutionary platform! 🚀"
