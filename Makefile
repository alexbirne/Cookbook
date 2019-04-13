all:
	# $(wildcard Rezepte/*.tex)
	ls Rezepte/*.tex | awk '{printf "\\input{%s}\n\\newpage\n", $$1}' > inputs.tex
	lualatex main.tex
	lualatex main.tex
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~ *.synctex.gz *.bcf *.run.xml *.sta inputs.tex Rezepte/*.aux
	cp main.pdf Rezeptbuch.pdf

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~ *.synctex.gz *.bcf *.run.xml *.sta main.pdf inputs.tex Rezepte/*.aux

clean-all:
	rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~ *.synctex.gz *.bcf *.run.xml main.pdf Rezeptbuch.pdf inputs.tex Rezepte/*.aux

