// 🎵 Keith's Revolutionary Musical DNA Processor
// "ADHD is my jazz" - Cognitive resonance through music analysis
// Directory: lib/musical_dna_processor.ts

import { MusicalDNAProfile, ConsciousnessSynthesis } from './keith-consciousness-engine';

// Musical DNA types
export interface Song {
  title: string;
  artist: string;
  album?: string;
  genre?: string;
  year?: number;
  duration?: number;
  spotifyId?: string;
  youtubeId?: string;
}

export interface MusicalDNAAnalysis {
  songs: Song[];
  emotionalArchitecture: EmotionalArchitecture;
  cognitiveMapping: CognitiveMapping;
  adhdResonancePatterns: ADHDResonancePatterns;
  consciousnessMarkers: ConsciousnessMarkers;
  revolutionaryPotential: number;
  keithWisdomTriggers: string[];
}

export interface EmotionalArchitecture {
  primaryEmotions: Record<string, number>;
  emotionalRange: number;
  intensityPattern: 'high' | 'moderate' | 'variable' | 'gentle';
  catharticProcessing: number;
  resilienceMarkers: number;
  connectionLonging: number;
}

export interface CognitiveMapping {
  complexityPreference: number;
  layeringTolerance: number;
  rhythmicVariability: number;
  harmonicSophistication: number;
  lyricDepthPreference: number;
  instrumentalComplexity: number;
}

export interface ADHDResonancePatterns {
  hyperfocusIndicators: string[];
  stimulationOptimalLevel: number;
  executiveFunctionSupport: number;
  emotionalRegulationAid: number;
  attentionAnchoring: number;
  dopamineActivation: number;
}

export interface ConsciousnessMarkers {
  introspectionLevel: number;
  authenticityMarkers: number;
  growthOrientation: number;
  empathyIndicators: number;
  revolutionarySpirit: number;
  foundationalTruthAlignment: number;
}

// Keith's Musical DNA Engine
export class MusicalEngine {
  private version = "3.0.0_Revolutionary";
  
  constructor() {
    console.log("🎵 Keith's Musical DNA Engine initialized - ADHD jazz mode activated!");
  }

  // 🎵 Main Musical DNA analysis
  async analyzeMusicalDNA(userPlaylist: Song[]): Promise<MusicalDNAAnalysis> {
    try {
      console.log(`🎵 Analyzing ${userPlaylist.length} songs for consciousness patterns...`);
      
      // Emotional architecture analysis
      const emotionalArchitecture = this.analyzeEmotionalArchitecture(userPlaylist);
      
      // Cognitive mapping
      const cognitiveMapping = this.analyzeCognitiveMapping(userPlaylist);
      
      // ADHD resonance patterns
      const adhdResonancePatterns = this.analyzeADHDResonance(userPlaylist);
      
      // Consciousness markers
      const consciousnessMarkers = this.analyzeConsciousnessMarkers(userPlaylist);
      
      // Revolutionary potential
      const revolutionaryPotential = this.calculateRevolutionaryPotential(
        emotionalArchitecture,
        cognitiveMapping,
        consciousnessMarkers
      );
      
      // Keith wisdom triggers
      const keithWisdomTriggers = this.identifyKeithWisdomTriggers(
        userPlaylist,
        emotionalArchitecture,
        adhdResonancePatterns
      );
      
      return {
        songs: userPlaylist,
        emotionalArchitecture,
        cognitiveMapping,
        adhdResonancePatterns,
        consciousnessMarkers,
        revolutionaryPotential,
        keithWisdomTriggers
      };
      
    } catch (error) {
      console.error("Musical DNA analysis error:", error);
      
      // Graceful fallback
      return this.createFallbackAnalysis(userPlaylist);
    }
  }

  // 🧠 Analyze emotional architecture through music
  private analyzeEmotionalArchitecture(songs: Song[]): EmotionalArchitecture {
    // Analyze genre distribution for emotional patterns
    const genres = songs.map(s => s.genre?.toLowerCase()).filter(Boolean);
    const genreEmotions = this.mapGenresToEmotions(genres);
    
    // Calculate emotional metrics
    const emotionalRange = this.calculateEmotionalRange(genreEmotions);
    const intensityPattern = this.determineIntensityPattern(songs);
    
    return {
      primaryEmotions: genreEmotions,
      emotionalRange,
      intensityPattern,
      catharticProcessing: this.calculateCatharticProcessing(songs),
      resilienceMarkers: this.identifyResilienceMarkers(songs),
      connectionLonging: this.assessConnectionLonging(songs)
    };
  }

