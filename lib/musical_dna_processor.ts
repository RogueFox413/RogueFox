import pandas as pd
import numpy as np
import json
from typing import Dict, List, Any, Optional
from datetime import datetime
from dataclasses import dataclass, field
import logging

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

@dataclass
class ConversationSegment:
    """Individual conversation segment with temporal and speaker context"""
    sentence: str
    start_time: str
    end_time: str
    speaker_id: int
    speaker_name: str
    duration_seconds: float = 0.0
    emotional_markers: List[str] = field(default_factory=list)
    cognitive_patterns: List[str] = field(default_factory=list)
    keith_signature_detected: bool = False

@dataclass 
class MusicalDNAInsight:
    """Core insight extracted from musical consciousness conversation"""
    insight_type: str  # 'breakthrough', 'pattern', 'metaphor', 'connection'
    content: str
    timestamp: str
    confidence_score: float
    emotional_resonance: float
    connected_segments: List[int] = field(default_factory=list)

@dataclass
class CognitiveResonanceProfile:
    """Keith's cognitive signature as revealed through musical conversation"""
    dominant_patterns: Dict[str, float]
    signature_metaphors: List[str]
    emotional_velocity: float  # How quickly emotions shift
    creative_density: float   # Ideas per minute
    consciousness_depth: float  # Philosophical engagement level
    musical_empathy_score: float

