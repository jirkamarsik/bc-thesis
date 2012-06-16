all: PBML_article.pdf

# LaTeX je potreba spustit dvakrat, aby spravne spocital odkazy
PBML_article.pdf: PBML_article.tex tex/new-intro.tex \
	   tex/new-previous-work.tex tex/new-system.tex tex/new-eval.tex \
           tex/new-outro.tex sbd.bib maxent.bib seg.bib web.bib	data.bib \
	   software.bib img/decisionpoints.eps
	xelatex $<
	bibtex PBML_article.aux
	xelatex $<
	xelatex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.out *.bbl *.blg tex/*.aux
