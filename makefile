CC = pdflatex
SRCDIR = src
FILES := $(wildcard $(SRCDIR)/*.tex)
TARGET = wiki.pdf


$(TARGET): ${FILES}
	$(CC) ${FILES}
	$(CC) ${FILES} > /dev/null 2>&1

	@rm *.aux *.log *.out *.toc

fc:
	rm $(TARGET)
