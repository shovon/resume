PDF_LATEX_FLAGS = --interaction=nonstopmode

all: resume cover-letter

cover-letter: cover-letter.tex include/*.tex
	pdflatex cover-letter.tex $(PDF_LATEX_FLAGS)

resume: resume.tex include/*.tex
	pdflatex resume.tex $(PDF_LATEX_FLAGS)

clean:
	rm -f *.aux *.log *.pdf x.tex include/*.aux