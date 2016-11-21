all: pdf

pdf: *.tex references.bib
	pdflatex cvtest
	bibtex cvtest
	pdflatex cvtest
	rm -f *.aux *.log *.lot *.lof *.out *.bbl *.blg *.toc

dvi: cvtest.tex
	latex report.tex	

ps: dvi
	dvips -tlandscape -ta4 -O0cm,0cm -o report.ps -ta4 cvtest.dvi

clean:
	rm -f *.aux *.log *.lot *.lof *.out *.bbl *.blg *.toc cvtest.pdf

release:
	tar -zcvf newrelease.tgz *.tex img/ Makefile named.sty references.bib named.bst


