all: paper.pdf

# Vyroba PDF primo z DVI by byla prijemnejsi, ale vetsina verzi dvipdfm nici obrazky
# thesis.pdf: thesis.dvi
#	dvipdfm -o $@ -p a4 -r 600 $<

paper.pdf: paper.ps
	ps2pdf $< $@

paper.ps: paper.dvi
	dvips -o $@ -D600 -t a4 $<

img/work-units.eps: work-units.gnuplot img/plot-data
	gnuplot work-units.gnuplot

# LaTeX je potreba spustit dvakrat, aby spravne spocital odkazy
paper.dvi: paper.tex tex/frontmatter.tex tex/intro.tex tex/survey.tex\
            tex/impl.tex tex/eval.tex tex/outro.tex img/all-parts.eps\
            img/train-parts.eps img/tokenize-parts.eps\
            sbd.bib maxent.bib seg.bib web.bib img/decisionpoints.eps\
            img/quexexample.eps img/work-units.eps img/work-units.tex
	latex $<
	bibtex paper
	latex $<
	latex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.blg *.bbl *.out tex/*.aux paper.ps
	rm -f img/work-units.eps img/work-units.tex
