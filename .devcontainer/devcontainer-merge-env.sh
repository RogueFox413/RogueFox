#!/usr/bin/env bash
set -euo pipefail

ENV_LOCAL=".env.local"
ENV_EXAMPLE=".env.example"

touch "$ENV_LOCAL"

if [ -f "$ENV_EXAMPLE" ]; then
    while IFS= read -r line; do
        if [[ ! "$line" =~ ^# && "$line" == *"="* ]]; then
            key="${line%%=*}"
            if ! grep -q "^$key=" "$ENV_LOCAL"; then
                value="${!key:-}"
                if [ -n "$value" ]; then
                    echo "$key=$value" >> "$ENV_LOCAL"
                else
                    echo "$line" >> "$ENV_LOCAL"
                fi
            fi
        fi
    done < "$ENV_EXAMPLE"
fi
