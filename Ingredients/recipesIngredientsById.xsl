<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:param name="recipeId" select="1"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Ingredients</title>
            </head>
            <body>
                <h1>Ingredients for Recipe with ID: <xsl:value-of select="$recipeId"/></h1>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Measurement Unit</th>
                        <th>Cost</th>
                        <th>Calories</th>
                    </tr>
                    <xsl:for-each select="//recipe_ingredients/recipe_ingredient[reciped_id = $recipeId]">
                        <xsl:variable name="ingredientId" select="ingredient_id"/>
                        <xsl:for-each select="//Ingredients/Ingredient[id = $ingredientId]">
                            <tr>
                                <td><xsl:value-of select="id"/></td>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="measurement_unit"/></td>
                                <td><xsl:value-of select="cost"/></td>
                                <td><xsl:value-of select="calories"/></td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
