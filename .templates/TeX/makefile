DIR=build/
MAINTEX=paper.tex
BIB=uni.bib
TARGET=$(DIR)$(MAINTEX:.tex=.pdf)

# build
all: $(TARGET)

# build order
$(TARGET): $(SOURCES) $(BIB) $(PICTURES)
	@mkdir -p ${DIR}
	# first pdf compile process
	@pdflatex -output-directory=${DIR} ${MAINTEX}
	# first bibtex compile process
	@bibtex ${DIR}$(MAINTEX:.tex=)
	# second pdf compile process
	@pdflatex -output-directory=${DIR} ${MAINTEX}
	# third pdf compile process
	@pdflatex -output-directory=${DIR} ${MAINTEX}

# delete temp files
clean:
	@rm -rf $(DIR)