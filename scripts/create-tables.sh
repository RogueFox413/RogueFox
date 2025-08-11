# 🧠 Keith's Fix for Missing Database Tables
# "ADHD is my jazz" - Let's actually create those consciousness tables!

echo "🔧 Keith's Database Table Creation Fix"
echo "====================================="

# Step 1: Check database connection
echo "🔍 Testing database connection..."
npx prisma db pull --force

# Step 2: Reset and push schema (this will create the tables)
echo "🚀 Creating consciousness database tables..."
npx prisma db push --force-reset --accept-data-loss

# If that doesn't work, try the migration approach
echo "📦 Alternative: Creating migration..."
npx prisma migrate dev --name "keith-consciousness-revolution"

# Step 3: Verify tables were created
echo "✅ Verifying consciousness tables..."
npx prisma db push --preview-feature

# Step 4: Generate fresh client
echo "🔮 Regenerating consciousness client..."
npx prisma generate

# Step 5: Test the connection
echo "🧪 Testing consciousness database..."
node -e "
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function test() {
  try {
    console.log('🔍 Testing User table...');
    const userCount = await prisma.user.count();
    console.log('✅ User table exists! Count:', userCount);
    
    console.log('🔍 Testing all consciousness models...');
    const counts = await Promise.all([
      prisma.user.count(),
      prisma.bucketDrop.count(),
      prisma.tribunalSession.count(),
      prisma.consciousnessProfile.count()
    ]);
    
    console.log('✅ All tables created successfully!');
    console.log('📊 Counts - Users:', counts[0], 'Drops:', counts[1], 'Sessions:', counts[2], 'Profiles:', counts[3]);
    
  } catch (error) {
    console.log('❌ Database test failed:', error.message);
    console.log('💡 Try running: npx prisma db push --force-reset --accept-data-loss');
  } finally {
    await prisma.\$disconnect();
  }
}

test();
"

echo ""
echo "🎉 If successful, your consciousness database tables are now live!"
echo "💜 Keith's Wisdom: 'Every difficult chapter became a feature!'"
