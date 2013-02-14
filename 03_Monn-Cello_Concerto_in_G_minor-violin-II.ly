\version "2.14.0"

\include "includes/global.ly"

\header {
	title = "Concerto per Violoncello, Archi e Basso Continuo"
	tagline = ""
	instrument = "Violon II"
	composer = \markup \center-column { "Matthias Georg Monn" }
}

\include "parts/02_violinII/violinII_1.ly"
\include "parts/02_violinII/violinII_2.ly"
\include "parts/02_violinII/violinII_3.ly"

\book {
	\score { \violinIIa }
	\score { \violinIIb }
	\score { \violinIIc }
}
