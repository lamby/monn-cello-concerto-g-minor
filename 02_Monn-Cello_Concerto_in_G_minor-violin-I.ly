\version "2.14.0"

\include "includes/global.ly"

\header {
	title = "Concerto per Violoncello, Archi e Basso Continuo"
	tagline = ""
	instrument = "Violon I"
	composer = \markup \center-column { "Matthias Georg Monn" }
}

\include "parts/01_violinI/violinI_1.ly"
\include "parts/01_violinI/violinI_2.ly"
\include "parts/01_violinI/violinI_3.ly"

\book {
	\score { \violinIa }
	\score { \violinIb }
	\score { \violinIc }
}
