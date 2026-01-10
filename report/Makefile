MAIN = main

LATEXMK=latexmk -pdfxe -pdfxelatex="xelatex --interactionmode=nonstop -shell-escape" -bibtex

.PHONY: all $(MAIN).pdf watch clean mrproper


all: $(MAIN).pdf

$(MAIN).pdf:
	@$(LATEXMK) $(MAIN.tex)

watch:
	$(LATEXMK) -pvc -view=none $(MAIN.tex)

clean:
	@latexmk -c > /dev/null
	@rm -f $(MAIN).bbl

mrproper: clean
	@rm -fR _minted
	@rm -rf *.minted
