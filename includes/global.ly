\version "2.14.0"

solo = \mark \markup { \small SOLO }
tutti = \mark \markup { \small TUTTI }

#(set-default-paper-size "a4")

\paper {
	#(set-paper-size "a4")
	head-separation = 1 \cm
	line-width = 17 \cm
	top-margin = 2 \cm
	bottom-margin = 2 \cm
	indent = 0 \cm
	obsolete-between-system-padding=#2  system-system-spacing
	#'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
}
noindent = ##t

globala = {
	\set Score.skipBars = ##t
	\crescTextCresc
	\override TupletNumber #'stencil = ##f
	\override TupletBracket #'bracket-visibility = ##f
	#(set-accidental-style 'modern)
	\override MultiMeasureRest #'expand-limit = 1
	\override Score.RehearsalMark #'padding = #3
	\override Score.RehearsalMark #'self-alignment-X = #left
	\override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
	\mark \markup {\override #'(baseline-skip . 3) \column { "Allegro" \small TUTTI }}
	\override Score.BarNumber #'break-visibility = #'#(#f #t #t)
	\override Score.BarNumber  #'stencil
		= #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
	\set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
}

globalb = {
	\set Score.skipBars = ##t
	\crescTextCresc
	\override TupletNumber #'stencil = ##f
	\override TupletBracket #'bracket-visibility = ##f
	#(set-accidental-style 'modern)
	\override MultiMeasureRest #'expand-limit = 1
	\override Score.RehearsalMark #'padding = #4  \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
	\mark \markup {\override #'(baseline-skip . 3) \column { "Adagio" \small TUTTI }}
	\time 12/8
	\override Score.BarNumber #'break-visibility = #'#(#f #t #t)
	\override Score.BarNumber  #'stencil
		= #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
	\set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
}

globalc = {
	\set Score.skipBars = ##t
	\crescTextCresc
	\override TupletNumber #'stencil = ##f
	\override TupletBracket #'bracket-visibility = ##f
	#(set-accidental-style 'modern)
	\override MultiMeasureRest #'expand-limit = 1 \override Score.RehearsalMark #'self-alignment-X = #left
	\override Score.RehearsalMark #'padding = #3  \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
	\mark \markup {\override #'(baseline-skip . 3) \column { "Allegro non tanto" \small TUTTI }}
	\time 3/4
	\override Score.BarNumber #'break-visibility = #'#(#f #t #t)
	\override Score.BarNumber  #'stencil
		= #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
	\set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
}

forte = \markup {
	\center-align \concat {
		\bold { \italic ( }
		\dynamic f \bold { \italic ) }
	}
}

mezzoforte = \markup {
	\center-align \concat {
		\bold { \italic ( }
		\dynamic mf \bold { \italic ) }
	}
}

mezzopiano = \markup {
	\center-align \concat {
		\bold { \italic ( }
		\dynamic mp \bold { \italic ) }
	}
}

piano = \markup {
	\center-align \concat {
		\bold { \italic ( }
		\dynamic p \bold { \italic ) }
	}
}

pianissimo = \markup {
	\center-align \concat {
		\bold { \italic ( }
		\dynamic pp \bold { \italic ) }
	}
}
