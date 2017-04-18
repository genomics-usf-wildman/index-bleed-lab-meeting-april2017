#!/usr/bin/make -f

all: $(foreach fig,1 2a 2b 2c 3a 3b 3c 4 5 6 7 8 9 10 11				\
S2,figure_$(fig).png) $(foreach  a,$(shell seq 1 10),figure_12_$(a).png)	\
paper_frontpage.png

paper_images: paper.pdf
	pdfimages -j -png $< paper
	touch $@

paper.pdf:
	wget -O $@ "http://biorxiv.org/content/early/2017/04/09/125724.full.pdf"

paper_frontpage.png: paper.pdf
	convert -trim -density 300 -depth 8 -quality 85 -crop '2100x1600+200+100' '$<[0]' $@

figure_1.png: paper.pdf
	convert -trim -density 300 -depth 8 -quality 85 '$<[16]' $@

figure_2a.png: paper.pdf
	convert -trim -density 300 -depth 8 -quality 85 -crop '2400x1200+0+0' '$<[17]' $@

figure_2b.png: paper.pdf
	convert -trim -density 300 -depth 8 -quality 85 -crop '2400x1000+0+1100' '$<[17]' $@

figure_2c.png: paper.pdf
	convert -trim -density 300 -depth 8 -quality 85 -crop '2400x1200+0+2100' '$<[17]' $@

figure_3a.png: paper.pdf paper_images
	convert -flip paper-011.png $@

figure_3b.png: paper.pdf paper_images
	convert -flip paper-012.png $@

figure_3c.png: paper.pdf paper_images
	convert -flip paper-012.png $@

figure_4.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[19]' $@

figure_5.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[20]' $@

figure_6.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[21]' $@

figure_7.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[22]' $@

figure_8.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[23]' $@

figure_9.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[24]' $@

figure_10.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[25]' $@

figure_11.png: paper.pdf
	convert -density 300 -trim -depth 8 -quality 85 '$<[26]' $@

figure_12_%.png: paper.pdf paper_images
	convert -trim paper-0$$(( $* + 44)).png $@


figure_S2.png: paper.pdf paper_images
	convert -density 300 -trim -depth 8 -quality 85 -crop '3100x1200+0+900' '$<[28]' $@



