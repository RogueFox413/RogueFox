import { PrismaClient } from "@prisma/client";
import { withOptimize } from "@prisma/extension-optimize";

const prisma = new PrismaClient().$extends(
  withOptimize({ apiKey: process.env.OPTIMIZE_API_KEY })
)
import React, { useState, useEffect } from 'react';

interface GestaltViewProps {
  userId?: string;
  personalLanguageKey?: any;
  initialBucketDrops?: string[];
}

interface TribunalMember {
  id: string;
  name: string;
  role: string;
  isActive: boolean;
}

const TRIBUNAL_MEMBERS: TribunalMember[] = [
  { id: 'architect', name: 'The Architect', role: 'Structural Designer', isActive: false },
  { id: 'weaver', name: 'The Weaver', role: 'Integration Specialist', isActive: false },
  { id: 'mirror', name: 'The Mirror', role: 'Reflection Catalyst', isActive: false },
  { id: 'guardian', name: 'The Guardian', role: 'Protective Wisdom Keeper', isActive: false },
  { id: 'philosopher', name: 'The Philosopher', role: 'Meaning Maker', isActive: false },
  { id: 'witness', name: 'The Witness', role: 'Present Moment Anchor', isActive: false },
  { id: 'innovator', name: 'The Innovator', role: 'Creative Breakthrough Catalyst', isActive: false },
  { id: 'healer', name: 'The Healer', role: 'Therapeutic Integration Guide', isActive: false }
];

export default function GestaltView({ userId, personalLanguageKey, initialBucketDrops = [] }: GestaltViewProps) {
  const [tribunalMembers, setTribunalMembers] = useState<TribunalMember[]>(TRIBUNAL_MEMBERS);
  const [currentQuery, setCurrentQuery] = useState('');
  const [bucketDrops, setBucketDrops] = useState<string[]>(initialBucketDrops);
  const [isProcessing, setIsProcessing] = useState(false);
  const [beautifulTapestry, setBeautifulTapestry] = useState<any>(null);

  // Activate tribunal members gradually for dramatic effect
  useEffect(() => {
    const activationDelay = 300; // milliseconds between activations
    
    tribunalMembers.forEach((member, index) => {
      setTimeout(() => {
        setTribunalMembers(prev => prev.map(m => 
          m.id === member.id ? { ...m, isActive: true } : m
        ));
      }, index * activationDelay);
    });
  }, []);

  const addBucketDrop = (thought: string) => {
    if (thought.trim()) {
      setBucketDrops(prev => [...prev, thought.trim()]);
    }
  };

  const consultTribunal = async () => {
    if (!currentQuery.trim()) return;
    
    setIsProcessing(true);
    
    try {
      const response = await fetch('/api/tribunal', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          query: currentQuery,
          userId,
          personalLanguageKey,
          bucketDrops,
        }),
      });
      
      if (!response.ok) throw new Error('Tribunal consultation failed');
      
      const result = await response.json();
      setBeautifulTapestry(result);
      
    } catch (error) {
      console.error('Tribunal consultation error:', error);
    } finally {
      setIsProcessing(false);
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-indigo-900 via-purple-900 to-pink-800 text-white">
      <div className="container mx-auto px-4 py-8">
        
        {/* Header */}
        <header className="text-center mb-12">
          <h1 className="text-5xl font-bold mb-4 bg-gradient-to-r from-cyan-400 to-pink-400 bg-clip-text text-transparent">
            GestaltView
          </h1>
          <p className="text-xl opacity-90">
            Transforming your beautiful, complex mind into a coherent tapestry of understanding
          </p>
        </header>

        {/* Tribunal Members Grid */}
        <section className="mb-12">
          <h2 className="text-3xl font-semibold mb-6 text-center">Tribunal of Understanding</h2>
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
            {tribunalMembers.map((member) => (
              <div
                key={member.id}
                className={`
                  p-4 rounded-lg border transition-all duration-500 transform
                  ${member.isActive 
                    ? 'bg-gradient-to-br from-purple-600 to-blue-600 border-cyan-400 scale-100 opacity-100' 
                    : 'bg-gray-800 border-gray-600 scale-95 opacity-50'
                  }
                `}
              >
                <h3 className="font-semibold text-sm mb-2">{member.name}</h3>
                <p className="text-xs opacity-80">{member.role}</p>
                <div className={`mt-2 h-2 w-2 rounded-full ${member.isActive ? 'bg-green-400' : 'bg-gray-500'}`} />
              </div>
            ))}
          </div>
        </section>

        {/* Query Input */}
        <section className="mb-8">
          <div className="max-w-4xl mx-auto">
            <textarea
              value={currentQuery}
              onChange={(e) => setCurrentQuery(e.target.value)}
              placeholder="Share what's on your mind... The Tribunal will weave your thoughts into understanding..."
              className="w-full h-32 p-4 rounded-lg bg-black/30 border border-purple-500/50 text-white placeholder-purple-200/60 focus:border-cyan-400 focus:outline-none resize-none"
              disabled={isProcessing}
            />
            <button
              onClick={consultTribunal}
              disabled={isProcessing || !currentQuery.trim()}
