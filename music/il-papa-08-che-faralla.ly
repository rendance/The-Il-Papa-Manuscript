\version "2.18.2"
% This file prints two versions of the music -- with and without lyrics -- and produces MIDI output

\header {
    title = "Che farala che dirala"
    subtitle = "Canzoni Sonetti Strambotti et Frottoles, Libro Tertio (Andrea Antico, 1517)"
    arranger = "arr. Ysabel da Costa"
    composer = "Don Michele Vicentino (Michele Pesenti)"
    copyright = \markup {\char ##x00A9 "Lisa K. Koch; permission granted for use with attribution (CC BY 4.0)"}
    tagline = "2"
    }

#(set-global-staff-size 16.4616264567)
\paper {
    first-page-number = 0
    print-page-number = ##f
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 1.27\cm
    bottom-margin = 1.27\cm
    left-margin = 2.0\cm
    right-margin = 2.0\cm
    between-system-space = 1.87\cm
    page-top-space = 1.01\cm
    }

% Music %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

CantusMusic =  \relative d'' {
    \clef "treble" \key d \minor \time 6/4 
       \once \hide Score.MetronomeMark
       \tempo 4 = 180  % this doesn't print, but it may help with the MIDI output
    d2 ^\markup{ \bold {A} } 
    d4 d4 a4 r4 | % 2
    d2 d4 d4 a4 r4 | % 3
    d2 d4 c2 bes4 | % 4
    bes2 g4 a2 f4 | % 5
    g4 bes2 a2 r4 \break \repeat volta 2 {
        | % 6
        bes4 ^\markup{ \bold {B} } bes4 c4 d2 d4 | % 7
        d4 d4 cis4 d2 d4 | % 8
        a4 a4 a4 bes4 bes4 bes4 | % 9
        g4 bes2 a2 r4 }
    \break \repeat volta 2 {
        | %\barNumberCheck #10
        \time 2/2 
        bes4. ^\markup{ \bold {C} } a8 g2 | % 11
        f2 e4 e4 | % 12
        d2 e4 r4 
        \override Staff.TimeSignature.break-visibility = #all-invisible
}
    | % 13
    f4 ^\markup{ \bold {D} } g4 a4 bes4 ~ | % 14
    bes4 a2 g4 | % 15
    fis1 ^\fermata \bar "|."
    }

AltusMusic =  \relative d' {
    \clef "treble_8" \key d \minor \time 6/4 d4. c8 
    bes4 a4 d4 r4 | % 2
    d4. c8 bes4 a4 d4 r4 | % 3
    f2 f4 f2 c4 | % 4
    d2 d4 d2 d4 | % 5
    g,4 d'2 d2 r4 \break \repeat volta 2 {
        | % 6
        d4 d4 a'4 f4 bes4 a4 | % 7
        bes4 a2 f2 f4 | % 8
        d4 d4 d4 d4 d4 bes4 | % 9
        c4 d2 d2 r4 }
    \break \repeat volta 2 {
        | %\barNumberCheck #10
        \time 2/2  
        d4 bes4 c4. c8 | % 11
        a4 a'4 a4 a4 | % 12
        f4 g2 f8 [ e8 ] 
        \override Staff.TimeSignature.break-visibility = #all-invisible
}
    | % 13
    d4 d4 f4 f4 | % 14
    f2 d2 | % 15
    d1 ^\fermata \bar "|."
    }

TenorMusic =  \relative bes {
    \clef "treble_8" \key d \minor \time 6/4 
    bes4. a8 g4 fis4 fis4 r4 | % 2
    bes4. a8 g4 fis4 fis4 r4 | % 3
    bes2 bes4 a2 f4 | % 4
    g2 g4 f4 a2 | % 5
    g2 g4 fis2 r4 \break \repeat volta 2 {
        | % 6
        g'4 g4 e4 d4. e8 f4 | % 7
        g4 f4 e4 d2 d4 | % 8
        fis4 fis4 fis4 g4 g4 d4 | % 9
        e4 g2 fis2 r4 }
    \break \repeat volta 2 {
        | %\barNumberCheck #10
        \time 2/2  
        g4. f8 e4 r4 | % 11
        d4 d2 cis4 | % 12
        d2 d4 r4 
        \override Staff.TimeSignature.break-visibility = #all-invisible
}
    | % 13
    a4 bes4 c4 d4 | % 14
    c2 bes2 | % 15
    a1 ^\fermata \bar "|."
    }

