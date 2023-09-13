<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:attribute-set name="page-styles">
		<xsl:attribute name="font-family">Arial</xsl:attribute>
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="line-height">120%</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
		<xsl:attribute name="hyphenate">true</xsl:attribute>
		<xsl:attribute name="hyphenation-push-character-count">3</xsl:attribute>
		<xsl:attribute name="hyphenation-remain-character-count">3</xsl:attribute>
		<xsl:attribute name="language">
			<xsl:value-of select="substring-before((//application)[1]/@language,'-')"/>
		</xsl:attribute>
	</xsl:attribute-set>

</xsl:stylesheet>
