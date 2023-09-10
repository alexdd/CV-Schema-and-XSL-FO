<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:attribute-set name="section">
		<xsl:attribute name="space-after">8pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="section-title">
		<xsl:attribute name="font-size">16pt</xsl:attribute>
		<xsl:attribute name="line-height">120%</xsl:attribute>
		<xsl:attribute name="border-bottom">1pt black solid</xsl:attribute>
		<xsl:attribute name="space-before">10pt</xsl:attribute>
		<xsl:attribute name="space-after">6pt</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="subsection-title">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="line-height">120%</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-after">4pt</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
	</xsl:attribute-set>

</xsl:stylesheet>
