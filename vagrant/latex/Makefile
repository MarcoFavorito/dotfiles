# Makefile for LaTeX template.

PDF=main.pdf
VIEWER=$(shell which xdg-open open | head -n 1)

all: ${PDF}

%.pdf: %.tex
	latexmk -pvc -pdf $< --silent
	${VIEWER} $@ &

clean:
	latexmk -C
	-rm -fr ${PDF} main.run.xml *.bbl *.nlo
    

