<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="applications">
		<xsl:apply-templates>
			<xsl:sort select="application-meta/application-key-skill/primary"/>
			<xsl:sort select="application-meta/application-key-skill/secondary"/>
			<xsl:sort select="application-meta/application-key-skill/tertiary"/>
		</xsl:apply-templates>
	</xsl:template>

	<xsl:template match="application">
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<xsl:apply-templates/>
			</fo:flow>
		</fo:page-sequence>
	</xsl:template>

	<xsl:template match="application-meta">
		<fo:table xsl:use-attribute-sets="application-meta">
			<fo:table-body>
				<fo:table-row>
					<xsl:apply-templates select="applicant-identifier"/>
					<xsl:apply-templates select="date-received"/>
				</fo:table-row>
				<fo:table-row>
					<xsl:apply-templates select="version"/>
					<xsl:apply-templates select="application-status"/>
				</fo:table-row>
				<fo:table-row>
					<xsl:apply-templates select="../@language"/>
					<xsl:apply-templates select="application-key-skill"/>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<xsl:template match="application-meta/*">
		<fo:table-cell xsl:use-attribute-sets="application-meta-label">
			<fo:block>
				<xsl:call-template name="render-boilerplate-text"/>
			</fo:block>
		</fo:table-cell>
		<fo:table-cell>
			<fo:block>
				<xsl:text> </xsl:text>
				<xsl:apply-templates/>
			</fo:block>
		</fo:table-cell>
	</xsl:template>

	<xsl:template match="application-key-skill/*">
		<xsl:value-of select="."/>
		<xsl:if test="following-sibling::*">, </xsl:if>
	</xsl:template>

	<xsl:template match="application/@language">
		<fo:table-cell xsl:use-attribute-sets="application-meta-label">
			<fo:block>
				<xsl:call-template name="render-boilerplate-text">
					<xsl:with-param name="key">B_language</xsl:with-param>
				</xsl:call-template>
			</fo:block>
		</fo:table-cell>
		<fo:table-cell>
			<fo:block>
				<xsl:value-of select="."/>
			</fo:block>
		</fo:table-cell>
	</xsl:template>

	<xsl:template match="job-position">
		<fo:block xsl:use-attribute-sets="job-position">
			<xsl:text> </xsl:text>
			<xsl:apply-templates/>
		</fo:block>
	</xsl:template>

	<xsl:template match="notice-period">
		<fo:block xsl:use-attribute-sets="notice-period">
			<xsl:text>(</xsl:text>
			<xsl:call-template name="render-boilerplate-text"/>
			<xsl:text> </xsl:text>
			<xsl:apply-templates/>
			<xsl:text>)</xsl:text>
		</fo:block>
	</xsl:template>

</xsl:stylesheet>
