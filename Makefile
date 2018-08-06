REALOBJ = ptmpls.ins pdef.sty pnote.cls Readme.md
SEMIOBJ = ptmpls.idx ptmpls.glo
POSTOBJ = ptmpls.ind ptmpls.gls
TEMPOBJ = ptmpls.aux ptmpls.hd ptmpls.ilg  ptmpls.ins ptmpls.log ptmpls.out\
	ptmpls.toc

.PHONY:
all: ptmpls.pdf

ptmpls.pdf: $(REALOBJ) $(POSTOBJ)
	lualatex ptmpls.dtx

ptmpls.ind: ptmpls.idx
	makeindex -s gind.ist ptmpls.idx

ptmpls.gls: ptmpls.glo
	makeindex -s gglo.ist -o ptmpls.gls ptmpls.glo

.SECONDEXPANSION:
$(REALOBJ) $(SEMIOBJ): ptmpls.dtx
	lualatex ptmpls.dtx

.PHONY:
pack: ptmpls.dtx ptmpls.pdf $(REALOBJ)
	rm -f ptmpls.zip
	zip -r ptmpls.zip ptmpls.dtx ptmpls.pdf $(REALOBJ)

.PHONY:
clean:
	rm -f $(REALOBJ) $(SEMIOBJ) $(POSTOBJ) $(TEMPOBJ)

# Deprecated, for direct usage
.PHONY:
extract:
	lualatex ptmpls.dtx

.PHONY:
index:
	makeindex -s gind.ist ptmpls.idx
	makeindex -s gglo.ist -o ptmpls.gls ptmpls.glo
