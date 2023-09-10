<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="render-boilerplate-text">
        <xsl:param name="key" required="no"/>
        <xsl:variable name="language" select="ancestor::application/@language"/>
        <xsl:variable name="lookup-key" select="
                if ($key) then
                    $key
                else
                    concat('B_', name())"/>
        <xsl:variable name="lookup-result"
            select="doc('boilerplates.xml')/boilerplates/boilerplate[@key = $lookup-key]/translation[@lang = $language]"/>
        <xsl:variable name="warning-message">Boilerplate text not found!</xsl:variable>
        <xsl:choose>
            <xsl:when test="normalize-space($lookup-result)">
                <xsl:apply-templates select="$lookup-result/node()"/>
            </xsl:when>
            <xsl:otherwise>

                <xsl:value-of select="$warning-message"/>
                <xsl:message>
                    <xsl:value-of select="$warning-message"/>
                    <xsl:text>[Key: </xsl:text>
                    <xsl:value-of select="$lookup-key"/>
                    <xsl:text>]</xsl:text>
                </xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
