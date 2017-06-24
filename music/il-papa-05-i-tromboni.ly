\version "2.16.2"
\clef treble
\header {
  title = "i Tromboni" 
  subtitle = "by Giovannino" 
  composer = "music by Daniele da Padola"
  meter = "6x through, 6th time end at fin"

}

\relative c' {
  \time 6/4
  <<
    \new Staff {
      \key g \major
      fis2. a
      g4. a8 b4 c4. d8 b4
      a4. b8 a4 g2.
      g4. fis8 e4 d4. e8 fis4
      g4. a8 fis4 g2.

      \bar "||"
      \mark "fin"
      d'4. c8 d4 b4. c8 d4
      c4. b8 c4 a4. b8 c4
      b4. a8 b4 b4. a8 g4
      a2 g4 fis2 d4
      \bar ":|"
    }
    \new Staff {
      \key g \major
      c'1.
      d2. b c1.
      g2. a g1.
      \bar "||"
      g1. a2. c d b c1.
      \bar ":|"
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