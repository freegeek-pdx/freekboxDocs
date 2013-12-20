freekboxDocs
============

Howtos and guides for Free Geek Users
=====================================

freekboxDocs is a system to create documents in Docbook XML format and 
convert them into other more readable formats. HTML, EPUB, and PDF are
the main targets.

Dependencies
============

 - make (for managing the conversion process)
 - docbook-xsl
 - docbook-xml
 - xsltproc (The tool that does the actual converting)
 
 
Installation
============

Installation is used loosely with this project. What you are doing is
converting XML documentation to a self contained website. This website
can be viewed locally or uploaded to a web server. GNU Makefiles are
used to ease building of HTML and other formats.
Here are the targets commonly used:

 - default (no arguments to 'make'): build an HTML website in the
   'build' directory.
 - pdf: build a pdf, instead of a website.
 - clean: Delete old build files.

