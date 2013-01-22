\version "2.14.0"

solo = \mark \markup { \small SOLO }
tutti = \mark \markup { \small TUTTI }

#(set-default-paper-size "a4")

globala = {
	\set Score.skipBars = ##t
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
