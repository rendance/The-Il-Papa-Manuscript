\version "2.18.2"
\header {
  title = "Lucretia" 
  subtitle = "by Giovannino" 
  composer = "music by Daniele da Padola"
  meter="AABCC"
}

global= {
  \key c \major
  \time 6/4
}

sopranoA = \relative c'' {
  d2 c4 b2 a8 g8 |
  a4 b4 a4 g2.
}
tenorA = \relative c' {
  g1. d'2. g,
}

sopranoB = \relative c'' {
  g2 d'4 d2 c8 b8 |
  c2 e4 e2 d8 c8 |
  b2 d4 d2 c8 b8 |
  a2 g4 a2.
}
tenorB = \relative c' {
  g1. a g d'
}

sopranoC = \relative c'' {
  g2. f2 a4 |
  b4 c4 b4 d2.
}
tenorC = \relative c' {
  d1. g,
}

sopranoD = \relative c'' {
  d2 c4 b2 a8 g8 |
  a4 b4 a4 g2.
}
tenorD = \relative c' {
  g1. d'2. g,
}


soprano =  {
  \time 6/4
  \tempo 4=160
  \repeat volta 2 {
    \mark "A"
    \sopranoA \sopranoB
  }
  {
    \mark "B"
    \sopranoC
    \sopranoB
  }
  \repeat volta 2 {
    \mark "C"
    \sopranoC
    \sopranoD
  }
  
}

tenor = {
  \clef "G_8"
  \time 6/4
  \tempo 4=160
  \repeat volta 2 {
    \tenorA \tenorB
  }
  {
    \tenorC
    \tenorB
  }
  \repeat volta 2 {
    \tenorC
    \tenorD
  }
}

\new StaffGroup<<
  \new Staff {
    \soprano
  }
  \new Staff {
    \tenor
  }
>>
\markup {
  Thanks to Aaron Elkiss for fixing my tenor line for me.
}
\markup {
  This music is a rude attempt by a non-musican to have some music for this dance.
}
\markup {
  Feel free to alter, add, or replace, at whim, with or without attribution.
}
\markup {
  Corrections would be very much appreciated.
}