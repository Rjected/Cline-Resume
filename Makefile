.PHONY: all personal-info

all: personal-info
	scripts/latexrun dan-cline-resume.tex

personal-info:
	scripts/create-personal-info

%.pdf: personal-info
	scripts/latexrun dan-cline-resume.tex -o $@

clean:
	scripts/latexrun --clean-all

