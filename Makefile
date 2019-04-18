TDATE = April 10, 2019
NDATE = 2019\/04\/10
VER = 1.3.0

REALOBJS = ptmpls.ins pdef.sty pnote.cls Readme.md
AUXOBJS = ptmpls.idx ptmpls.glo
INDEXOBJS = ptmpls.ind ptmpls.gls
TEMPOBJS = ptmpls.aux ptmpls.hd ptmpls.ilg  ptmpls.ins ptmpls.log ptmpls.out\
	ptmpls.toc

.PHONY: all
all: ptmpls.pdf

ptmpls.dtx: $(widecard ptmpls.orig)
	cp ptmpls.orig ptmpls.dtx
	sed -i 's/<!TDATE>/$(TDATE)/g' ptmpls.dtx
	sed -i 's/<!NDATE>/$(NDATE)/g' ptmpls.dtx
	sed -i 's/<!VER>/$(VER)/g' ptmpls.dtx

ptmpls.pdf: $(REALOBJS) $(INDEXOBJS)
	lualatex ptmpls.dtx
	lualatex ptmpls.dtx

ptmpls.ind: | ptmpls.idx
	makeindex -s gind.ist ptmpls.idx

ptmpls.gls: | ptmpls.glo
	makeindex -s gglo.ist -o ptmpls.gls ptmpls.glo

.SECONDEXPANSION:
$(REALOBJS) $(AUXOBJS): ptmpls.dtx
	lualatex ptmpls.dtx

.PHONY: pack
pack: ptmpls.dtx ptmpls.pdf $(REALOBJS)
	rm -f ptmpls.zip
	zip -r ptmpls.zip ptmpls.dtx ptmpls.pdf $(REALOBJS)

.PHONY: clean
clean:
	rm -f $(REALOBJS) $(AUXOBJS) $(INDEXOBJS) $(TEMPOBJS)
