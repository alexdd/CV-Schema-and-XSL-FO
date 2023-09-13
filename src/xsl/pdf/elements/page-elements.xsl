<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template name="page-layout">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="page">
                <fo:region-body>
                    <xsl:attribute name="margin-left">20mm</xsl:attribute>
                    <xsl:attribute name="margin-right">20mm</xsl:attribute>
                    <xsl:attribute name="margin-top">15mm</xsl:attribute>
                    <xsl:attribute name="margin-bottom">15mm</xsl:attribute>
                </fo:region-body>
            </fo:simple-page-master>
            <fo:page-sequence-master master-name="page-sequence">
                <fo:repeatable-page-master-reference master-reference="page"/>
            </fo:page-sequence-master>
        </fo:layout-master-set>
    </xsl:template>

</xsl:stylesheet>
