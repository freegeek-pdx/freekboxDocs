
freegeek:
	mkdir -p build
	rsync  -r --delete common/ build
	xsltproc -xinclude -o build/index.html xsl/freegeek.xsl xml/index.xml

server:
	mkdir -p /var/www/freekboxDocs
	rsync -r --delete common/ /var/www/freekboxDocs
	xsltproc -xinclude -o /var/www/freekboxDocs/index.html xsl/freegeek.xsl xml/index.xml
