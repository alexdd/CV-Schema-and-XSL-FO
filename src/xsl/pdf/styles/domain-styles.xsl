<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:attribute-set name="organization">
		<xsl:attribute name="border">1pt grey solid</xsl:attribute>
		<xsl:attribute name="padding">2pt</xsl:attribute>
		<xsl:attribute name="margin">2pt</xsl:attribute>
		<xsl:attribute name="space-before">6pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="personal-info">
		<xsl:attribute name="font-size">16pt</xsl:attribute>
		<xsl:attribute name="space-after">10pt</xsl:attribute>
		<xsl:attribute name="border-bottom">1pt black solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="personal-info-dob">
		<xsl:attribute name="font-size">9pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="contact">
		<xsl:attribute name="padding">5pt</xsl:attribute>
		<xsl:attribute name="border">1pr black solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="contact-details"> </xsl:attribute-set>

	<xsl:attribute-set name="contact-details-label">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="address"> </xsl:attribute-set>

	<xsl:attribute-set name="address-label">
		<xsl:attribute name="space-after">2pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="address-details-label">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skills">
		<xsl:attribute name="space-before">4pt</xsl:attribute>
		<xsl:attribute name="space-after">5pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="skill"> </xsl:attribute-set>

	<xsl:attribute-set name="role">
		<xsl:attribute name="space-after">2pt</xsl:attribute>
		<xsl:attribute name="background-color">#f3f3f3</xsl:attribute>
		<xsl:attribute name="border">1pt grey solid</xsl:attribute>
		<xsl:attribute name="padding">2pt</xsl:attribute>
		<xsl:attribute name="margin">2pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="role-label">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>

</xsl:stylesheet>
