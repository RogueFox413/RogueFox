FROM mcr.microsoft.com/devcontainers/javascript-node:20

# Install Python for scripts if needed
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY package*.json ./
COPY pnpm-lock.yaml* ./

# Install dependencies
RUN if [ -f pnpm-lock.yaml ]; then npm install -g pnpm && pnpm install; else npm ci || npm install; fi

COPY . ./
EXPOSE 3000
CMD ["npm", "run", "dev"]
