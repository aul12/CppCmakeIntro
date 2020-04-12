RUBBER=rubber
DOT=dot
VIEWER=xdg-open
SCREEN=screen
PRESENTER=pdfpc

all: part1.pdf part2.pdf

part1.pdf: build.pdf part1.tex
	$(RUBBER) --unsafe -d part1.tex

part2.pdf: part2.tex
	$(RUBBER) --unsafe -d part2.tex

build.pdf: build.dot
	$(DOT) -T pdf -o build.pdf build.dot

show1: part1.pdf
	$(SCREEN) -dm $(VIEWER) part1.pdf 2> /dev/null

show2: part2.pdf
	$(SCREEN) -dm $(VIEWER) part2.pdf 2> /dev/null

present: main.pdf
	$(PRESENTER) main.pdf

clean:
	rm -f *.toc
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.bbl  
	rm -f *.blg  
	rm -f *-blx.bib  
	rm -f *.fdb_latexmk
	rm -f *.xml
	rm -f *.bcf
	rm -f build.png
	rm -rf _minted-main
	rm -f *.snm
	rm -f *.nav

clean_all: clean
	rm -f *.pdf
	rm -f *.pdfpc
