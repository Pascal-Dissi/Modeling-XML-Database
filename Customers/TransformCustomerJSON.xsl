<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    
    <!-- Match the root element -->
    <xsl:template match="/">
        <!-- Start of JSON array -->
        <xsl:text>[</xsl:text>
        <xsl:apply-templates select="//Customer"/>
        <!-- End of JSON array -->
        <xsl:text>]</xsl:text>
    </xsl:template>
    
    <!-- Match each Customer element -->
    <xsl:template match="Customer">
        <!-- Start of JSON object for each customer -->
        <xsl:text>{"id": "</xsl:text><xsl:value-of select="id"/><xsl:text>", </xsl:text>
        <xsl:text>"firstname": "</xsl:text><xsl:value-of select="firstname"/><xsl:text>", </xsl:text>
        <xsl:text>"lastname": "</xsl:text><xsl:value-of select="lastname"/><xsl:text>", </xsl:text>
        <xsl:text>"email": "</xsl:text><xsl:value-of select="email"/><xsl:text>", </xsl:text>
        <xsl:text>"phone": "</xsl:text><xsl:value-of select="phone"/><xsl:text>", </xsl:text>
        <xsl:text>"address": "</xsl:text><xsl:value-of select="address"/><xsl:text>"}</xsl:text>
        <!-- Add comma if not last customer -->
        <xsl:if test="position() != last()">
            <xsl:text>,</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
