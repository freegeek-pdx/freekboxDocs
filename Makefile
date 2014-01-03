SRCDIR=`pwd`

all:
	mkdir -p build
	rsync  -r --delete common/ build
	xsltproc -xinclude -o build/index.html xsl/freegeek.xsl xml/freekboxDocs.xml

pdf:
	mkdir -p pdf-build
	xsltproc -xinclude -o pdf-build/test.pdf xsl/pdf.xsl xml/freekboxDocs.xml

.PHONY: epub
epub:
	mkdir -p build-epub
	echo $(SRCDIR)
	SRCDIR=$(PWD) xmlto -o build-epub $(PWD)/epub/epub xml/freekboxDocs.xml
	
#epub:
#	mkdir -p build-epub
#	xsltproc -xinclude -o build-epub/book.epub xsl/epub.xsl xml/index.xml
#	cp -r common/images build-epub/OEBPS/
#	cd epub && zip -0Xq ../build-epub/freekboxDocs.epub mimetype
#	cd build-epub && zip -Xr9Dq freekboxDocs.epub META-INF OEBPS

single:
	mkdir -p build
	rsync -r --delete common/ build
	xsltproc -xinclude -o build/$(PAGE) xsl/freegeek.xsl xml/$(PAGE).xml
	
install:
	rsync -r --delete build/ /var/www/freekboxDocs

clean:
	-rm -r build pdf-build build-epub
