.PHONY: all
#all: main.pdf main-slides.pdf
all: main.pdf

LATEXFLAGS+=	-shell-escape

main.pdf: main.tex
main-slides.pdf: main-slides.tex


.PHONY: clean
clean:
	${RM} main.pdf main-slides.pdf


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
