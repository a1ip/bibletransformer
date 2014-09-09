<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" encoding="utf-8" indent="yes"/>
<xsl:template match="*">
<bible>
   <xsl:apply-templates select="BIBLEBOOK"/>
</bible>
</xsl:template>
<xsl:template match="BIBLEBOOK"><b n="{./@bname}">
<xsl:apply-templates select="CHAPTER"/></b></xsl:template>

<xsl:template match="CHAPTER"><c n="{./@cnumber}">
<xsl:apply-templates select="VERS"/></c></xsl:template>

<xsl:template match="VERS"><v n="{./@vnumber}">
<xsl:value-of select="."/></v></xsl:template>
</xsl:stylesheet>