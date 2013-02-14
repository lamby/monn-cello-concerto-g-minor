\version "2.14.0"

\include "includes/global.ly"

#(set-global-staff-size 16)

\include "parts/00_solo_cello/solo_cello_1.ly"
\include "parts/00_solo_cello/solo_cello_2.ly"
\include "parts/00_solo_cello/solo_cello_3.ly"

\include "parts/01_violinI/violinI_1.ly"
\include "parts/01_violinI/violinI_2.ly"
\include "parts/01_violinI/violinI_3.ly"

\include "parts/02_violinII/violinII_1.ly"
\include "parts/02_violinII/violinII_2.ly"
\include "parts/02_violinII/violinII_3.ly"

\include "parts/03_viola/viola_1.ly"
\include "parts/03_viola/viola_2.ly"
\include "parts/03_viola/viola_3.ly"

\include "parts/04_bass/bass_1.ly"
\include "parts/04_bass/bass_2.ly"
\include "parts/04_bass/bass_3.ly"

\layout {
	\context {
		\Score
		\override BarNumber #'extra-offset = #'(0 . 2)
		\override BarNumber #'font-size = #1
		\override InstrumentName #'space-alist = #'((left-edge extra-space . 2.0))
	}

	\context {
		\Staff
		\override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
	}

	\context {
		\StaffGroup
		\override SystemStartBracket #'collapse-height = #1
	}
}

\book {
	\header {
		title = "Concerto per Violoncello, Archi e Basso Continuo"
		tagline = ""
		instrument = " "
		composer = \markup \center-column { "Matthias Georg Monn" }
	}

	\score {
		\relative << <<
			\new StaffGroup <<
				\new Staff << {
					\set Staff.instrumentName = #"Solo Violoncello"
					\set Staff.shortInstrumentName = #"Solo Vlc."
					\solocelloa
				} >>
			>>

			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff << {
						\set Staff.instrumentName = #"Violin I"
						\set Staff.shortInstrumentName = #"Vno. I"
						\violinIa
					} >>
					\new Staff << {
						\set Staff.instrumentName = #"Violin II"
						\set Staff.shortInstrumentName = #"Vno. II"
						\violinIIa
					} >>
				>>

				\new Staff << {
					\set Staff.instrumentName = #"Viola"
					\set Staff.shortInstrumentName = #"Vla."
					\violaa
				} >>

				\new Staff << {
					\set Staff.instrumentName = #"Basso continuo"
					\set Staff.shortInstrumentName = #"Basso"
					\bassa
				} >>
			>>
		>> >>
	}

	\score {
		\relative << <<
			\new StaffGroup <<
				\new Staff << {
					\set Staff.shortInstrumentName = #"Solo Vlc."
					\solocellob
				} >>
			>>

			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff << {
						\set Staff.shortInstrumentName = #"Vno. I"
						\violinIb
					} >>
					\new Staff << {
						\set Staff.shortInstrumentName = #"Vno. II"
						\violinIIb
					} >>
				>>

				\new Staff << {
					\set Staff.shortInstrumentName = #"Vla."
					\violab
				} >>

				\new Staff << {
					\set Staff.shortInstrumentName = #"Basso"
					\bassb
				} >>

			>>
		>> >>
	}

	\score {
		\relative << <<
			\new StaffGroup <<
				\new Staff << {
					\set Staff.shortInstrumentName = #"Solo Vlc."
					\solocelloc
				} >>
			>>
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff << {
						\set Staff.shortInstrumentName = #"Vno. I"
						\violinIc
					} >>
					\new Staff << {
						\set Staff.shortInstrumentName = #"Vno. II"
						\violinIIc
					} >>
				>>

				\new Staff << {
					\set Staff.shortInstrumentName = #"Vla."
					\violac
				} >>

				\new Staff << {
					\set Staff.shortInstrumentName = #"Basso"
					\bassc
				} >>
			>>
		>> >>
	}
}
