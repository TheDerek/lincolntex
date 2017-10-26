report: report.tex
	latexmk -pdf report.tex
	
show: report
	xdg-open report.pdf

count:
	texcount report.tex

countlive:
	watch -n1 texcount report.tex

clean:
	latexmk -C
	rm -f report.bbl
	rm -f report.bib.bak
	rm -f report.run.xml
