SOURCES = $(patsubst %.ly,%.pdf,$(wildcard *.ly))

all: $(SOURCES)

%.pdf: %.ly
	lilypond $<

clean:
	rm -f *.pdf
