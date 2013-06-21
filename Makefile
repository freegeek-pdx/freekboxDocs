


freegeek:
	mkdir -p build
	cp -r common/freegeek-book.css common/images build/
	xsltproc -xinclude -o build/index.html xsl/freegeek.xsl xml/index.xml

