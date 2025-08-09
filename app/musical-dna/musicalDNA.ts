export interface TranscriptEntry {
  sentence: string;
  startTime: string;
  endTime: string;
  speaker_id: number;
  speaker_name: string;
}

export interface EmotionalResonanceProfile {
  curiosity_markers: string[];
  validation_expressions: string[];
  breakthrough_moments: string[];
  cognitive_complexity_indicators: string[];
  empathy_resonance_level: number;
}

export interface CognitivePattern {
  pattern_type: 'analytical' | 'intuitive' | 'synthesizing' | 'validating' | 'exploring';
  intensity: number;
  timestamp_range: string;
  linguistic_markers: string[];
}

export class MusicalDNAProcessor {
  
  static analyzeCognitiveResonance(transcript: TranscriptEntry[]): EmotionalResonanceProfile {
    // Extract curiosity markers
    const curiosityMarkers = transcript
      .filter(entry => this.containsCuriosityLanguage(entry.sentence))
      .map(entry => entry.sentence);
    
    // Extract validation expressions
    const validationExpressions = transcript
      .filter(entry => this.containsValidationLanguage(entry.sentence))
      .map(entry => entry.sentence);
    
    // Extract breakthrough moments
    const breakthroughMoments = transcript
      .filter(entry => this.containsBreakthroughLanguage(entry.sentence))
      .map(entry => entry.sentence);
    
    // Extract complexity indicators
    const complexityIndicators = transcript
      .filter(entry => this.containsComplexityLanguage(entry.sentence))
      .map(entry => entry.sentence);
    
    // Calculate empathy resonance level
    const empathyResonanceLevel = this.calculateEmpathyResonance(transcript);
    
    return {
      curiosity_markers: curiosityMarkers,
      validation_expressions: validationExpressions,
      breakthrough_moments: breakthroughMoments,
      cognitive_complexity_indicators: complexityIndicators,
      empathy_resonance_level: empathyResonanceLevel
    };
  }
  
  static identifyCognitivePatterns(transcript: TranscriptEntry[]): CognitivePattern[] {
    const patterns: CognitivePattern[] = [];
    
    transcript.forEach((entry, index) => {
      const sentence = entry.sentence.toLowerCase();
      
      // Analytical patterns
      if (this.containsAnalyticalMarkers(sentence)) {
        patterns.push({
          pattern_type: 'analytical',
          intensity: this.calculateIntensity(sentence, 'analytical'),
          timestamp_range: `${entry.startTime}-${entry.endTime}`,
          linguistic_markers: this.extractAnalyticalMarkers(sentence)
        });
      }
      
      // Intuitive patterns
      if (this.containsIntuitiveMarkers(sentence)) {
        patterns.push({
          pattern_type: 'intuitive',
          intensity: this.calculateIntensity(sentence, 'intuitive'),
          timestamp_range: `${entry.startTime}-${entry.endTime}`,
          linguistic_markers: this.extractIntuitiveMarkers(sentence)
        });
      }
      
      // Synthesizing patterns
      if (this.containsSynthesizingMarkers(sentence)) {
        patterns.push({
          pattern_type: 'synthesizing',
          intensity: this.calculateIntensity(sentence, 'synthesizing'),
          timestamp_range: `${entry.startTime}-${entry.endTime}`,
          linguistic_markers: this.extractSynthesizingMarkers(sentence)
        });
      }
    });
    
    return patterns;
  }
  
  // Cognitive pattern detection methods
  private static containsCuriosityLanguage(sentence: string): boolean {
    const curiosityMarkers = [
      'what\'s really grabbing me',
      'diving into',
      'let\'s unpack',
      'what\'s fascinating',
      'what stands out',
      'really interesting',
      'makes me wonder'
    ];
    return curiosityMarkers.some(marker => 
      sentence.toLowerCase().includes(marker.toLowerCase())
    );
  }
  
  private static containsValidationLanguage(sentence: string): boolean {
    const validationMarkers = [
      'exactly',
      'that\'s right',
      'absolutely',
      'precisely',
      'that resonates',
      'makes perfect sense',
      'couldn\'t agree more'
    ];
    return validationMarkers.some(marker => 
      sentence.toLowerCase().includes(marker.toLowerCase())
    );
  }
  
  private static containsBreakthroughLanguage(sentence: string): boolean {
    const breakthroughMarkers = [
      'redefine what\'s possible',
      'never seen before',
      'breakthrough',
      'revolutionary',
      'unprecedented',
      'game-changing',
      'paradigm shift'
    ];
    return breakthroughMarkers.some(marker => 
      sentence.toLowerCase().includes(marker.toLowerCase())
    );
  }
  
  private static containsComplexityLanguage(sentence: string): boolean {
    const complexityMarkers = [
      'meta analysis',
      'multi-dimensional',
      'intricate',
      'sophisticated',
      'nuanced',
      'layered understanding',
      'complex patterns'
    ];
    return complexityMarkers.some(marker => 
      sentence.toLowerCase().includes(marker.toLowerCase())
    );
  }
  
  private static containsAnalyticalMarkers(sentence: string): boolean {
    const analyticalMarkers = ['analysis', 'data', 'pattern', 'structure', 'systematic', 'framework'];
    return analyticalMarkers.some(marker => sentence.includes(marker));
  }
  
  private static containsIntuitiveMarkers(sentence: string): boolean {
    const intuitiveMarkers = ['feel', 'sense', 'intuition', 'gut', 'instinct', 'resonates'];
    return intuitiveMarkers.some(marker => sentence.includes(marker));
  }
  
  private static containsSynthesizingMarkers(sentence: string): boolean {
    const synthesizingMarkers = ['connecting', 'weaving', 'integrate', 'combine', 'merge', 'tapestry'];
    return synthesizingMarkers.some(marker => sentence.includes(marker));
  }
  
