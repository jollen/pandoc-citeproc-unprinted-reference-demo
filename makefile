broken:
	pandoc \
		--from markdown \
		--to latex \
		--bibliography references.bib \
		--csl references.csl \
		--output pandoc-citeproc-unprinted-reference-demo.tex \
		--standalone \
		pandoc-citeproc-unprinted-reference-demo.md
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf pandoc-citeproc-unprinted-reference-demo.tex

