<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:template match="*[ancestor::p]">
    <fo:inline color="red" background-color="yellow">
      <xsl:text>Unhandled inline element: </xsl:text>
      <xsl:value-of select="name()"/>
    </fo:inline>
  </xsl:template>

  <xsl:template match="*[not(ancestor::p)]">
    <fo:block color="red" background-color="yellow">
      <xsl:text>Unhandled block element: </xsl:text>
      <xsl:value-of select="name()"/>
    </fo:block>
  </xsl:template>

</xsl:stylesheet>
