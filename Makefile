LATEXMK = latexmk
LATEXMK_FLAGS = -pdf -interaction=nonstopmode -halt-on-error

all: resume.pdf

resume.pdf: resume.tex
	$(LATEXMK) $(LATEXMK_FLAGS) resume.tex

watch:
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc resume.tex

# Remove intermediate build files, keep the PDF
clean:
	$(LATEXMK) -c resume.tex

# Remove everything latexmk generated, including the PDF
distclean:
	$(LATEXMK) -C resume.tex

# One-time setup: use the versioned hooks in .githooks
hooks:
	git config core.hooksPath .githooks

.PHONY: all watch clean distclean hooks
