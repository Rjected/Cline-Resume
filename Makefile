all:
	scripts/latexrun dan-cline-resume.tex

%.pdf:
	scripts/latexrun dan-cline-resume.tex -o $@

clean:
	scripts/latexrun --clean-all

