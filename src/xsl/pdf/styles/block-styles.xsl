<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:attribute-set name="p">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="line-height">140%</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="ul">
		<xsl:attribute name="space-after">5pt</xsl:attribute>
		<xsl:attribute name="start-indent">5mm</xsl:attribute>
		<xsl:attribute name="provisional-distance-between-starts">5mm</xsl:attribute>
		<xsl:attribute name="provisional-label-separation">5mm</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="figure">
		<xsl:attribute name="space-after">5pt</xsl:attribute>
		<xsl:attribute name="keep-together">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="figure-img">
		<xsl:attribute name="content-width">70mm</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="figure-title">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="font-style">italic</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="description">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="line-height">120%</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="web">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="line-height">120%</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="title">
		<xsl:attribute name="font-size">11pt</xsl:attribute>
		<xsl:attribute name="line-height">120%</xsl:attribute>
	</xsl:attribute-set>

</xsl:stylesheet>
