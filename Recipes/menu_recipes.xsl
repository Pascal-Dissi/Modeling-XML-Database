<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:param name="selectedMenuID"/>

    <xsl:template match="//Menus">
        <xsl:if test="Menu">
            <h1>Menus</h1>
            <xsl:for-each select="Menu">
                <xsl:if test=".">  <xsl:apply-templates select="."/>
                </xsl:if>
            </xsl:for-each>
        </xsl:if>
        <xsl:if test="not(Menu)">
            <p>No menus available.</p>
        </xsl:if>
    </xsl:template>

    <xsl:template match="Menus/Menu">
        <div class="menu">
            <h2><xsl:value-of select="name"/></h2>
            <p><xsl:value-of select="description"/></p>
            <p>Start Date: <xsl:value-of select="start_date"/></p>  <p>End Date: <xsl:value-of select="end_date"/></p>  <xsl:if test="not(start_date) or not(end_date)">
                <p class="error">Invalid date range for this menu.</p>
            </xsl:if>
            <xsl:apply-templates select="document('menu_recipes.xml')//menu_recipe[menu_id = current()/id and menu_id=1]"/>
        </div>
    </xsl:template>

    <xsl:template match="menu_recipe">
        <h3>Recipe ID: <xsl:value-of select="recipe_id"/></h3>
        <xsl:variable name="recipeID" select="recipe_id"/>
        <xsl:variable name="recipeDetails" select="document('recipes.xml')//recipe[id = $recipeID]"/>
        <xsl:if test="$recipeDetails">
            <p>Name: <xsl:value-of select="$recipeDetails/name"/></p>
            <p>Description: <xsl:value-of select="$recipeDetails/description"/></p>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
