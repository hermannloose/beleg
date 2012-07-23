all: thesis

single:
	xelatex paper.tex

paper.pdf: *.tex *.bib
	xelatex paper.tex
	bibtex paper.aux
	xelatex paper.tex
	xelatex paper.tex

thesis: paper.pdf

push: paper.pdf
	scp paper.pdf hloose@os.inf.tu-dresden.de:public_html/Thesis.pdf

clean:
	rm paper.aux
	rm paper.bbl
	rm paper.blg
	rm paper.log
	rm paper.nav
	rm paper.out
	rm paper.snm
	rm paper.toc
