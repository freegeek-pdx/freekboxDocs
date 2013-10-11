
freegeek:
	mkdir -p build
	rsync  -r --delete common/ build
	xsltproc -xinclude -o build/index.html xsl/freegeek.xsl xml/index.xml

server:
	sudo mkdir -p /var/www/freekboxDocs
	sudo rsync -r --delete common/ /var/www/freekboxDocs
	sudo xsltproc -xinclude -o /var/www/freekboxDocs/index.html xsl/freegeek.xsl xml/index.xml
