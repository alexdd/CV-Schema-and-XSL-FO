<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:import href="./elements/default.xsl"/>

	<xsl:output method="xml" indent="yes"/>

	<xsl:include href="../common/utils.xsl"/>
	<xsl:include href="./styles/styles.xsl"/>
	<xsl:include href="./elements/elements.xsl"/>

	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xsl:use-attribute-sets="page-styles">
			<xsl:call-template name="page-layout"/>
			<xsl:apply-templates/>
		</fo:root>
	</xsl:template>

</xsl:stylesheet>
