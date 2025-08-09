import { ClerkProvider } from '@clerk/nextjs'
import './globals.css'

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <ClerkProvider
      appearance={{
        elements: {
          userButtonAvatarBox: "w-8 h-8",
          userButtonBox: "flex-row-reverse",
          userButtonOuterIdentifier: "text-white font-medium",
          userButtonPopoverCard: "bg-purple-900 border-purple-700",
          userButtonPopoverText: "text-white"
        }
      }}
    >
      <html lang="en">
        <body className="min-h-screen bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900">
          {children}
        </body>
      </html>
    </ClerkProvider>
  )
}