BassusMusic =  \relative g {
    \clef "bass" \key d \minor \time 6/4 g2 g4 d4. e8 fis4 | % 2
    g2 g4 d4 d4 r4 | % 3
    bes'2 bes4 f4. g8 a4 | % 4
    g2 g4 d2 d4 | % 5
    e4 f2 d2 r4 \break \repeat volta 2 {
        | % 6
        g4 g4 a4 bes4. c8 d4 | % 7
        g,4 a4 a4 d,2 d4 | % 8
        d4 d4 d4 g4 g4 g4 | % 9
        c,4 g'2 d2 r4 }
    \break \repeat volta 2 {
        | %\barNumberCheck #10
        \time 2/2  
        g4 g4 c,2 | % 11
        d2 a'4 a4 | % 12
        bes2 g4 r4 
        \override Staff.TimeSignature.break-visibility = #all-invisible
}
    | % 13
    d4 g4 f4 bes,4 | % 14
    f'2 g2 | % 15
    d1 ^\fermata \bar "|."
    }

% Lyrics %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pls let me know if you have suggestions concerning the assignment of syllables to notes

Refrain = \lyricmode {\small
\override LyricText.font-shape = #'italic {Che fa- ral- la, che di- ral- la,
quan- do che la sa- pe- ra
che mi sia fra'?}
}

FirstVerse = \lyricmode {\small
\override LyricText.font-shape = #'normal {O quan- te fia te
di far- mi fra- te
in sua pre- sen- tia gli l'ho gui- ra;
Ma lei ri- de- a
e nol cre- de- a
che mi do- ves- se mai far- mi fra'
An- zi, ognhor si la- men- ta- va
con dir che la ber- ti- gi- ava,
E pur mi son fat- to fra'!}}

SecondVerse = \lyricmode {\small
Quan- "do ho" ben vis- to
che far a- quis- to
di lei non pos- so, son fat- to fra';
E fra- ti- cel- lo
dis- cal- cia- rel- lo,
che cos- i a- vea de- li- be- ra,
Do- ve in una pic- ciol cel- la
fac- ci- o vi- ta pove- rel- la,
Ob- ser- van- do cas- ti- ta.}

ThirdVerse = \lyricmode {\small
La po- ve- rel- la
sen- za fa- vel- la
la note el gior- no se ne sta- ra
Dis- ca- pi- glia- ta
tutta af- fin- na- ta
el stra- no ca- so lei pian- ge- ra
For- si poi che'I suo pen- sie- ro
in un qual- che mo- nas- tie- ro
a la fin la con- du- ra.}

% Scores %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% We need two separate score definitions -- 
%%  1st prints music w repeats folded, 2nd prints music + lyrics w repeats unfolded plus MIDI

%  First score for music printout with repeats folded
%  It has a layout command but no midi output
%  This version is for the instrumental musicians, it fits on one page

\bookpart{
\score {
    <<
            \new Staff <<
                \set Staff.instrumentName = "Cantus"
                \context Staff << 
                    \context Voice = "CantusMusic" { \CantusMusic }
                    >>
                >>

                \new Staff <<
                    \set Staff.instrumentName = "Altus"
                    \context Staff << 
                        \context Voice = "AltusMusic" { \AltusMusic }
                        >>
                    >>

                \new Staff <<
                    \set Staff.instrumentName = "Tenor"
                    \context Staff << 
                        \context Voice = "TenorMusic" { \TenorMusic }
                        >>
                    >>
                
            \new Staff <<
                \set Staff.instrumentName = "Bassus"
                \context Staff << 
                    \context Voice = "BassusMusic" { \BassusMusic }
                    >>
                >>
        >>
    \layout {}
    }
}

% Second score prints music with lyrics below the Cantus staff -- all repeats unfolded
% MIDI output included for this one
% The 3rd verse is listed here before the second because verses stack from the bottom up
% The verses will print in the correct order -- this is a workaround for a Lilypond oddity

\bookpart{
    \score {
    \unfoldRepeats {
 \new ChoirStaff <<
    <<
            \new Staff <<
%                \set Staff.shortInstrumentName = "C"
                \set Staff.instrumentName = "Cantus"
                \context Staff << 
                    \context Voice = "Cantus" { \CantusMusic }
                    >>
                >>
                \new Lyrics = "Words" \lyricsto "Cantus" {\Refrain  <<
        \FirstVerse
	\new Lyrics \with { alignBelowContext = #"Words" } \ThirdVerse
	\new Lyrics \with { alignBelowContext = #"Words" } \SecondVerse
  	    >>
	}

                \new Staff <<
                    \set Staff.instrumentName = "Altus"
%                    \set Staff.shortInstrumentName = "A"
                    \context Staff << 
                        \context Voice = "Altus" { \AltusMusic }
                        >>
                    >>

                \new Staff <<
                    \set Staff.instrumentName = "Tenor"
%                    \set Staff.shortInstrumentName = "T"
                    \context Staff << 
                        \context Voice = "Tenor" { \TenorMusic }
                        >>
                    >>
                
            \new Staff <<
                \set Staff.instrumentName = "Bassus"
%                \set Staff.shortInstrumentName = "B"
                \context Staff << 
                    \context Voice = "Bassus" { \BassusMusic }
                    >>
                >>
        >>
>>        }
    \layout {}
    \midi {}
    }
}
