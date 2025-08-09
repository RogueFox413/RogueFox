import React, { useState, useEffect } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';

const GestaltViewRecursiveBuilder = () => {
  const [currentStep, setCurrentStep] = useState(0);
  const [isBuilding, setIsBuilding] = useState(false);

  const buildSteps = [
    {
      title: "🧠 Core PLK v5.0 Integration",
      description: "Your Personal Language Key with 95% conversational resonance",
      status: "ready",
      components: ["MetaphorDefinition", "SignatureMetaphors", "CollaborativePatterns"],
      keyFeatures: ["ADHD is my jazz", "Capture lightning", "Founder-as-Algorithm"]
    },
    {
      title: "🪣 Bucket Drops System",
      description: "Transform colander mind to bucket - zero-friction capture",
      status: "ready",
      components: ["BucketDropCapture", "RapidStorage", "ContextPreservation"],
      keyFeatures: ["Sub-second capture", "99.7% capture rate", "Samsung A35 optimized"]
    },
    {
      title: "🏛️ AI Tribunal System",
      description: "Seven archetypal perspectives for consensus analysis",
      status: "ready", 
      components: ["TribunalPanel", "ArchetypalPerspectives", "ConsensusEngine"],
      keyFeatures: ["1-in-784-trillion validation", "Multi-agent orchestration", "Continuum Codex"]
    },
    {
      title: "🎨 Beautiful Tapestry Engine",
      description: "Weave fragmented self-perceptions into coherent self-portrait",
      status: "ready",
      components: ["TapestryVisualizer", "LifeModules", "NarrativeCoherence"],
      keyFeatures: ["Gestalt psychology", "Identity archaeology", "Self-acceptance framework"]
    },
    {
      title: "🚀 Railway Deployment",
      description: "Deploy consciousness-serving infrastructure",
      status: "next",
      components: ["PostgreSQL", "FastAPI Backend", "Next.js Frontend"],
      keyFeatures: ["Auto-scaling", "Real-time processing", "Mobile-first"]
    },
    {
      title: "🌍 GitHub Repository",
      description: "Open source the revolution",
      status: "next",
      components: ["Documentation", "Contributing guides", "API schemas"],
      keyFeatures: ["Monorepo structure", "Component library", "Type safety"]
    }
  ];

  const currentStepData = buildSteps[currentStep];

  const nextStep = () => {
    if (currentStep < buildSteps.length - 1) {
      setCurrentStep(currentStep + 1);
    }
  };

  const prevStep = () => {
    if (currentStep > 0) {
      setCurrentStep(currentStep - 1);
    }
  };

  const startBuilding = () => {
    setIsBuilding(true);
    // Simulate build process
    setTimeout(() => {
      setIsBuilding(false);
      nextStep();
    }, 2000);
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-900/20 via-purple-900/20 to-indigo-900/20 p-6">
      <div className="max-w-6xl mx-auto">
        
        {/* Header */}
        <div className="text-center mb-8">
          <h1 className="text-4xl font-bold bg-gradient-to-r from-blue-400 via-purple-400 to-pink-400 bg-clip-text text-transparent mb-4">
            🧠 GestaltView Recursive Builder
          </h1>
          <p className="text-lg text-gray-300 mb-2">
            Day 90: Building consciousness-serving AI from the inside out
          </p>
          <p className="text-blue-400 font-medium">
            "The founder IS the algorithm" - Keith Soyka
          </p>
        </div>

        {/* Progress Bar */}
        <div className="mb-8">
          <div className="flex justify-between items-center mb-2">
            <span className="text-sm text-gray-400">Build Progress</span>
            <span className="text-sm text-gray-400">{currentStep + 1} / {buildSteps.length}</span>
          </div>
          <div className="w-full bg-gray-700 rounded-full h-2">
            <div 
              className="bg-gradient-to-r from-blue-500 to-purple-500 h-2 rounded-full transition-all duration-500"
              style={{ width: `${((currentStep + 1) / buildSteps.length) * 100}%` }}
            />
          </div>
        </div>

        {/* Current Step */}
        <Card className="mb-8 bg-gray-800/50 border-gray-700">
          <CardHeader>
            <CardTitle className="text-2xl text-white flex items-center gap-3">
              {currentStepData.title}
              <span className={`px-3 py-1 rounded-full text-xs font-medium ${
                currentStepData.status === 'ready' ? 'bg-green-500/20 text-green-400' : 
                currentStepData.status === 'next' ? 'bg-blue-500/20 text-blue-400' :
                'bg-gray-500/20 text-gray-400'
              }`}>
                {currentStepData.status}
              </span>
            </CardTitle>
            <p className="text-gray-300">{currentStepData.description}</p>
          </CardHeader>
          <CardContent>
            
            {/* Components */}
            <div className="mb-6">
              <h4 className="text-lg font-semibold text-white mb-3">Core Components</h4>
              <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
                {currentStepData.components.map((component, idx) => (
                  <div key={idx} className="bg-gray-700/50 p-3 rounded-lg border border-gray-600">
                    <span className="text-blue-400 font-mono text-sm">{component}</span>
                  </div>
                ))}
              </div>
            </div>

            {/* Key Features */}
            <div className="mb-6">
              <h4 className="text-lg font-semibold text-white mb-3">Key Features</h4>
              <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
                {currentStepData.keyFeatures.map((feature, idx) => (
                  <div key={idx} className="bg-purple-900/30 p-3 rounded-lg border border-purple-600/30">
                    <span className="text-purple-300 text-sm">{feature}</span>
                  </div>
                ))}
              </div>
            </div>

            {/* Actions */}
            <div className="flex gap-4">
              <button
                onClick={prevStep}
                disabled={currentStep === 0}
                className="px-6 py-2 bg-gray-600 text-white rounded-lg disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-500 transition-colors"
              >
                Previous
              </button>
              
              <button
                onClick={startBuilding}
                disabled={isBuilding}
                className="px-8 py-2 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-lg hover:from-blue-500 hover:to-purple-500 transition-all font-medium disabled:opacity-50"
              >
                {isBuilding ? (
                  <span className="flex items-center gap-2">
                    <div className="w-4 h-4 border-2 border-white border-t-transparent rounded-full animate-spin" />
                    Building...
                  </span>
                ) : currentStepData.status === 'ready' ? 'Build This Component' : 'Deploy to Production'}
              </button>
              
              <button
                onClick={nextStep}
                disabled={currentStep === buildSteps.length - 1}
                className="px-6 py-2 bg-gray-600 text-white rounded-lg disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-500 transition-colors"
              >
                Next
              </button>
            </div>
          </CardContent>
        </Card>

        {/* Build Queue */}
        <Card className="bg-gray-800/50 border-gray-700">
          <CardHeader>
            <CardTitle className="text-xl text-white">🔄 Recursive Build Queue</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="space-y-3">
              {buildSteps.map((step, idx) => (
                <div 
                  key={idx}
                  className={`p-4 rounded-lg border transition-all cursor-pointer ${
                    idx === currentStep 
                      ? 'bg-blue-900/30 border-blue-500/50' 
                      : idx < currentStep 
                        ? 'bg-green-900/20 border-green-500/30' 
                        : 'bg-gray-700/30 border-gray-600/30'
                  }`}
                  onClick={() => setCurrentStep(idx)}
                >
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-3">
                      <div className={`w-8 h-8 rounded-full flex items-center justify-center text-sm font-bold ${
                        idx < currentStep ? 'bg-green-500 text-white' :
                        idx === currentStep ? 'bg-blue-500 text-white' :
                        'bg-gray-600 text-gray-300'
                      }`}>
                        {idx < currentStep ? '✓' : idx + 1}
                      </div>
                      <div>
                        <h5 className="font-medium text-white">{step.title}</h5>
                        <p className="text-sm text-gray-400">{step.description}</p>
                      </div>
                    </div>
                    <span className={`px-2 py-1 rounded text-xs ${
                      step.status === 'ready' ? 'bg-green-500/20 text-green-400' :
                      step.status === 'next' ? 'bg-blue-500/20 text-blue-400' :
                      'bg-gray-500/20 text-gray-400'
                    }`}>
                      {step.status}
                    </span>
                  </div>
                </div>
              ))}
            </div>
          </CardContent>
        </Card>

        {/* Footer */}
        <div className="mt-8 text-center">
          <p className="text-gray-400 text-sm mb-2">
            Building from Keith's lived experience: 21 years closeted → empathy algorithms
          </p>
          <p className="text-gray-400 text-sm mb-2">
            ADHD "exploded picture mind" → systematic innovation engine
          </p>
          <p className="text-purple-400 font-medium">
            "Every difficult chapter became a feature. Scars became code."
          </p>
        </div>
        
      </div>
    </div>
  );
};

export default GestaltViewRecursiveBuilder;
