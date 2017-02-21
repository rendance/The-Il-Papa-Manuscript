\version "2.16.2"
\clef treble
\header {
  title = "lo Dimostra" 
  subtitle = "by Giovannino" 
  composer = "music by Daniele da Padola"
}

sopranoA = \relative c'' {
  \time 6/4
  g4. a8 b4 b4. c8 d4
  e4. d8 c4 c4. d8 e4
  d2 a4 a4. b8 c4
  d2 a4 a4. b8 a4
  g2 e4 e2.
  g4. a8 b4 b4. c8 b4
  c4. b8 a4 a4. b8 c4 
  b4. a8 g4 g4. a8 g4
  g4. f8 e4 d2 c4
  c4. d8 e4 d4. e8 f4
  g4. a8 b4 c2 g4
  a4. g8 f4 f4. g8 a4
  a4. b8 c4 d2 a4
  g4. a8 b4 d4. c8 b4
  b4. a8 g4 a4. b8 a4
  g4. f8 e4 e4. f8 g4
  g4. a8 b4 c2.
}

altoA = \relative c'' {
  b2. d e c a d a a b1.
  d2. g, f c' d b 
  c e f f g f f, a
  c c b b b a b b b1.
}

tenorA = \relative c'' {
  g1. g f d g b a g g a b c a g e g g
}

sopranoB = \relative c'' {
  \time 6/4
  \repeat volta 2 {
    g2 c4 c2.
    a2 d4 d2.
    b2 c4 d2 b4
  }
  \alternative {
    {
      c2 a4 g2.
    }
    {
      c2 a4 c2.
    }
  }
  c4. b8 c4 a4. b8 c4
  b4. a8 b4 g4. a8 b4
  a4. g8 a4 f4. g8 a4
  g4. a8 b4 c2.
}

altoB = \relative c'' {
  \repeat volta 2 {
    g'4. f8 e4 e4. f8 g4
    a4. g8 f4 f4. g8 a4
    b4. a8 g4 g4. a8 b4
  }
  \alternative {
    {
      g4. a8 b4 c2 a4
    }
    {
      g4. a8 b4 c2.
    }
  }
  g c, g g c c b c
}

tenorB = \relative c' {
  \repeat volta 2 {
    c1. d e
  }
  \alternative {
    {
      g
    }
    {
      c,
    }
  }
  e e f e2. c
}

\new StaffGroup <<
  \new Staff {
    \mark "Part A - 3x through"
    \repeat volta 3 {
      \sopranoA
    }
  }
  \new Staff {
    \repeat volta 3 {
      \altoA
    }
  }
  \new Staff {
    \repeat volta 3 {
      \tenorA
    }
  }
>>

\pageBreak

\new StaffGroup <<
  \new Staff {
    \mark "Part B - 1x through"
    \sopranoB
  }
  \new Staff {
    \altoB
  }
  \new Staff {
    \tenorB
  }
>>
\markup {
  This music is a rude attempt by a non-musican to have some music for this dance.
}
\markup {
  Feel free to alter, add, or replace, at whim, with or without attribution.
}
\markup {
  Corrections would be very much appreciated.
}