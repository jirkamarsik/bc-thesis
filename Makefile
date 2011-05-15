all: thesis.pdf

# Vyroba PDF primo z DVI by byla prijemnejsi, ale vetsina verzi dvipdfm nici obrazky
# thesis.pdf: thesis.dvi
#	dvipdfm -o $@ -p a4 -r 600 $<

thesis.pdf: thesis.ps
	ps2pdf $< $@

thesis.ps: thesis.dvi
	dvips -o $@ -D600 -t a4 $<

# LaTeX je potreba spustit dvakrat, aby spravne spocital odkazy
thesis.dvi: thesis.tex tex/frontmatter.tex tex/introduction.tex tex/conclusion.tex tex/bibliography.tex tex/chap1.tex tex/chap2.tex tex/examples.tex
	latex $<
	latex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.out tex/*.aux thesis.ps 
