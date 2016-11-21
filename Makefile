all: pdf

pdf: *.tex 
	pdflatex cv
	pdflatex cv
	rm -f *.aux *.log *.lot *.lof *.out *.bbl *.blg *.toc

dvi: cv.tex
	latex cv.tex	

ps: dvi
	dvips -tlandscape -ta4 -O0cm,0cm -o report.ps -ta4 cv.dvi

clean:
	rm -f *.aux *.log *.lot *.lof *.out *.bbl *.blg *.toc cv.pdf

release:
	tar -zcvf newrelease.tgz *.tex img/ Makefile named.sty named.bst