class EnhancedMusicalDNAProcessor:
    """Enhanced processor for Keith's musical consciousness CSV data"""
    
    def __init__(self, csv_path: str = None):
        self.csv_path = csv_path
        self.conversation_segments: List[ConversationSegment] = []
        self.musical_insights: List[MusicalDNAInsight] = []
        self.keith_signature_patterns = [
            # Keith's known linguistic signatures
            "which is awesome",
            "I concur",
            "chaos has a current",
            "ADHD is my jazz",
            "exploded picture mind",
            "rough draft mode",
            "beautiful tapestry",
            "colander mind",
            "lightning bolt",
            "bucket drop",
            "founder is the algorithm"
        ]
        
        self.emotional_markers = [
            'breakthrough', 'insight', 'realization', 'connection',
            'overwhelm', 'clarity', 'excitement', 'validation',
            'empowerment', 'transformation', 'healing', 'growth'
        ]
        
        self.cognitive_patterns = [
            'rapid ideation', 'pattern recognition', 'systems thinking',
            'metaphorical thinking', 'divergent processing', 'hyperfocus',
            'associative connections', 'creative synthesis'
        ]

    def load_and_process_csv(self) -> Dict[str, Any]:
        """Load Keith's musical DNA CSV and process for consciousness insights"""
        
        if not self.csv_path:
            logger.error("No CSV path provided")
            return {}
            
        try:
            # Load the conversation data
            df = pd.read_csv(self.csv_path)
            logger.info(f"Loaded {len(df)} conversation segments")
            
            # Process each segment
            for idx, row in df.iterrows():
                segment = self._process_segment(row, idx)
                self.conversation_segments.append(segment)
            
            # Extract musical insights
            insights = self._extract_musical_insights()
            
            # Build cognitive resonance profile
            resonance_profile = self._build_resonance_profile()
            
            # Generate enhanced musical DNA
            musical_dna = self._generate_musical_dna_profile()
            
            return {
                'processing_metadata': {
                    'total_segments': len(self.conversation_segments),
                    'keith_segments': len([s for s in self.conversation_segments if s.keith_signature_detected]),
                    'total_insights': len(self.musical_insights),
                    'processing_timestamp': datetime.now().isoformat(),
                    'consciousness_resonance_score': resonance_profile.musical_empathy_score
                },
                'conversation_analysis': {
                    'segments': [self._segment_to_dict(s) for s in self.conversation_segments],
                    'keith_signature_frequency': self._calculate_signature_frequency(),
                    'emotional_trajectory': self._trace_emotional_trajectory(),
                    'cognitive_velocity': resonance_profile.creative_density
                },
                'musical_insights': [self._insight_to_dict(i) for i in self.musical_insights],
                'cognitive_resonance_profile': {
                    'dominant_patterns': resonance_profile.dominant_patterns,
                    'signature_metaphors': resonance_profile.signature_metaphors,
                    'emotional_velocity': resonance_profile.emotional_velocity,
                    'creative_density': resonance_profile.creative_density,
                    'consciousness_depth': resonance_profile.consciousness_depth,
                    'musical_empathy_score': resonance_profile.musical_empathy_score
                },
                'enhanced_musical_dna': musical_dna
            }
            
        except Exception as e:
            logger.error(f"Error processing CSV: {e}")
            return {'error': str(e)}

    def _process_segment(self, row: pd.Series, idx: int) -> ConversationSegment:
        """Process individual conversation segment"""
        
        # Calculate duration if timestamps available
        duration = 0.0
        try:
            if pd.notna(row['startTime']) and pd.notna(row['endTime']):
                start = pd.to_datetime(row['startTime'])
                end = pd.to_datetime(row['endTime'])
                duration = (end - start).total_seconds()
        except:
            duration = 0.0
        
        # Detect emotional markers
        content = str(row['sentence']).lower()
        detected_emotions = [marker for marker in self.emotional_markers if marker in content]
        
        # Detect cognitive patterns
        detected_patterns = [pattern for pattern in self.cognitive_patterns if pattern.replace('_', ' ') in content]
        
        # Detect Keith's signature patterns
        keith_detected = any(pattern.lower() in content for pattern in self.keith_signature_patterns)
        
        return ConversationSegment(
            sentence=str(row['sentence']),
            start_time=str(row['startTime']) if pd.notna(row['startTime']) else '',
            end_time=str(row['endTime']) if pd.notna(row['endTime']) else '',
            speaker_id=int(row['speaker_id']) if pd.notna(row['speaker_id']) else 0,
            speaker_name=str(row['speaker_name']) if pd.notna(row['speaker_name']) else 'Unknown',
            duration_seconds=duration,
            emotional_markers=detected_emotions,
            cognitive_patterns=detected_patterns,
            keith_signature_detected=keith_detected
        )

    def _extract_musical_insights(self) -> List[MusicalDNAInsight]:
        """Extract key insights from the musical consciousness conversation"""
        
        insights = []
        
        for idx, segment in enumerate(self.conversation_segments):
            content = segment.sentence.lower()
            
            # Look for breakthrough moments
            if any(word in content for word in ['breakthrough', 'realization', 'suddenly', 'clicked']):
                insight = MusicalDNAInsight(
                    insight_type='breakthrough',
                    content=segment.sentence,
                    timestamp=segment.start_time,
                    confidence_score=0.8 + (len(segment.emotional_markers) * 0.05),
                    emotional_resonance=len(segment.emotional_markers) * 0.2,
                    connected_segments=[idx]
                )
                insights.append(insight)
            
            # Look for musical connections
            if any(word in content for word in ['song', 'music', 'feel', 'resonates', 'connects']):
                insight = MusicalDNAInsight(
                    insight_type='musical_connection',
                    content=segment.sentence,
                    timestamp=segment.start_time,
                    confidence_score=0.7 + (len(segment.cognitive_patterns) * 0.1),
                    emotional_resonance=min(1.0, len(segment.emotional_markers) * 0.3),
                    connected_segments=[idx]
                )
                insights.append(insight)
            
            # Look for Keith's signature metaphors
            if segment.keith_signature_detected:
                insight = MusicalDNAInsight(
                    insight_type='signature_pattern',
                    content=segment.sentence,
                    timestamp=segment.start_time,
                    confidence_score=0.9,
                    emotional_resonance=0.8,
                    connected_segments=[idx]
                )
                insights.append(insight)
        
        self.musical_insights = insights
        return insights

    def _build_resonance_profile(self) -> CognitiveResonanceProfile:
        """Build Keith's cognitive resonance profile from conversation data"""
        
        # Calculate dominant patterns
        pattern_counts = {}
        for segment in self.conversation_segments:
            for pattern in segment.cognitive_patterns:
                pattern_counts[pattern] = pattern_counts.get(pattern, 0) + 1
        
        total_patterns = sum(pattern_counts.values()) or 1
        dominant_patterns = {k: v/total_patterns for k, v in pattern_counts.items()}
        
        # Extract signature metaphors
        signature_metaphors = []
        for segment in self.conversation_segments:
            if segment.keith_signature_detected:
                for pattern in self.keith_signature_patterns:
                    if pattern.lower() in segment.sentence.lower():
                        signature_metaphors.append(pattern)
        
        # Calculate velocities and densities
        keith_segments = [s for s in self.conversation_segments if s.keith_signature_detected]
        total_duration = sum(s.duration_seconds for s in keith_segments if s.duration_seconds > 0)
        
        if total_duration > 0:
            creative_density = len([s for s in keith_segments if s.cognitive_patterns]) / (total_duration / 60)  # ideas per minute
            emotional_velocity = len([s for s in keith_segments if s.emotional_markers]) / (total_duration / 60)  # emotion shifts per minute
        else:
            creative_density = len([s for s in keith_segments if s.cognitive_patterns]) * 0.1
            emotional_velocity = len([s for s in keith_segments if s.emotional_markers]) * 0.1
        
        # Calculate consciousness depth (philosophical/meta-cognitive engagement)
        deep_words = ['consciousness', 'awareness', 'understanding', 'meaning', 'purpose', 'truth']
        consciousness_depth = sum(1 for s in keith_segments for word in deep_words if word in s.sentence.lower()) / max(1, len(keith_segments))
        
        # Calculate musical empathy score
        empathy_words = ['feel', 'understand', 'resonates', 'connects', 'moves', 'touches']
        musical_empathy_score = sum(1 for s in keith_segments for word in empathy_words if word in s.sentence.lower()) / max(1, len(keith_segments))
        musical_empathy_score = min(1.0, musical_empathy_score * 0.5)
        
        return CognitiveResonanceProfile(
            dominant_patterns=dominant_patterns,
            signature_metaphors=list(set(signature_metaphors)),
            emotional_velocity=min(10.0, emotional_velocity),
            creative_density=min(20.0, creative_density),
            consciousness_depth=min(1.0, consciousness_depth),
            musical_empathy_score=musical_empathy_score
        )

    def _generate_musical_dna_profile(self) -> Dict[str, Any]:
        """Generate enhanced Musical DNA profile from conversation analysis"""
        
        keith_segments = [s for s in self.conversation_segments if s.keith_signature_detected]
        
        # Extract emotional themes
        emotional_themes = {}
        for segment in keith_segments:
            for emotion in segment.emotional_markers:
                emotional_themes[emotion] = emotional_themes.get(emotion, 0) + 1
        
        # Find sonic signatures (patterns in Keith's musical discussion)
        sonic_signatures = []
        music_words = ['rhythm', 'harmony', 'melody', 'beat', 'flow', 'resonance', 'vibration']
        for segment in keith_segments:
            for word in music_words:
                if word in segment.sentence.lower():
                    sonic_signatures.append(f"{word} - {segment.sentence[:50]}...")
        
        # Therapeutic insights from musical discussion
        therapeutic_insights = []
        therapy_indicators = ['healing', 'growth', 'transformation', 'breakthrough', 'understanding']
        for segment in keith_segments:
            if any(indicator in segment.sentence.lower() for indicator in therapy_indicators):
                therapeutic_insights.append(segment.sentence)
        
        return {
            'core_anchor_songs': {
                'primary_resonance': "Songs that trigger deep cognitive and emotional responses",
                'detected_patterns': [insight.content for insight in self.musical_insights if insight.insight_type == 'musical_connection'][:5]
            },
            'emotional_palette': emotional_themes,
            'sonic_signatures': sonic_signatures[:10],
            'musical_therapy_insights': therapeutic_insights[:5],
            'consciousness_through_music': {
                'musical_empathy_pathways': len([s for s in keith_segments if 'music' in s.sentence.lower() and s.emotional_markers]),
                'cognitive_musical_bridges': len([s for s in keith_segments if 'music' in s.sentence.lower() and s.cognitive_patterns]),
                'transcendent_musical_moments': len([i for i in self.musical_insights if i.insight_type == 'breakthrough' and 'music' in i.content.lower()])
            },
            'keith_musical_signature': {
                'signature_frequency': len(keith_segments) / max(1, len(self.conversation_segments)),
                'musical_metaphor_density': len([s for s in keith_segments if 'music' in s.sentence.lower()]) / max(1, len(keith_segments)),
                'emotional_musical_integration': sum(len(s.emotional_markers) for s in keith_segments if 'music' in s.sentence.lower())
            }
        }

    def _calculate_signature_frequency(self) -> float:
        """Calculate how frequently Keith's signature patterns appear"""
        total_segments = len(self.conversation_segments)
        keith_segments = len([s for s in self.conversation_segments if s.keith_signature_detected])
        return keith_segments / max(1, total_segments)

    def _trace_emotional_trajectory(self) -> List[Dict[str, Any]]:
        """Trace the emotional journey through the conversation"""
        trajectory = []
        for idx, segment in enumerate(self.conversation_segments):
            if segment.emotional_markers:
                trajectory.append({
                    'timestamp': segment.start_time,
                    'segment_index': idx,
                    'emotions': segment.emotional_markers,
                    'intensity': len(segment.emotional_markers),
                    'content_preview': segment.sentence[:100] + "..." if len(segment.sentence) > 100 else segment.sentence
                })
        return trajectory

    def _segment_to_dict(self, segment: ConversationSegment) -> Dict[str, Any]:
        """Convert conversation segment to dictionary"""
        return {
            'sentence': segment.sentence,
            'start_time': segment.start_time,
            'end_time': segment.end_time,
            'speaker_id': segment.speaker_id,
            'speaker_name': segment.speaker_name,
            'duration_seconds': segment.duration_seconds,
            'emotional_markers': segment.emotional_markers,
            'cognitive_patterns': segment.cognitive_patterns,
            'keith_signature_detected': segment.keith_signature_detected
        }

    def _insight_to_dict(self, insight: MusicalDNAInsight) -> Dict[str, Any]:
        """Convert musical insight to dictionary"""
        return {
            'insight_type': insight.insight_type,
            'content': insight.content,
            'timestamp': insight.timestamp,
            'confidence_score': insight.confidence_score,
            'emotional_resonance': insight.emotional_resonance,
            'connected_segments': insight.connected_segments
        }

