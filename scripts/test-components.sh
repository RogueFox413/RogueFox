#!/bin/bash

# 🧠 Keith's Individual Component Test Suite
echo "🧠 Keith's Revolutionary Component Test Suite"
echo "============================================="

# Colors for mobile-friendly output
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

print_keith() { echo -e "${PURPLE}🧠 Keith:${NC} $1"; }
print_success() { echo -e "${GREEN}✅${NC} $1"; }
print_error() { echo -e "${RED}❌${NC} $1"; }
print_info() { echo -e "${CYAN}ℹ️${NC} $1"; }
print_test() { echo -e "${YELLOW}🧪${NC} $1"; }

# Database test
test_database() {
    print_test "TEST 1: Database Connection"
    
    if [ -f "node_modules/@prisma/client/package.json" ]; then
        print_success "Prisma Client: INSTALLED"
    else
        print_error "Prisma Client: Missing - Run: npm install"
        return
    fi
    
    if [ -f "prisma/schema.prisma" ]; then
        print_success "Database Schema: EXISTS"
    else
        print_error "Database Schema: NOT FOUND"
    fi
}

# Environment check
test_environment() {
    print_test "TEST 2: Environment Variables"
    
    if [ -f ".env.local" ]; then
        print_success ".env.local: EXISTS"
    else
        print_error ".env.local: NOT FOUND"
    fi
    
    # Check for key variables without exposing values
    if grep -q "DATABASE_URL" .env.local 2>/dev/null; then
        print_success "DATABASE_URL: SET"
    else
        print_error "DATABASE_URL: Missing"
    fi
    
    if grep -q "OPENAI_API_KEY" .env.local 2>/dev/null; then
        print_success "OPENAI_API_KEY: SET"
    else
        print_error "OPENAI_API_KEY: Missing"
    fi
}

# Next.js build test
test_build() {
    print_test "TEST 3: Next.js Build Check"
    
    if npm run build --silent 2>/dev/null; then
        print_success "Build: SUCCESS"
    else
        print_error "Build: FAILED"
    fi
}

# Quick API test
test_apis() {
    print_test "TEST 4: API Routes"
    
    if [ -d "app/api" ]; then
        print_success "API Directory: EXISTS"
        api_count=$(find app/api -name "route.ts" | wc -l)
        print_info "Found $api_count API routes"
    else
        print_error "API Directory: NOT FOUND"
    fi
}

# Main menu
show_menu() {
    echo ""
    echo "Choose test:"
    echo "1) 🧠 Database"
    echo "2) 🔑 Environment" 
    echo "3) 🏗️ Build"
    echo "4) 🔌 APIs"
    echo "5) 🎯 All Tests"
    echo ""
    read -p "Enter choice (1-5): " choice
    
    case $choice in
        1) test_database ;;
        2) test_environment ;;
        3) test_build ;;
        4) test_apis ;;
        5) test_database; test_environment; test_build; test_apis ;;
        *) echo "Invalid choice" ;;
    esac
}

# Run based on arguments or show menu
if [ $# -eq 0 ]; then
    show_menu
else
    case $1 in
        "db") test_database ;;
        "env") test_environment ;;
        "build") test_build ;;
        "api") test_apis ;;
        "all") test_database; test_environment; test_build; test_apis ;;
        *) show_menu ;;
    esac
fi

print_keith "Testing complete! 💜"
