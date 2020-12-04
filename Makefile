.PHONY: all
#all: main.pdf main-slides.pdf
all: main.pdf

LATEXFLAGS+=	-shell-escape

SRC+= 			main.bib

main.pdf: main.tex ${SRC}
main-slides.pdf: main-slides.tex ${SRC}


.PHONY: clean
clean:
	${RM} main.pdf main-slides.pdf


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
