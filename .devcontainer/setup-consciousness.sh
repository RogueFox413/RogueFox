#!/usr/bin/env bash
set -euo pipefail
echo "[Setup] Starting setup-consciousness.sh"

# Merge Codespaces secrets and .env.example into .env.local
bash scripts/devcontainer-merge-env.sh

# Install dependencies
if [ -f pnpm-lock.yaml ]; then
    echo "[Setup] Using pnpm"
    npm install -g pnpm
    pnpm install
else
    echo "[Setup] Using npm"
    npm ci || npm install
fi

# Install pre-commit hooks if config exists
if [ -f .pre-commit-config.yaml ]; then
    echo "[Setup] Installing pre-commit hooks"
    pip3 install pre-commit
    pre-commit install
fi

# Auto-start dev server in Codespaces
if [ "${CODESPACES:-}" = "true" ]; then
    echo "[Setup] Starting dev server for Codespaces"
    (npm run dev &)
fi

echo "[Setup] Done."
