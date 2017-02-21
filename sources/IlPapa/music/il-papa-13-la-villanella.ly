\version "2.16.2"
\clef treble
\header {
  title = "la Villanella" 
  subtitle = "by Giovannino" 
  composer = "music by Daniele da Padola"
  meter = "3x through"

}

\relative c'' {
  \time 6/4
  <<
    \new Staff {
      \key g \major
      g2 d'4 d4. c8 b4
      c2 e4 e4. d8 c4
      b2 d4 d4. c8 b4
      a2 g4 fis2 d4

      e4. fis8 g4 fis4. g8 a4
      g4. a8 b4 d2.

      a2 a4 d2 d4
      a2 a4 d2 d4
      d4. c8 b4 a2 b4
      g2. g
      \bar "|"
    }
    \new Staff {
      \key g \major
      g1. a g d
      c2. d e g
      fis1. a
      b2. c b1.
      \bar "|."
    }
  >>
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