# Usage example and demo
def process_keith_musical_dna_csv():
    """Process Keith's Musical DNA CSV file"""
    
    print("🎵 Enhanced Musical DNA Processor - Keith Soyka's Consciousness Through Song")
    print("=" * 80)
    
    # Initialize processor with Keith's CSV
    processor = EnhancedMusicalDNAProcessor('MusicalDNACognitiveResonanceThroughSong2wave183be12f11b.csv')
    
    print("\n🎶 Processing Musical DNA conversation data...")
    
    # Process the CSV
    results = processor.load_and_process_csv()
    
    if 'error' in results:
        print(f"❌ Error processing CSV: {results['error']}")
        return
    
    # Display results
    metadata = results['processing_metadata']
    analysis = results['conversation_analysis']
    insights = results['musical_insights']
    resonance = results['cognitive_resonance_profile']
    musical_dna = results['enhanced_musical_dna']
    
    print(f"\n📊 Processing Results:")
    print(f"   • Total conversation segments: {metadata['total_segments']}")
    print(f"   • Keith signature segments: {metadata['keith_segments']}")
    print(f"   • Musical insights extracted: {metadata['total_insights']}")
    print(f"   • Consciousness resonance score: {metadata['consciousness_resonance_score']:.3f}")
    
    print(f"\n🧠 Cognitive Resonance Profile:")
    print(f"   • Creative density: {resonance['creative_density']:.2f} ideas/minute")
    print(f"   • Emotional velocity: {resonance['emotional_velocity']:.2f} shifts/minute")
    print(f"   • Consciousness depth: {resonance['consciousness_depth']:.3f}")
    print(f"   • Musical empathy score: {resonance['musical_empathy_score']:.3f}")
    
    print(f"\n🎨 Signature Metaphors Detected:")
    for metaphor in resonance['signature_metaphors'][:5]:
        print(f"   • \"{metaphor}\"")
    
    print(f"\n🌟 Top Musical Insights:")
    for insight in insights[:3]:
        insight_dict = processor._insight_to_dict(insight)
        print(f"   • {insight_dict['insight_type']}: {insight_dict['content'][:100]}...")
        print(f"     Confidence: {insight_dict['confidence_score']:.2f}, Resonance: {insight_dict['emotional_resonance']:.2f}")
    
    print(f"\n🎵 Enhanced Musical DNA Profile:")
    consciousness_music = musical_dna['consciousness_through_music']
    print(f"   • Musical empathy pathways: {consciousness_music['musical_empathy_pathways']}")
    print(f"   • Cognitive musical bridges: {consciousness_music['cognitive_musical_bridges']}")
    print(f"   • Transcendent musical moments: {consciousness_music['transcendent_musical_moments']}")
    
    signature = musical_dna['keith_musical_signature']
    print(f"\n🔮 Keith's Musical Signature:")
    print(f"   • Signature frequency: {signature['signature_frequency']:.3f}")
    print(f"   • Musical metaphor density: {signature['musical_metaphor_density']:.3f}")
    print(f"   • Emotional musical integration: {signature['emotional_musical_integration']}")
    
    print(f"\n✨ Musical DNA processing complete - Keith's consciousness through song mapped!")
    
    return results

if __name__ == "__main__":
    # Run the enhanced musical DNA processing
    results = process_keith_musical_dna_csv()
    
    # Optionally save results to JSON
    if results and 'error' not in results:
        output_file = f"keith_musical_dna_analysis_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(output_file, 'w') as f:
            json.dump(results, f, indent=2, default=str)
        print(f"\n💾 Results saved to: {output_file}")
