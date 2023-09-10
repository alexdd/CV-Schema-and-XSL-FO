<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:attribute-set name="experience">
		<xsl:attribute name="margin-bottom">5mm</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="cv-description">
		<xsl:attribute name="text-align">justify</xsl:attribute>
		<xsl:attribute name="font-style">italic</xsl:attribute>
		<xsl:attribute name="space-after">10pt</xsl:attribute>
		<xsl:attribute name="background-color">#f3f3f3</xsl:attribute>
		<xsl:attribute name="padding">2pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="achievements">
		<xsl:attribute name="space-before">6pt</xsl:attribute>
		<xsl:attribute name="border">1pt grey solid</xsl:attribute>
		<xsl:attribute name="margin">2pt</xsl:attribute>
		<xsl:attribute name="padding">2pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="achievement">
		<xsl:attribute name="background-color">#f3f3f3</xsl:attribute>
		<xsl:attribute name="border-bottom">5pt white solid</xsl:attribute>
		<xsl:attribute name="space-before">4pt</xsl:attribute>
		<xsl:attribute name="keep-together">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="achievement-description">
		<xsl:attribute name="font-style">italic</xsl:attribute>
		<xsl:attribute name="color">grey</xsl:attribute>
	</xsl:attribute-set>

</xsl:stylesheet>
