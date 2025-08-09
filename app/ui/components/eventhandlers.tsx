// Add these mobile-specific event handlers
const handleTouchStart = (e: TouchEvent) => {
  e.preventDefault(); // Prevent zoom/scroll conflicts
  // Your click logic here
};

// Better mobile touch targets
className="min-h-12 min-w-12 touch-manipulation" // Larger touch targets
