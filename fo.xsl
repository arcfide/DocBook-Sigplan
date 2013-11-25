<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="C:\Users\Aaron\Documents\Libraries\Docbook5-XSL\fo\docbook.xsl"/>
<xsl:import href=".\titlepage.xsl" />
<xsl:param name="body.font.master" select="9" />
<xsl:param name="body.font.family" select="'Times New Roman'" />
<xsl:param name="title.font.family" select="'Times New Roman'" />
<xsl:param name="monospace.font.family" select="'Courier New'" />
<xsl:param name="symbol.font.family" select="''" />
<xsl:param name="generate.toc" select="'article nop'" />
<xsl:param name="fop1.extensions" select="1" />
<xsl:param name="column.count.body" select="2"/>
<xsl:param name="body.start.indent" select="'0pt'"/>
<xsl:param name="section.autolabel" select="1" />
<xsl:param name="appendix.autolabel" select="0" />
<xsl:attribute-set name="component.titlepage.properties">
  <xsl:attribute name="span">all</xsl:attribute>
</xsl:attribute-set>
</xsl:stylesheet>
