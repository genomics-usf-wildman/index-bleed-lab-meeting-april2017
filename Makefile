#!/usr/bin/make -f

all: wildman_index_bleed_april_2017.pdf

R ?= R

%.pdf: %.svg
	inkscape -A $@ $<
	pdfcrop $@
	mv $(dir $@)*-crop.pdf $@

%.png: %.svg
	inkscape -e $@ -d 300 $<

%.tex: %.Rnw
	$(R) --encoding=utf-8 -e "library('knitr'); knit('$<')"

wildman_index_bleed_april_2017.pdf: wildman_index_bleed_april_2017.tex index_switching_spread figures

%.pdf: %.tex $(wildcard *.bib) $(wildcard *.tex)
	latexmk -f -pdf -pdflatex='xelatex -interaction=nonstopmode %O %S' -bibtex -use-make $<

