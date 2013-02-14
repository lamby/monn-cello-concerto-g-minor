\version "2.14.0"

\include "includes/global.ly"

\header {
	title = "Concerto per Violoncello, Archi e Basso Continuo"
	tagline = ""
	composer = \markup \center-column { "Matthias Georg Monn" }
	instrument = "Continuo"
}

\include "parts/04_bass/bass_1.ly"
\include "parts/04_bass/bass_2.ly"
\include "parts/04_bass/bass_3.ly"

\book {
\score { \bassa }
\score { \bassb }
\score { \bassc }
}
