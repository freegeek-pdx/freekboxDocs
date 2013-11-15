
all:
	mkdir -p build
	rsync  -r --delete common/ build
	xsltproc -xinclude -o build/index.html xsl/freegeek.xsl xml/index.xml

pdf:
	mkdir -p pdf-build
	xsltproc -xinclude -o pdf-build/test.pdf xsl/pdf.xsl xml/index.xml
	
single:
	mkdir -p build
	rsync -r --delete common/ build
	xsltproc -xinclude -o build/$(PAGE) xsl/freegeek.xsl xml/$(PAGE).xml
	
install:
	rsync -r --delete build/ /var/www/freekboxDocs

clean:
	-rm -r build pdf-build
