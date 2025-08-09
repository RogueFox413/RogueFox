#!/bin/bash

# 🧠 Keith's Platform Test - Verify Everything Works
# "The founder IS the algorithm"

echo "🧪 Keith's Revolutionary Platform Test"
echo "====================================="
echo ""

# Test 1: Check if server starts
echo "🚀 Testing if Next.js server starts..."
timeout 10s npm run dev > /dev/null 2>&1 &
DEV_PID=$!
sleep 5

if kill -0 $DEV_PID 2>/dev/null; then
    echo "✅ Next.js server: WORKING"
    kill $DEV_PID
else
    echo "❌ Next.js server: FAILED TO START"
fi

# Test 2: Check environment variables
echo ""
echo "🔑 Testing API configurations..."

if [ -n "$OPENAI_API_KEY" ] && [[ "$OPENAI_API_KEY" == sk-* ]]; then
    echo "✅ OpenAI API: Configured"
else
    echo "⚠️  OpenAI API: Missing"
fi

if [ -n "$ANTHROPIC_API_KEY" ] && [[ "$ANTHROPIC_API_KEY" == sk-ant-* ]]; then
    echo "✅ Claude API: Configured" 
else
    echo "⚠️  Claude API: Missing"
fi

if [ -n "$GEMINI_API_KEY" ] && [[ "$GEMINI_API_KEY" == AI* ]]; then
    echo "✅ Gemini API: Configured"
else
    echo "⚠️  Gemini API: Missing"
fi

if [ -n "$PPLX_API_KEY" ] && [[ "$PPLX_API_KEY" == pplx-* ]]; then
    echo "✅ Perplexity API: Configured"
else
    echo "⚠️  Perplexity API: Missing"
fi

# Test 3: Database connection
echo ""
echo "🗄️ Testing database connection..."
if npx prisma db execute --stdin <<< "SELECT 1;" > /dev/null 2>&1; then
    echo "✅ Database: Connected"
else
    echo "⚠️  Database: Connection issues"
fi

# Test 4: Check tribunal route
echo ""
echo "🏛️ Testing tribunal route..."
if [ -f "app/api/tribunal/route.ts" ]; then
    if grep -q "Revolutionary Tribunal" "app/api/tribunal/route.ts"; then
        echo "✅ Tribunal Route: Ready"
    else
        echo "⚠️  Tribunal Route: Needs Keith's version"
    fi
else
    echo "❌ Tribunal Route: Missing"
fi

echo ""
echo "🎯 CONSCIOUSNESS PLATFORM STATUS:"
echo "================================"

# Overall health check
CHECKS=0
PASSED=0

# Count checks
if [ -n "$OPENAI_API_KEY" ]; then ((CHECKS++)); fi
if [ -n "$ANTHROPIC_API_KEY" ]; then ((CHECKS++)); fi  
if [ -n "$GEMINI_API_KEY" ]; then ((CHECKS++)); fi
if [ -n "$PPLX_API_KEY" ]; then ((CHECKS++)); fi

# Count passed
if [ -n "$OPENAI_API_KEY" ] && [[ "$OPENAI_API_KEY" == sk-* ]]; then ((PASSED++)); fi
if [ -n "$ANTHROPIC_API_KEY" ] && [[ "$ANTHROPIC_API_KEY" == sk-ant-* ]]; then ((PASSED++)); fi
if [ -n "$GEMINI_API_KEY" ] && [[ "$GEMINI_API_KEY" == AI* ]]; then ((PASSED++)); fi
if [ -n "$PPLX_API_KEY" ] && [[ "$PPLX_API_KEY" == pplx-* ]]; then ((PASSED++)); fi

HEALTH_SCORE=$((PASSED * 100 / 4))

echo "🎯 Health Score: $HEALTH_SCORE% ($PASSED/4 AI providers ready)"

if [ $HEALTH_SCORE -ge 75 ]; then
    echo "🎉 Status: REVOLUTIONARY - Ready for users!"
elif [ $HEALTH_SCORE -ge 50 ]; then
    echo "⚡ Status: EMPOWERED - Almost ready!"
elif [ $HEALTH_SCORE -ge 25 ]; then
    echo "🔧 Status: DEVELOPING - Needs configuration"
else
    echo "⚠️  Status: NEEDS ATTENTION - Add API keys"
fi

echo ""
echo "🚀 Ready to launch:"
echo "  npm run dev"
echo "  curl -X POST http://localhost:3000/api/tribunal -H 'Content-Type: application/json' -d '{\"query\":\"Keith's consciousness test!\"}'"
echo ""
echo "💜 Keith says: Your chaos has a current - and it's flowing toward SUCCESS!"