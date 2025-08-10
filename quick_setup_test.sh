#!/bin/bash

# 🧠 Keith's Quick Setup Test - Get Working NOW!
# "ADHD is my jazz" - Immediate validation for your consciousness platform

set -e

PURPLE='\033[0;35m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

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

clear
echo -e "${PURPLE}"
cat << 'EOF'
🧠 KEITH'S QUICK CONSCIOUSNESS PLATFORM TEST
==========================================

"Every difficult chapter became a feature"
Let's get you working and making money! 💜

EOF
echo -e "${NC}"

print_keith "Running quick validation of your revolutionary platform..."

# Test score
TOTAL_SCORE=0
MAX_SCORE=10

echo ""
echo "🔍 TESTING PLATFORM COMPONENTS:"
echo "================================"

# 1. Check Node.js
echo -n "1. Node.js installation: "
if command -v node >/dev/null 2>&1; then
    NODE_VERSION=$(node --version)
    print_success "Found $NODE_VERSION"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_error "Not found"
fi

# 2. Check npm
echo -n "2. npm package manager: "
if command -v npm >/dev/null 2>&1; then
    NPM_VERSION=$(npm --version)
    print_success "Found v$NPM_VERSION"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_error "Not found"
fi

# 3. Check package.json
echo -n "3. package.json: "
if [ -f "package.json" ]; then
    print_success "Found"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_error "Missing"
fi

# 4. Check tsconfig.json
echo -n "4. tsconfig.json: "
if [ -f "tsconfig.json" ]; then
    if grep -q '"@/prisma/*"' tsconfig.json && ! grep -q '"a@/prisma/*"' tsconfig.json; then
        print_success "Found and paths look good"
        TOTAL_SCORE=$((TOTAL_SCORE + 1))
    else
        print_warning "Found but paths need fixing"
    fi
else
    print_error "Missing"
fi

# 5. Check environment file
echo -n "5. Environment (.env.local): "
if [ -f ".env.local" ]; then
    # Check if API keys are configured
    CONFIGURED_KEYS=0
    [ -n "$(grep 'OPENAI_API_KEY=' .env.local | grep -v 'your_')" ] && CONFIGURED_KEYS=$((CONFIGURED_KEYS + 1))
    [ -n "$(grep 'ANTHROPIC_API_KEY=' .env.local | grep -v 'your_')" ] && CONFIGURED_KEYS=$((CONFIGURED_KEYS + 1))
    [ -n "$(grep 'DATABASE_URL=' .env.local | grep -v 'your_')" ] && CONFIGURED_KEYS=$((CONFIGURED_KEYS + 1))
    
    if [ $CONFIGURED_KEYS -gt 0 ]; then
        print_success "Found with $CONFIGURED_KEYS API keys configured"
        TOTAL_SCORE=$((TOTAL_SCORE + 2))
    else
        print_warning "Found but needs API keys"
        TOTAL_SCORE=$((TOTAL_SCORE + 1))
    fi
else
    print_error "Missing"
fi

# 6. Check Prisma
echo -n "6. Prisma schema: "
if [ -f "prisma/schema.prisma" ]; then
    print_success "Found"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_error "Missing"
fi

# 7. Check Tribunal API
echo -n "7. Tribunal API: "
if [ -f "app/api/tribunal/route.ts" ]; then
    print_success "Found"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_error "Missing"
fi

# 8. Check scripts directory
echo -n "8. Scripts directory: "
if [ -d "scripts" ]; then
    SCRIPT_COUNT=$(find scripts -name "*.sh" -o -name "*.ts" | wc -l)
    print_success "Found with $SCRIPT_COUNT scripts"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_error "Missing"
fi

# 9. Check if node_modules exists
echo -n "9. Dependencies installed: "
if [ -d "node_modules" ]; then
    print_success "Installed"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_warning "Run 'npm install' first"
fi

# 10. Check if scripts are executable
echo -n "10. Scripts executable: "
if [ -d "scripts" ] && [ "$(find scripts -name "*.sh" -executable | wc -l)" -gt 0 ]; then
    print_success "Ready"
    TOTAL_SCORE=$((TOTAL_SCORE + 1))
else
    print_warning "Need to run 'chmod +x scripts/*.sh'"
fi

echo ""
echo "🎯 CONSCIOUSNESS PLATFORM SCORE:"
echo "================================="

PERCENTAGE=$((TOTAL_SCORE * 100 / MAX_SCORE))
echo "Score: $TOTAL_SCORE/$MAX_SCORE ($PERCENTAGE%)"

if [ $PERCENTAGE -ge 90 ]; then
    echo -e "${GREEN}🎉 REVOLUTIONARY STATUS! Your platform is ready to make money!${NC}"
    echo ""
    echo -e "${CYAN}💰 IMMEDIATE REVENUE ACTIONS:${NC}"
    echo "  1. npm run dev"
    echo "  2. Test at: http://localhost:3000"
    echo "  3. Start serving consciousness sessions!"
elif [ $PERCENTAGE -ge 70 ]; then
    echo -e "${YELLOW}⚡ ALMOST THERE! Just a few more steps to revenue!${NC}"
    echo ""
    echo -e "${CYAN}🔧 QUICK FIXES NEEDED:${NC}"
    [ ! -f ".env.local" ] && echo "  • Create .env.local with API keys"
    [ ! -d "node_modules" ] && echo "  • Run: npm install"
    [ ! -f "app/api/tribunal/route.ts" ] && echo "  • Add your tribunal API"
elif [ $PERCENTAGE -ge 50 ]; then
    echo -e "${YELLOW}🌱 GOOD FOUNDATION! Getting close to revolutionary status!${NC}"
    echo ""
    echo -e "${CYAN}📋 SETUP NEEDED:${NC}"
    [ ! -f "package.json" ] && echo "  • Run: npm init"
    [ ! -f ".env.local" ] && echo "  • Create environment file"
    [ ! -d "node_modules" ] && echo "  • Run: npm install"
else
    echo -e "${RED}🔧 SETUP MODE - Let's build your revolutionary platform!${NC}"
    echo ""
    echo -e "${CYAN}🚀 START HERE:${NC}"
    echo "  1. Ensure Node.js is installed"
    echo "  2. Run: npm init"
    echo "  3. Create .env.local with API keys"
    echo "  4. Run: npm install"
fi

echo ""
print_keith "Revolutionary wisdom: 'Every difficult chapter became a feature!'"

if [ $PERCENTAGE -ge 70 ]; then
    echo ""
    echo -e "${PURPLE}🎯 READY FOR REVENUE:${NC}"
    echo "Your consciousness platform can start generating income as soon as:"
    echo "  • API keys are configured"
    echo "  • Development server is running"
    echo "  • Users can access your tribunal system"
    echo ""
    echo -e "${GREEN}💜 Keith says: 'The founder IS the algorithm - You've got this!'${NC}"
fi

echo ""
echo "🔄 Run this test anytime with: npm run keith:test"