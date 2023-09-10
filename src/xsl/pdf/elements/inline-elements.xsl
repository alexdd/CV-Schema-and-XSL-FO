<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="sub | sup | i | b | u | name">
		<fo:inline>
			<xsl:call-template name="inline-styles"/>
			<xsl:apply-templates/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="url">
		<fo:basic-link external-destination="url({@address})">
			<xsl:apply-templates/>
		</fo:basic-link>
	</xsl:template>

	<xsl:template match="time-period">
		<fo:inline xsl:use-attribute-sets="time-period">
			<xsl:value-of select="start-date"/>
			<xsl:text> - </xsl:text>
			<xsl:value-of select="end-date"/>
		</fo:inline>
	</xsl:template>

</xsl:stylesheet>
