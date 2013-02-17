\version "2.14.0"

\include "includes/global.ly"

\header {
	title = "Concerto per Violoncello, Archi e Basso Continuo"
	tagline = ""
	instrument = "Viola"
	composer = \markup \center-column { "Matthias Georg Monn" }
}

\include "parts/03_viola/viola_1.ly"
\include "parts/03_viola/viola_2.ly"
\include "parts/03_viola/viola_3.ly"

\book {
	\score { \violaa }
	\pageBreak
	\score { \violab }
	\pageBreak
	\score { \violac }
}
