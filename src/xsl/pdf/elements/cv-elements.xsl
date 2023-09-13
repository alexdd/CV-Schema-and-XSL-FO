<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="cv">
        <!-- cv/figure and cv/contact will be placed inside the personal info table -->
        <xsl:apply-templates select="*[not(self::figure or self::contact)]"/>
    </xsl:template>

    <xsl:template match="expertises | educations | experiences | languages | hobbies">
        <fo:block xsl:use-attribute-sets="section">
            <fo:block xsl:use-attribute-sets="section-title">
                <xsl:call-template name="render-boilerplate-text"/>
            </fo:block>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="experience | expertise | education">
        <fo:table xsl:use-attribute-sets="cv-category">
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell width="25mm">
                        <fo:block>
                            <xsl:apply-templates select="time-period"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <xsl:apply-templates select="*[not(self::time-period)]"/>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>

    <xsl:template match="cv/description">
        <fo:block xsl:use-attribute-sets="section-title">
            <xsl:call-template name="render-boilerplate-text">
                <xsl:with-param name="key">B_management-summary</xsl:with-param>
            </xsl:call-template>
        </fo:block>
        <fo:block xsl:use-attribute-sets="cv-description">
            <xsl:next-match/>
        </fo:block>
    </xsl:template>

    <xsl:template match="achievements">
        <fo:block xsl:use-attribute-sets="achievements">
            <fo:block xsl:use-attribute-sets="subsection-title">
                <xsl:call-template name="render-boilerplate-text"/>
            </fo:block>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="achievement">
        <fo:block xsl:use-attribute-sets="achievement">
            <fo:block xsl:use-attribute-sets="subsection-title">
                <xsl:apply-templates select="time-period"/>
            </fo:block>
            <xsl:apply-templates select="*[not(self::time-period)]"/>
        </fo:block>
    </xsl:template>

    <xsl:template match="achievement/description | expertise/description">
        <fo:block xsl:use-attribute-sets="cv-sub-category">
            <xsl:next-match/>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>
