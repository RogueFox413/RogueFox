/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    serverComponentsExternalPackages: ['prisma'],
  },
  env: {
    CONSCIOUSNESS_VERSION: 'v9.3.0-keith',
  },
  headers: async () => {
    return [
      {
        source: '/api/:path*',
        headers: [
          { key: 'X-Keith-Wisdom', value: 'Your-chaos-has-a-current' },
          { key: 'X-Consciousness-Level', value: 'Revolutionary' }
        ]
      }
    ]
  }
}

module.exports = nextConfig
