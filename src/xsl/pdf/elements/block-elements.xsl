<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="p">
		<fo:block xsl:use-attribute-sets="p">
			<xsl:apply-templates/>
		</fo:block>
	</xsl:template>

	<xsl:template match="figure">
		<fo:block>
			<xsl:apply-templates/>
		</fo:block>
	</xsl:template>

	<xsl:template match="figure/title">
		<fo:block xsl:use-attribute-sets="figure-title">
			<xsl:apply-templates/>
		</fo:block>
	</xsl:template>

	<xsl:template match="title">
		<fo:block xsl:use-attribute-sets="title">
			<xsl:apply-templates/>
		</fo:block>
	</xsl:template>

	<xsl:template match="img">
		<fo:external-graphic xsl:use-attribute-sets="figure-img" src="{concat('../../',@filename)}"
		/>
	</xsl:template>

	<xsl:template match="ul">
		<fo:list-block xsl:use-attribute-sets="ul">
			<xsl:apply-templates/>
		</fo:list-block>
	</xsl:template>

	<xsl:template match="li">
		<fo:list-item>
			<fo:list-item-label end-indent="label-end()">
				<fo:block>
					<xsl:text>&#x2022;</xsl:text>
				</fo:block>
			</fo:list-item-label>
			<fo:list-item-body start-indent="body-start()">
				<fo:block>
					<xsl:apply-templates/>
				</fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</xsl:template>

	<xsl:template match="description">
		<xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>
