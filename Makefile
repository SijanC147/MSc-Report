all: build

build: fyp.pdf


fyp.pdf: fyp.tex references.bib
	pdflatex fyp
	bibtex fyp
	bibtex fyp
	pdflatex fyp
	pdflatex fyp
	evince main.pdf

clean:
	rm -f *.aux *.log *.bbl *.blg *.mx1
	rm -f fig/*.aux fig/*.log fig/*.bbl fig/*.blg fig/*.mx1

purge: clean
	rm -f fyp.pdf


