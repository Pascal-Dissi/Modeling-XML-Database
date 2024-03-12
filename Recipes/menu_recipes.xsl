<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- Parameter to pass the selected menu ID -->
    <xsl:param name="selectedMenuID"/>

    <!-- Template to match the root element -->
    <xsl:template match="/Menus">
        <!-- Check if there are any menus -->
        <xsl:if test="Menu">
            <h1>Menus</h1>
            <!-- Loop through each menu -->
            <xsl:for-each select="Menu">
                <!-- Apply templates to display menu details -->
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </xsl:if>
        <!-- If there are no menus, display a message -->
        <xsl:if test="not(Menu)">
            <p>No menus available.</p>
        </xsl:if>
    </xsl:template>

    <!-- Template to match each menu -->
    <xsl:template match="Menu">
        <!-- Display menu details -->
        <div class="menu">
            <h2><xsl:value-of select="name"/></h2>
            <p><xsl:value-of select="description"/></p>
            <p>Start Date: <xsl:value-of select="start_date"/></p>
            <p>End Date: <xsl:value-of select="end_date"/></p>
            <!-- If start_date or end_date is empty, display a message -->
            <xsl:if test="not(start_date) or not(end_date)">
                <p class="error">Invalid date range for this menu.</p>
            </xsl:if>
            <!-- Display recipes for the current menu -->
            <xsl:apply-templates select="document('menu_recipes.xml')//menu_recipe[menu_id = current()/id]"/>
        </div>
    </xsl:template>

    <!-- Template to match menu_recipe elements -->
    <xsl:template match="menu_recipe">
        <!-- Display recipe details using recipe_id -->
        <h3>Recipe ID: <xsl:value-of select="recipe_id"/></h3>
        <!-- Fetch recipe details from recipes.xml -->
        <xsl:variable name="recipeID" select="recipe_id"/>
        <xsl:variable name="recipeDetails" select="document('recipes.xml')//recipe[id = $recipeID]"/>
        <!-- Check if recipe details exist -->
        <xsl:if test="$recipeDetails">
            <p>Name: <xsl:value-of select="$recipeDetails/name"/></p>
            <p>Description: <xsl:value-of select="$recipeDetails/description"/></p>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
