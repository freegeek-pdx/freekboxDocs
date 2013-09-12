<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	
	
	<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl/xhtml/chunk.xsl"/>
	
	<xsl:param name="toc.section.depth" select="1"/>
	<xsl:param name="html.stylesheet" select="'freegeek-book.css'"/>
	<xsl:param name="chunker.output.indent" select="'yes'"/>
	<xsl:param name="chunk.section.depth" select="0" />
	
	<xsl:template match="br">
	  <br />
	</xsl:template>
	
</xsl:stylesheet>