  // 🧩 Analyze cognitive mapping preferences
  private analyzeCognitiveMapping(songs: Song[]): CognitiveMapping {
    // Analyze complexity preferences through music choices
    const complexityScore = this.assessComplexityPreference(songs);
    const rhythmicVariability = this.analyzeRhythmicPatterns(songs);
    
    return {
      complexityPreference: complexityScore,
      layeringTolerance: this.assessLayeringTolerance(songs),
      rhythmicVariability,
      harmonicSophistication: this.analyzeHarmonicSophistication(songs),
      lyricDepthPreference: this.assessLyricDepth(songs),
      instrumentalComplexity: this.analyzeInstrumentalComplexity(songs)
    };
  }

  // 🎯 Analyze ADHD-specific resonance patterns
  private analyzeADHDResonance(songs: Song[]): ADHDResonancePatterns {
    const hyperfocusIndicators = this.identifyHyperfocusMusic(songs);
    const stimulationLevel = this.assessOptimalStimulation(songs);
    
    return {
      hyperfocusIndicators,
      stimulationOptimalLevel: stimulationLevel,
      executiveFunctionSupport: this.assessExecutiveSupport(songs),
      emotionalRegulationAid: this.assessEmotionalRegulation(songs),
      attentionAnchoring: this.assessAttentionAnchoring(songs),
      dopamineActivation: this.assessDopamineActivation(songs)
    };
  }

  // 🌟 Analyze consciousness markers
  private analyzeConsciousnessMarkers(songs: Song[]): ConsciousnessMarkers {
    return {
      introspectionLevel: this.assessIntrospection(songs),
      authenticityMarkers: this.identifyAuthenticity(songs),
      growthOrientation: this.assessGrowthMindset(songs),
      empathyIndicators: this.identifyEmpathy(songs),
      revolutionarySpirit: this.assessRevolutionarySpirit(songs),
      foundationalTruthAlignment: this.assessFoundationalTruth(songs)
    };
  }

  // Helper methods for analysis
  private mapGenresToEmotions(genres: string[]): Record<string, number> {
    const emotionMap: Record<string, string[]> = {
      introspection: ['indie', 'folk', 'acoustic', 'ambient'],
      energy: ['rock', 'electronic', 'pop', 'dance'],
      catharsis: ['metal', 'punk', 'grunge', 'hardcore'],
      healing: ['jazz', 'classical', 'new age', 'world'],
      rebellion: ['punk', 'metal', 'rap', 'alternative'],
      connection: ['r&b', 'soul', 'gospel', 'blues']
    };
    
    const emotions: Record<string, number> = {};
    
    for (const [emotion, relatedGenres] of Object.entries(emotionMap)) {
      const count = genres.filter(genre => 
        relatedGenres.some(related => genre.includes(related))
      ).length;
      emotions[emotion] = count / genres.length;
    }
    
    return emotions;
  }

  private calculateEmotionalRange(emotions: Record<string, number>): number {
    const values = Object.values(emotions);
    const max = Math.max(...values);
    const min = Math.min(...values);
    return max - min;
  }

  private determineIntensityPattern(songs: Song[]): 'high' | 'moderate' | 'variable' | 'gentle' {
    // Analyze based on genres and patterns
    const highIntensityGenres = ['metal', 'punk', 'hardcore', 'dubstep'];
    const gentleGenres = ['ambient', 'folk', 'acoustic', 'new age'];
    
    const highCount = songs.filter(s => 
      highIntensityGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    ).length;
    
    const gentleCount = songs.filter(s => 
      gentleGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    ).length;
    
    const total = songs.length;
    
    if (highCount > total * 0.6) return 'high';
    if (gentleCount > total * 0.6) return 'gentle';
    if (Math.abs(highCount - gentleCount) < total * 0.2) return 'variable';
    return 'moderate';
  }

