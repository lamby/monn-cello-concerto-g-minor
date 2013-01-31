\version "2.14.0"

\include "includes/global.ly"

\paper {
	#(set-paper-size "a4")
	obsolete-between-system-padding = #1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
	ragged-bottom=##f
	ragged-last-bottom=##f
}

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
