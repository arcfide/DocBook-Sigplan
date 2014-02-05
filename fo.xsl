<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:d="http://docbook.org/ns/docbook">
  <xsl:import href="/home/arcfide/Libraries/Docbook5-XSL/fo/docbook.xsl"/>
  <xsl:import href="./titlepage.xsl" />
  <xsl:param name="body.font.master" select="9" />
  <xsl:param name="body.font.family" select="'CMU Serif'" />
  <xsl:param name="title.font.family" select="'CMU Sans Serif'" />
  <xsl:param name="monospace.font.family" select="'CMU Typewriter Text'" />
  <xsl:param name="symbol.font.family" select="''" />
  <xsl:param name="generate.toc" select="'article nop'" />
  <xsl:param name="fop1.extensions" select="1" />
  <xsl:param name="column.count.body" select="2"/>
  <xsl:param name="body.start.indent" select="'0pt'"/>
  <xsl:param name="section.autolabel" select="1" />
  <xsl:param name="appendix.autolabel" select="0" />
  <xsl:param name="header.rule" select="0" />
  <xsl:param name="footer.rule" select="0" />
  <xsl:attribute-set name="component.titlepage.properties">
    <xsl:attribute name="span">all</xsl:attribute>
  </xsl:attribute-set>
  <xsl:template match="d:info">
    <xsl:apply-templates select="d:abstract" mode="titlepage.mode"/>
    <xsl:apply-templates select="d:keywordset" mode="titlepage.mode"/>
    <xsl:apply-templates select="d:subjectset" mode="titlepage.mode"/>
  </xsl:template>
</xsl:stylesheet>