  private calculateCatharticProcessing(songs: Song[]): number {
    // Look for emotionally intense music that suggests cathartic processing
    const catharticsongs = songs.filter(song => {
      const genre = song.genre?.toLowerCase() || '';
      const title = song.title.toLowerCase();
      const artist = song.artist.toLowerCase();
      
      return genre.includes('metal') || 
             genre.includes('punk') || 
             genre.includes('grunge') ||
             title.includes('pain') ||
             title.includes('break') ||
             artist.includes('rage');
    });
    
    return catharticsongs.length / songs.length;
  }

  private identifyResilienceMarkers(songs: Song[]): number {
    // Look for themes of overcoming, strength, rising up
    const resilienceKeywords = [
      'rise', 'strong', 'fight', 'overcome', 'survive', 'unbreakable',
      'phoenix', 'warrior', 'champion', 'unstoppable'
    ];
    
    const resilientSongs = songs.filter(song => {
      const text = `${song.title} ${song.artist}`.toLowerCase();
      return resilienceKeywords.some(keyword => text.includes(keyword));
    });
    
    return resilientSongs.length / songs.length;
  }

  private assessConnectionLonging(songs: Song[]): number {
    // Look for themes of connection, belonging, love, community
    const connectionKeywords = [
      'together', 'belong', 'home', 'love', 'friend', 'family',
      'connect', 'understand', 'hold', 'embrace', 'community'
    ];
    
    const connectionSongs = songs.filter(song => {
      const text = `${song.title} ${song.artist}`.toLowerCase();
      return connectionKeywords.some(keyword => text.includes(keyword));
    });
    
    return connectionSongs.length / songs.length;
  }

