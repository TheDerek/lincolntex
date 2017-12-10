report: report.tex
	latexmk -pdf report.tex

live:
	latexmk -pdf -pvc

show: report
	xdg-open report.pdf

count:
	texcount report.tex

countlive:
	watch -n1 texcount report.tex

edit:
	nvim-qt report.tex
	make show
	make live

clean:
	latexmk -C
	rm -f report.bbl
	rm -f report.bib.bak
	rm -f report.run.xml
