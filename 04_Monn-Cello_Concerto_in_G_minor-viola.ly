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
	instrument = "Viola"
	composer = \markup \center-column { "Matthias Georg Monn" }
}

\include "parts/03_viola/viola_1.ly"
\include "parts/03_viola/viola_2.ly"
\include "parts/03_viola/viola_3.ly"

\book {
	\score { \violaa }
	\score { \violab }
	\score { \violac }
}
