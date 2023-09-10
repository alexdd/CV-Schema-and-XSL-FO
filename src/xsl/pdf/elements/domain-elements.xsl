<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="skills">
        <fo:block xsl:use-attribute-sets="skills">
            <fo:block xsl:use-attribute-sets="subsection-title">
                <xsl:call-template name="render-boilerplate-text"/>
            </fo:block>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="skill">
        <fo:block xsl:use-attribute-sets="skill">
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="role">
        <fo:block xsl:use-attribute-sets="role">
            <fo:inline xsl:use-attribute-sets="role-label">
                <xsl:call-template name="render-boilerplate-text"/>
            </fo:inline>
            <xsl:text> </xsl:text>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="organization">
        <fo:block xsl:use-attribute-sets="organization">
            <fo:block xsl:use-attribute-sets="subsection-title">
                <xsl:call-template name="render-boilerplate-text">
                    <xsl:with-param name="key" select="concat('B_organization_', @type)"/>
                </xsl:call-template>
            </fo:block>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="personal-info">
        <fo:block xsl:use-attribute-sets="personal-info">
            <xsl:apply-templates/>
        </fo:block>
        <fo:table>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell>
                        <xsl:apply-templates select="following-sibling::contact[1]"/>
                    </fo:table-cell>
                    <xsl:apply-templates select="following-sibling::*[1][self::figure]"/>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>

    <xsl:template match="figure[preceding-sibling::*[1][self::personal-info]]">
        <fo:table-cell>
            <xsl:next-match/>
        </fo:table-cell>
    </xsl:template>

    <xsl:template match="personal-info/*[not(self::date-of-birth)]">
        <xsl:apply-templates/>
        <xsl:text> </xsl:text>
    </xsl:template>

    <xsl:template match="personal-info/date-of-birth">
        <fo:block/>
        <fo:block xsl:use-attribute-sets="personal-info-dob">
            <xsl:text>* </xsl:text>
            <xsl:call-template name="render-boilerplate-text"/>
            <xsl:text> </xsl:text>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="contact">
        <fo:block xsl:use-attribute-sets="contact">
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="email | phone">
        <fo:block xsl:use-attribute-sets="contact-details">
            <fo:inline xsl:use-attribute-sets="contact-details-label">
                <xsl:call-template name="render-boilerplate-text"/>
            </fo:inline>
            <xsl:text> </xsl:text>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="address">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="address/*">
        <fo:block xsl:use-attribute-sets="address">
            <fo:inline xsl:use-attribute-sets="address-details-label">
                <xsl:call-template name="render-boilerplate-text"/>
            </fo:inline>
            <xsl:text> </xsl:text>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>
