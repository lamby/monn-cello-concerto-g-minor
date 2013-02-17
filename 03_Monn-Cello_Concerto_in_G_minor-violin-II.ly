\version "2.14.0"

\include "includes/global.ly"

\header {
	title = "Concerto per Violoncello, Archi e Basso Continuo"
	tagline = ""
	composer = \markup \center-column { "Matthias Georg Monn" }
	instrument = "Violon II"
}

\include "parts/02_violinII/violinII_1.ly"
\include "parts/02_violinII/violinII_2.ly"
\include "parts/02_violinII/violinII_3.ly"

\book {
	\score { \violinIIa }
	\pageBreak
	\score { \violinIIb }
	\pageBreak
	\score { \violinIIc }
}
