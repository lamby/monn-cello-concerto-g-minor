\version "2.14.0"

\include "includes/global.ly"

\header {
	title = "Concerto per Violoncello, Archi e Basso Continuo"
	tagline = ""
	instrument = "Violoncello concertino"
	composer = \markup \center-column { "Matthias Georg Monn" }
}

\include "parts/00_solo_cello/solo_cello_1.ly"
\include "parts/00_solo_cello/solo_cello_2.ly"
\include "parts/00_solo_cello/solo_cello_3.ly"

\book {
	\score { \solocelloa }
	\score { \solocellob }
	\score { \solocelloc }
}
