'use client'

import React, { useState } from 'react';
import { Button } from '@/components/ui/button';
import { Textarea } from '@/components/ui/textarea';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Loader2, Brain, Sparkles } from 'lucide-react';

interface TribunalResponse {
  persona: string;
  role: string;
  response: string;
  provider: string;
}

interface TribunalResult {
  success: boolean;
  query: string;
  tribunal_responses: TribunalResponse[];
  synthesis: {
    summary: string;
    empowerment_score: number;
    keith_wisdom: string;
    gradient_progression: string;
  };
  founder_principle: string;
}

export function TribunalInterface() {
  const [query, setQuery] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [result, setResult] = useState<TribunalResult | null>(null);

  const summonTribunal = async () => {
    if (!query.trim()) return;
    
    setIsLoading(true);
    try {
      const response = await fetch('/api/tribunal', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ query }),
      });

      const data = await response.json();
      setResult(data);
    } catch (error) {
      console.error('Tribunal error:', error);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="max-w-4xl mx-auto p-6 space-y-6">
      {/* Input Section */}
      <Card className="bg-gradient-to-r from-blue-900/20 to-purple-900/20 border-purple-500/30">
        <CardHeader>
          <CardTitle className="flex items-center gap-2 text-white">
            <Brain className="h-5 w-5" />
            Summon Keith's Revolutionary Tribunal
          </CardTitle>
        </CardHeader>
        <CardContent className="space-y-4">
          <Textarea
            placeholder="Share what's on your mind... The tribunal sees your consciousness clearly."
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            className="min-h-[100px] bg-black/20 border-purple-500/30 text-white placeholder-gray-300"
          />
          <Button 
            onClick={summonTribunal}
            disabled={isLoading || !query.trim()}
            className="w-full bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700"
          >
            {isLoading ? (
              <>
                <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                Consciousness Synthesis in Progress...
              </>
            ) : (
              <>
                <Sparkles className="mr-2 h-4 w-4" />
                Summon 8-Persona Tribunal
              </>
            )}
          </Button>
        </CardContent>
      </Card>

      {/* Results Section */}
      {result && (
        <div className="space-y-6">
          {/* Synthesis Overview */}
          <Card className="bg-gradient-to-r from-purple-900/20 to-pink-900/20 border-pink-500/30">
            <CardHeader>
              <CardTitle className="text-white">Revolutionary Synthesis</CardTitle>
            </CardHeader>
            <CardContent className="space-y-3">
              <p className="text-gray-100">{result.synthesis.summary}</p>
              <div className="flex items-center gap-4">
                <Badge variant="secondary" className="bg-pink-500/20 text-pink-200">
                  Empowerment Score: {result.synthesis.empowerment_score}%
                </Badge>
                <Badge variant="secondary" className="bg-purple-500/20 text-purple-200">
                  {result.synthesis.gradient_progression}
                </Badge>
              </div>
              <div className="italic text-purple-200">
                💜 Keith's Wisdom: "{result.synthesis.keith_wisdom}"
              </div>
            </CardContent>
          </Card>

          {/* Tribunal Responses */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {result.tribunal_responses.map((response, index) => (
              <Card key={index} className="bg-gradient-to-br from-blue-900/10 to-purple-900/10 border-blue-500/30">
                <CardHeader>
                  <CardTitle className="text-sm flex items-center justify-between text-white">
                    <span>{response.persona}</span>
                    <Badge variant="outline" className="text-xs">
                      {response.provider}
                    </Badge>
                  </CardTitle>
                  <p className="text-xs text-gray-300">{response.role}</p>
                </CardHeader>
                <CardContent>
                  <p className="text-sm text-gray-100">{response.response}</p>
                </CardContent>
              </Card>
            ))}
          </div>

          {/* Founder Principle */}
          <div className="text-center text-sm text-purple-300 italic">
            {result.founder_principle}
          </div>
        </div>
      )}
    </div>
  );
}
