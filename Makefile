PDFLATEX:=pdflatex
BIBTEX:=bibtex


TEX_SRC=project_proposal.tex

${TEX_SRC:.tex=.pdf}:%.pdf: %.tex %.bib LDADiagram.png
	$(PDFLATEX) $<
	$(BIBTEX) ${<:.tex=}
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	rm -f ${TEX_SRC:.tex=.pdf} *.out *.aux *.log *.pdf *.bbl *.blg


.PHONY: clean
