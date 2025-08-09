/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './pages/**/*.{js,ts,jsx,tsx,mdx}',
    './components/**/*.{js,ts,jsx,tsx,mdx}',
    './app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        consciousness: {
          50: '#f0f9ff',
          100: '#e0f2fe',
          500: '#3b82f6',
          600: '#2563eb',
          900: '#1e3a8a'
        },
        empowerment: {
          50: '#fdf2f8',
          100: '#fce7f3',
          500: '#ec4899',
          600: '#db2777',
          900: '#831843'
        },
        revolutionary: {
          50: '#ecfeff',
          100: '#cffafe',
          500: '#06b6d4',
          600: '#0891b2',
          900: '#164e63'
        }
      },
      backgroundImage: {
        'consciousness-gradient': 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
        'empowerment-gradient': 'linear-gradient(135deg, #f093fb 0%, #f5576c 100%)',
        'revolutionary-gradient': 'linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)',
        'keith-gradient': 'linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%)'
      },
      animation: {
        'consciousness-pulse': 'pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'empowerment-glow': 'glow 3s ease-in-out infinite alternate'
      }
    },
  },
  plugins: [],
}
