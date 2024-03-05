<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Menus with Dates</title>
            </head>
            <body>
                <h1>Menus with Dates</h1>
                <xsl:apply-templates select="Menus/Menu"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Menu">
        <div>
            <h2><xsl:value-of select="name"/></h2>
            <p>Description: <xsl:value-of select="description"/></p>
            <p>Start Date: <xsl:value-of select="start_date"/></p>
            <p>End Date: <xsl:value-of select="end_date"/></p>
        </div>
    </xsl:template>
</xsl:stylesheet>