  // Additional helper methods (simplified implementations)
  private assessComplexityPreference(songs: Song[]): number {
    // Progressive, jazz, classical indicate higher complexity preference
    const complexGenres = ['progressive', 'jazz', 'classical', 'experimental'];
    const complexSongs = songs.filter(s => 
      complexGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return complexSongs.length / songs.length;
  }

  private analyzeRhythmicPatterns(songs: Song[]): number {
    // Variety in genres suggests rhythmic flexibility
    const uniqueGenres = new Set(songs.map(s => s.genre?.toLowerCase()).filter(Boolean));
    return Math.min(1, uniqueGenres.size / 10); // Normalize to 0-1
  }

  private assessLayeringTolerance(songs: Song[]): number {
    // Orchestral, electronic, psychedelic suggest layering tolerance
    const layeredGenres = ['orchestral', 'electronic', 'psychedelic', 'ambient'];
    const layeredSongs = songs.filter(s => 
      layeredGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return layeredSongs.length / songs.length;
  }

  private analyzeHarmonicSophistication(songs: Song[]): number {
    // Jazz, classical, progressive indicate harmonic sophistication
    const sophisticatedGenres = ['jazz', 'classical', 'progressive', 'fusion'];
    const sophisticatedSongs = songs.filter(s => 
      sophisticatedGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return sophisticatedSongs.length / songs.length;
  }

  private assessLyricDepth(songs: Song[]): number {
    // Folk, indie, singer-songwriter often have deeper lyrics
    const lyricalGenres = ['folk', 'indie', 'singer-songwriter', 'acoustic'];
    const lyricalSongs = songs.filter(s => 
      lyricalGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return lyricalSongs.length / songs.length;
  }

  private analyzeInstrumentalComplexity(songs: Song[]): number {
    // Progressive, metal, jazz often have complex instrumentation
    const complexInstrumentalGenres = ['progressive', 'metal', 'jazz', 'fusion'];
    const complexSongs = songs.filter(s => 
      complexInstrumentalGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return complexSongs.length / songs.length;
  }

  private identifyHyperfocusMusic(songs: Song[]): string[] {
    // Music that supports hyperfocus tends to be:
    // - Instrumental or minimal vocals
    // - Consistent rhythm
    // - Not too emotionally intense
    const hyperfocusGenres = [
      'ambient', 'minimal', 'post-rock', 'instrumental', 
      'downtempo', 'chillout', 'study music'
    ];
    
    return songs
      .filter(s => hyperfocusGenres.some(genre => s.genre?.toLowerCase().includes(genre)))
      .map(s => `${s.artist} - ${s.title}`);
  }

  private assessOptimalStimulation(songs: Song[]): number {
    // Balance between understimulating and overstimulating
    const highStim = ['metal', 'electronic', 'dubstep', 'hardcore'].length;
    const lowStim = ['ambient', 'minimal', 'acoustic'].length;
    const mediumStim = ['rock', 'pop', 'indie', 'alternative'].length;
    
    // Optimal ADHD stimulation is often in the medium range with some variety
    return 0.7; // Simplified - would need more sophisticated analysis
  }

  private assessExecutiveSupport(songs: Song[]): number {
    // Music that helps with executive function
    const supportiveGenres = ['classical', 'ambient', 'post-rock', 'minimal'];
    const supportiveSongs = songs.filter(s => 
      supportiveGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return supportiveSongs.length / songs.length;
  }

  private assessEmotionalRegulation(songs: Song[]): number {
    // Music used for emotional regulation
    const regulatingGenres = ['ambient', 'classical', 'new age', 'meditation'];
    const regulatingSongs = songs.filter(s => 
      regulatingGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return regulatingSongs.length / songs.length;
  }

  private assessAttentionAnchoring(songs: Song[]): number {
    // Consistent, rhythmic music that anchors attention
    const anchoringGenres = ['electronic', 'ambient', 'post-rock', 'minimal'];
    const anchoringSongs = songs.filter(s => 
      anchoringGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return anchoringSongs.length / songs.length;
  }

  private assessDopamineActivation(songs: Song[]): number {
    // Upbeat, rewarding music that activates dopamine
    const dopamineGenres = ['pop', 'electronic', 'dance', 'funk', 'upbeat'];
    const dopamineSongs = songs.filter(s => 
      dopamineGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return dopamineSongs.length / songs.length;
  }

  private assessIntrospection(songs: Song[]): number {
    const introspectiveGenres = ['indie', 'folk', 'acoustic', 'singer-songwriter'];
    const introspectiveSongs = songs.filter(s => 
      introspectiveGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return introspectiveSongs.length / songs.length;
  }

  private identifyAuthenticity(songs: Song[]): number {
    // Independent, non-mainstream artists often indicate authenticity preference
    const authenticGenres = ['indie', 'alternative', 'underground', 'folk'];
    const authenticSongs = songs.filter(s => 
      authenticGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return authenticSongs.length / songs.length;
  }

  private assessGrowthMindset(songs: Song[]): number {
    // Music about change, growth, transformation
    const growthKeywords = ['grow', 'change', 'transform', 'evolve', 'become'];
    const growthSongs = songs.filter(song => {
      const text = `${song.title} ${song.artist}`.toLowerCase();
      return growthKeywords.some(keyword => text.includes(keyword));
    });
    return growthSongs.length / songs.length;
  }

  private identifyEmpathy(songs: Song[]): number {
    // Music that demonstrates or evokes empathy
    const empathyGenres = ['soul', 'gospel', 'folk', 'blues'];
    const empathySongs = songs.filter(s => 
      empathyGenres.some(genre => s.genre?.toLowerCase().includes(genre))
    );
    return empathySongs.length / songs.length;
  }

  private assessRevolutionarySpirit(songs: Song[]): number {
    // Punk, protest music, revolutionary themes
    const revolutionaryGenres = ['punk', 'protest', 'political'];
    const revolutionaryKeywords = ['revolution', 'change', 'fight', 'rebel', 'rise'];
    
    const revolutionarySongs = songs.filter(song => {
      const genre = song.genre?.toLowerCase() || '';
      const text = `${song.title} ${song.artist}`.toLowerCase();
      
      return revolutionaryGenres.some(rGenre => genre.includes(rGenre)) ||
             revolutionaryKeywords.some(keyword => text.includes(keyword));
    });
    
    return revolutionarySongs.length / songs.length;
  }

  private assessFoundationalTruth(songs: Song[]): number {
    // Music that aligns with Keith's foundational truths
    const truthKeywords = ['authentic', 'real', 'truth', 'honest', 'genuine'];
    const truthSongs = songs.filter(song => {
      const text = `${song.title} ${song.artist}`.toLowerCase();
      return truthKeywords.some(keyword => text.includes(keyword));
    });
    return truthSongs.length / songs.length;
  }

  private calculateRevolutionaryPotential(
    emotional: EmotionalArchitecture,
    cognitive: CognitiveMapping,
    consciousness: ConsciousnessMarkers
  ): number {
    return (
      consciousness.revolutionarySpirit * 0.3 +
      emotional.resilienceMarkers * 0.2 +
      cognitive.complexityPreference * 0.2 +
      consciousness.authenticityMarkers * 0.3
    );
  }

  private identifyKeithWisdomTriggers(
    songs: Song[],
    emotional: EmotionalArchitecture,
    adhd: ADHDResonancePatterns
  ): string[] {
    const triggers = [];
    
    if (emotional.catharticProcessing > 0.3) {
      triggers.push("scars_to_code");
    }
    
    if (adhd.hyperfocusIndicators.length > 2) {
      triggers.push("adhd_is_jazz");
    }
    
    if (emotional.emotionalRange > 0.5) {
      triggers.push("chaos_has_current");
    }
    
    if (songs.length > 50) {
      triggers.push("founder_is_algorithm");
    }
    
    return triggers;
  }

  private createFallbackAnalysis(songs: Song[]): MusicalDNAAnalysis {
    return {
      songs,
      emotionalArchitecture: {
        primaryEmotions: { introspection: 0.5, energy: 0.3, healing: 0.2 },
        emotionalRange: 0.5,
        intensityPattern: 'moderate',
        catharticProcessing: 0.3,
        resilienceMarkers: 0.4,
        connectionLonging: 0.6
      },
      cognitiveMapping: {
        complexityPreference: 0.5,
        layeringTolerance: 0.4,
        rhythmicVariability: 0.6,
        harmonicSophistication: 0.3,
        lyricDepthPreference: 0.7,
        instrumentalComplexity: 0.4
      },
      adhdResonancePatterns: {
        hyperfocusIndicators: [],
        stimulationOptimalLevel: 0.6,
        executiveFunctionSupport: 0.4,
        emotionalRegulationAid: 0.5,
        attentionAnchoring: 0.3,
        dopamineActivation: 0.7
      },
      consciousnessMarkers: {
        introspectionLevel: 0.6,
        authenticityMarkers: 0.5,
        growthOrientation: 0.4,
        empathyIndicators: 0.7,
        revolutionarySpirit: 0.3,
        foundationalTruthAlignment: 0.5
      },
      revolutionaryPotential: 0.5,
      keithWisdomTriggers: ['musical_dna_processing_available']
    };
  }

  // 🎵 Process musical DNA for consciousness integration
  async processMusicalDNA(userPlaylist: Song[]): Promise<MusicalDNAProfile> {
    const analysis = await this.analyzeMusicalDNA(userPlaylist);
    
    return {
      primaryGenres: [...new Set(userPlaylist.map(s => s.genre).filter(Boolean))].slice(0, 5),
      emotionalThemes: analysis.emotionalArchitecture.primaryEmotions,
      cognitiveMapping: analysis.cognitiveMapping,
      resonancePattern: this.determineResonancePattern(analysis),
      confidenceLevel: Math.min(0.95, userPlaylist.length / 20) // More songs = higher confidence
    };
  }

  private determineResonancePattern(analysis: MusicalDNAAnalysis): string {
    if (analysis.revolutionaryPotential > 0.7) return "Revolutionary Consciousness";
    if (analysis.consciousnessMarkers.introspectionLevel > 0.6) return "Deep Introspection";
    if (analysis.adhdResonancePatterns.stimulationOptimalLevel > 0.7) return "ADHD Optimized";
    if (analysis.emotionalArchitecture.catharticProcessing > 0.5) return "Cathartic Processing";
    return "Balanced Integration";
  }
}

// Export singleton and functions
export const musicalEngine = new MusicalEngine();
export const analyzeMusicalDNA = musicalEngine.analyzeMusicalDNA.bind(musicalEngine);
export const processMusicalDNA = musicalEngine.processMusicalDNA.bind(musicalEngine);