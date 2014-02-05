<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
                xmlns:d="http://docbook.org/ns/docbook"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:import href="/home/arcfide/Libraries/Docbook5-XSL/fo/docbook.xsl"/>
  <xsl:import href="./titlepage.xsl" />
  <xsl:param name="body.font.master" select="10" />
  <xsl:param name="body.font.family" select="'CMU Serif'" />
  <xsl:param name="title.font.family" select="'CMU Serif'" />
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
  <xsl:param name="email.delimiters.enabled" select="0" />
  <xsl:attribute-set name="component.titlepage.properties">
    <xsl:attribute name="span">all</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="abstract.title.properties">
    <xsl:attribute name="text-align">start</xsl:attribute>
    <xsl:attribute name="font-size">12pt</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="section.title.level1.properties">
    <xsl:attribute name="font-size">12pt</xsl:attribute>
  </xsl:attribute-set>
  <xsl:template match="d:info">
    <xsl:apply-templates select="d:abstract" mode="titlepage.mode"/>
    <xsl:apply-templates select="d:keywordset" mode="titlepage.mode"/>
    <xsl:apply-templates select="d:subjectset" mode="titlepage.mode"/>
  </xsl:template>
  <xsl:template name="header.content">  
    <xsl:param name="pageclass" select="''"/>
    <xsl:param name="sequence" select="''"/>
    <xsl:param name="position" select="''"/>
    <xsl:param name="gentext-key" select="''"/>
    <fo:block></fo:block>
  </xsl:template>
  <xsl:attribute-set name="normal.para.spacing">
    <xsl:attribute name="text-indent">1.5em</xsl:attribute>
    <xsl:attribute name="space-before.optimum">5pt</xsl:attribute>
    <xsl:attribute name="space-before.minimum">1pt</xsl:attribute>
    <xsl:attribute name="space-before.maximum">7pt</xsl:attribute>
  </xsl:attribute-set>
  <xsl:template match="d:author" mode="titlepage.mode">
    <fo:table-cell>
      <xsl:choose>
        <xsl:when test="d:orgname">
          <fo:block>
            <xsl:apply-templates/>
          </fo:block>
        </xsl:when>
        <xsl:otherwise>
          <fo:block>
            <xsl:call-template name="person.name"/>
          </fo:block>
          <xsl:if test="d:affiliation/d:orgname">
            <fo:block>
              <xsl:apply-templates select="d:affiliation/d:orgname" mode="titlepage.mode"/>
            </fo:block>
          </xsl:if>
          <xsl:if test="d:email|d:affiliation/d:address/d:email">
            <fo:block>
              <xsl:apply-templates select="(d:email|d:affiliation/d:address/d:email)[1]"/>
            </fo:block>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </fo:table-cell>
  </xsl:template>
  <xsl:template match="d:authorgroup" mode="titlepage.mode">
    <fo:table table-layout="fixed" width="100%" space-before="2em"
              space-after="3em" space-after.conditionality="retain">
      <fo:table-body>
        <fo:table-row>
          <xsl:call-template name="anchor"/>
          <xsl:apply-templates mode="titlepage.mode"/>
        </fo:table-row>
      </fo:table-body>
    </fo:table>
  </xsl:template>
</xsl:stylesheet>