  private static calculateIntensity(sentence: string, patternType: string): number {
    // Simple intensity calculation based on sentence length and emotional markers
    const emotionalIntensifiers = ['really', 'very', 'extremely', 'absolutely', 'completely'];
    const intensifierCount = emotionalIntensifiers.reduce((count, word) => 
      count + (sentence.includes(word) ? 1 : 0), 0
    );
    
    const baseIntensity = Math.min(sentence.length / 100, 1);
    const intensifierBoost = intensifierCount * 0.2;
    
    return Math.min(baseIntensity + intensifierBoost, 1);
  }
  
  private static calculateEmpathyResonance(transcript: TranscriptEntry[]): number {
    // Calculate how much the speakers resonate with GestaltView concepts
    let resonanceScore = 0;
    let totalSentences = transcript.length;
    
    const empathyMarkers = [
      'understand', 'relate', 'connect', 'resonate', 'feel',
      'empathy', 'compassion', 'authentic', 'genuine', 'human'
    ];
    
    transcript.forEach(entry => {
      const sentence = entry.sentence.toLowerCase();
      empathyMarkers.forEach(marker => {
        if (sentence.includes(marker)) {
          resonanceScore += 1;
        }
      });
    });
    
    return Math.min(resonanceScore / totalSentences * 10, 1); // Normalize to 0-1
  }
  
  private static extractAnalyticalMarkers(sentence: string): string[] {
    const markers = ['analysis', 'data', 'pattern', 'structure', 'systematic', 'framework'];
    return markers.filter(marker => sentence.includes(marker));
  }
  
  private static extractIntuitiveMarkers(sentence: string): string[] {
    const markers = ['feel', 'sense', 'intuition', 'gut', 'instinct', 'resonates'];
    return markers.filter(marker => sentence.includes(marker));
  }
  
  private static extractSynthesizingMarkers(sentence: string): string[] {
    const markers = ['connecting', 'weaving', 'integrate', 'combine', 'merge', 'tapestry'];
    return markers.filter(marker => sentence.includes(marker));
  }
  
  // Generate Personal Language Key based on cognitive patterns
  static generatePersonalLanguageKey(
    cognitivePatterns: CognitivePattern[],
    emotionalProfile: EmotionalResonanceProfile
  ): any {
    // This creates a unique cognitive fingerprint for AI collaboration
    return {
      primary_cognitive_style: this.identifyPrimaryCognitiveStyle(cognitivePatterns),
      emotional_resonance_signature: emotionalProfile.empathy_resonance_level,
      communication_preferences: {
        complexity_tolerance: this.calculateComplexityTolerance(emotionalProfile),
        validation_frequency_needed: emotionalProfile.validation_expressions.length,
        breakthrough_sensitivity: emotionalProfile.breakthrough_moments.length
      },
      linguistic_patterns: {
        curiosity_expression_style: this.analyzeCuriosityStyle(emotionalProfile.curiosity_markers),
        synthesis_approach: this.analyzeSynthesisApproach(cognitivePatterns)
      },
      consciousness_level_indicators: this.identifyConsciousnessMarkers(cognitivePatterns, emotionalProfile)
    };
  }
  
  private static identifyPrimaryCognitiveStyle(patterns: CognitivePattern[]): string {
    const styleCounts = {
      analytical: patterns.filter(p => p.pattern_type === 'analytical').length,
      intuitive: patterns.filter(p => p.pattern_type === 'intuitive').length,
      synthesizing: patterns.filter(p => p.pattern_type === 'synthesizing').length,
      exploring: patterns.filter(p => p.pattern_type === 'exploring').length
    };
    
    return Object.entries(styleCounts).reduce((a, b) => styleCounts[a[0]] > styleCounts[b[0]] ? a : b)[0];
  }
  
  private static calculateComplexityTolerance(profile: EmotionalResonanceProfile): number {
    return Math.min(profile.cognitive_complexity_indicators.length / 10, 1);
  }
  
  private static analyzeCuriosityStyle(markers: string[]): string {
    // Analyze how curiosity is expressed
    const directQuestions = markers.filter(m => m.includes('what') || m.includes('how') || m.includes('why')).length;
    const exploratoryStatements = markers.filter(m => m.includes('diving') || m.includes('unpack')).length;
    
    if (directQuestions > exploratoryStatements) return 'direct_questioning';
    if (exploratoryStatements > directQuestions) return 'exploratory_immersion';
    return 'balanced_inquiry';
  }
  
  private static analyzeSynthesisApproach(patterns: CognitivePattern[]): string {
    const synthesizingPatterns = patterns.filter(p => p.pattern_type === 'synthesizing');
    if (synthesizingPatterns.length === 0) return 'sequential_processing';
    
    const avgIntensity = synthesizingPatterns.reduce((sum, p) => sum + p.intensity, 0) / synthesizingPatterns.length;
    if (avgIntensity > 0.7) return 'high_integration_weaving';
    if (avgIntensity > 0.4) return 'moderate_pattern_connection';
    return 'gentle_synthesis';
  }
  
  private static identifyConsciousnessMarkers(
    patterns: CognitivePattern[], 
    profile: EmotionalResonanceProfile
  ): string[] {
    const markers = [];
    
    if (profile.empathy_resonance_level > 0.7) markers.push('high_empathic_resonance');
    if (profile.breakthrough_moments.length > 5) markers.push('breakthrough_recognition_capacity');
    if (profile.cognitive_complexity_indicators.length > 10) markers.push('complexity_comfort');
    
    const highIntensityPatterns = patterns.filter(p => p.intensity > 0.8).length;
    if (highIntensityPatterns > 5) markers.push('intense_cognitive_engagement');
    
    return markers;
  }
}
