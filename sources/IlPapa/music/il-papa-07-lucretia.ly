\version "2.16.2"
\header {
  title = "Il Torneo Amoroso" 
  subtitle = "by Cesare Negri" 
  composer = "music from Yvonne Kendall's transcription"
}

<<
  \new Staff {
    \relative c'' {
      \time 4/4
      \clef treble
      \key f \major
      \repeat volta 2 {
        g2^"A (2x)" c4 c4 b2 b2
        c4 c a c bes2 bes
        a8 g a bes c4 bes a8 bes c a bes a g f
        e4 f f e f1
      }
      \repeat volta 2 {
        g4.^"B (2x)" a8 g4 f e2 d
        d4 d e2 f g8 f g a
        g4 f e4. c8 d e f4 f e
        f1
      }
      \repeat volta 2 {
        a4^"C (2x)" a8 bes c4 a bes4. c8 d4 c8 bes
        a4. bes8 c4 a bes4. c8 d4 c8 bes
        a4. bes8 c4 a bes4. a8 g4 f 
        e f f e f1^\markup { \right-align "repeat AABBCC again" }
      }
      
      \time 6/4
      \repeat volta 2 {
        f1^"D (2x) (couranto?)" f2 e1 e2 
        f2. g4 a2 g1 g2
        bes1 a2 g1 f2
        f2 e1 f1.
      }
      \repeat volta 2 {
        bes1^"E (2x)" a2 g1 f2
        f2. g4 a2 g1 f2
        bes1 a2 g1 f2 
        f2 e1 f1.
      }
      \repeat volta 2 {
        f2.^"F (2x)" g4 a2 bes2. c4 bes2 
        f2. g4 a2 bes1 bes2
        d2. c4 bes2 a2. g4 f2
        e2. f4 g2 f1.
      }
      \repeat volta 2 {
        f2^"G (2x) (gagliard)" f f e2. d4 c2
        c'2 c c bes2. c4 bes2
        g4 a bes c bes2 a2. c,4 d e 
        f2 f e f1.
      }
      \repeat volta 2 {
        bes1^"H (2x) (couranto?)" a2 g1 f2
        f2. g4 a2 g1 f2
        bes1 a2 g1 f2 
        f2 e1 f1.
      }
      \repeat volta 2 {
        f2.^"I (2x)" g4 a2 bes1 bes2
        f2. g4 a2 bes1 bes2
        d2. c4 bes2 a2. g4 f2
        e1 g2 f1.
      }
    }
  }

  \new Staff {
    \relative c'' {
      \time 4/4
      \clef treble
      \key f \major
      \repeat volta 2 {
        g2 c4 c4 <b d,>2 <b d,>2
        <c f,>4 c a c <bes d,>2 <bes d,>2
        <a f>8 g a bes c4 <bes d,> <a f>8 bes c a bes a g f
        e4 f f e f1
      }
      \repeat volta 2 {
        <g e>4. a8 g4 f e2 d
        d4 d e2 f g8 f g a
        g4 f e4. c8 d e f4 f e
        f1
      }
      \repeat volta 2 {
        <a f>4 <a f>8 bes c4 a <bes f>4. c8 d4 c8 bes
        <a f>4. bes8 c4 a <bes f>4. c8 d4 c8 bes 
        <a f>4. bes8 c4 a <bes d,>4. a8 g4 f
        e f <f g> e f1
      }

      \time 6/4
      \repeat volta 2 {
        f1 f2 e1 e2
        f2. g4 a2 <g ees>1 <g ees>2
        <bes d,>1 <a f>2 <g ees>1 f2
        d2 e g f1.
      }
      \repeat volta 2 {
        <g ees>1 <a f>2 <g e>1 <a f>2
        f2. g4 a2 <g e>1 f2
        <bes d,>1 <a f>2 g1 f2 
        f2 <f g> e f1.
      }
      \repeat volta 2 {
        f2. g4 a2 <bes f>2. c4 bes2 
        f2. g4 a2 <bes f>1 f2
        d'2. c4 bes2 <a f>2. g4 f2
        e2. f4 g2 f1.
      }
      \repeat volta 2 {
        f2^"F (2x)" d f e2. d4 c2
        c'2 a c <bes d,>2. c4 bes2
        <g ees>4 a bes c bes2 <a f>2. c,4 d e 
        f2 <f g> e f1.
      }
      \repeat volta 2 {
        <g ees>1 <a f>2 <g e>1 <a f>2
        f2. g4 a2 <g e>1 f2
        <bes d,>1 <a f>2 g1 f2 
        f2 <f g> e f1.
      }
      \repeat volta 2 {
        f2. g4 a2 <bes d,>1 bes2
        f2. g4 a2 <bes f>1 bes2
        d2. c4 bes2 <a f>2. g4 f2
        d2 g e f1.
      }
    }
  }

  \new Staff {
    \relative c' {
      \time 4/4
      \clef bass
      \key f \major
      \repeat volta 2 {
        <b g>2 <c a>4 <c a>4 g2 g2
        f2 f <g bes>2 <g bes>
        f1 f
        <c' c,>4 <a c,> <c c,>2 <a f>1
      }
      \repeat volta 2 {
        <c c,>2. d,4 <c' c,>2 <bes bes,>
        <bes bes,> <c c,> <a f> <c c,>
        r4 a <c c,>2 r4 d,4 <c' c,>2
        <a f>1
      }
      \repeat volta 2 {
        f4 f2. bes1
        <c f,>2. f,4 bes1
        <c f,>2. f,4 <bes bes,>2. a4 
        <c c,>4 <c f,> <c c,>2 a2 f2
      }

      \time 6/4
      \repeat volta 2 {
        <a f>1 <a f>2 <c c,>1 <c c,>2
        <a f>1. ees1 ees2
        <bes' bes,>1 f2 <c' c,>1 <a d,>2
        <bes bes,>2 <c c,>1 <a f>1 <a f>2
      }
      \repeat volta 2 {
        ees1 a2 <c c,>1 g2
        d1. <c' c,>1 <a f>2
        <bes bes,>1 a2 ees c d
        <bes' bes,> <c c,>1 <a f>1.
      }
      \repeat volta 2 {
        <a f>1 c,2 <bes' bes,>1.
        <a f>1 f2 bes1 bes2
        bes1 g2 f1 d2
        <c' c,>1 c,2 <a' f>1 f2
      }
      \repeat volta 2 {
        d2 bes d <c' c,>1.
        f,2 a f bes1.
        ees, f 
        a1 <c c,>2 <a f>1.
      }
      \repeat volta 2 {
        ees1 a2 <c c,>1 g2
        d1. <c' c,>1 <a f>2
        <bes bes,>1 a2 ees c d
        <bes' bes,> <c c,>1 <a f>1.
      }
      \repeat volta 2 {
        <a f>1. bes2 g bes
        <a f>1. bes
        bes1 g2 f1 d2
        bes g c <a' f>1.
      }
    }
  }
>>
