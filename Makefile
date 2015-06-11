export PATH:=/sbin:/usr/sbin:${PATH}

view:
	mkdir -p dist
	pdflatex --output-directory dist referentie.tex; xpdf dist/referentie.pdf

prepare:
	sudo apt-get install texlive texlive-latex-extra xpdf 

clean:
	rm -rf dist/*.aux dist/*.log dist/*.toc dist/*.dvi dist/*.out dist/*.tmp
	mkdir -p dist
