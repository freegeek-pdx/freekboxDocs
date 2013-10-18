
all:
	mkdir -p build
	rsync  -r --delete common/ build
	xsltproc -xinclude -o build/index.html xsl/freegeek.xsl xml/index.xml

install:
	rsync -r --delete build/ /var/www/freekboxDocs
