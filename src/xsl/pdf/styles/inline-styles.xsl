<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="inline-styles">
        <xsl:choose>
            <xsl:when test="self::b">
                <xsl:attribute name="font-weight">bold</xsl:attribute>
            </xsl:when>
            <xsl:when test="self::name">
                <xsl:attribute name="text-transform">capitalize</xsl:attribute>
                <xsl:attribute name="font-weight">bold</xsl:attribute>
                <xsl:attribute name="font-style">italic</xsl:attribute>
            </xsl:when>
            <xsl:when test="self::sub">
                <xsl:attribute name="font-size">67%</xsl:attribute>
                <xsl:attribute name="baseline-shift">sub</xsl:attribute>
            </xsl:when>
            <xsl:when test="self::sup">
                <xsl:attribute name="font-size">67%</xsl:attribute>
                <xsl:attribute name="baseline-shift">super</xsl:attribute>
            </xsl:when>
            <xsl:when test="self::u">
                <xsl:attribute name="text-decoration">underline</xsl:attribute>
            </xsl:when>
            <xsl:when test="self::i">
                <xsl:attribute name="font-style">italic</xsl:attribute>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:attribute-set name="time-period">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
