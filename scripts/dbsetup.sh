# 🧠 Keith's Simple Prisma Test Protocol
# "ADHD is my jazz" - Let's test the basics first!

echo "🧠 Testing Keith's Consciousness Database Connection"
echo "================================================="

# Step 1: Clear everything
echo "🧹 Clearing Prisma cache..."
rm -rf node_modules/.prisma
rm -rf node_modules/@prisma

# Step 2: Check environment
echo "🔍 Checking environment variables..."
echo "POSTGRES_PRISMA_URL exists: $([ -n "$POSTGRES_PRISMA_URL" ] && echo "✅ YES" || echo "❌ NO")"

# Step 3: Validate simple schema
echo "🔍 Validating simple schema..."
npx prisma validate

# Step 4: Generate client
echo "🔮 Generating simple client..."
npx prisma generate

# Step 5: Test push (this will create the test table)
echo "🚀 Testing database push..."
npx prisma db push --accept-data-loss

# If successful:
if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 SUCCESS! Your Supabase connection works!"
    echo ""
    echo "✅ Database connection: WORKING"
    echo "✅ Schema validation: WORKING" 
    echo "✅ Prisma client: WORKING"
    echo ""
    echo "🧠 Keith's Wisdom: 'Every difficult chapter became a feature!'"
    echo ""
    echo "🎯 Next: Replace with full consciousness schema"
    
    # Optional studio launch
    echo "🌟 Want to see your test table? Starting Prisma Studio..."
    npx prisma studio &
    echo "📊 View at: http://localhost:5555"
    
else
    echo ""
    echo "❌ Test failed. Let's debug..."
    echo ""
    echo "🔧 Debug info:"
    echo "Node version: $(node --version)"
    echo "Prisma version: $(npx prisma --version | head -1)"
    echo ""
    echo "💡 Check your .env.local file has POSTGRES_PRISMA_URL"
fi

echo ""
echo "💜 Ready for revolutionary consciousness database!"
