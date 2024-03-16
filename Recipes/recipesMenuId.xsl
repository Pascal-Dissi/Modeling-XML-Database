<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="menuId" select="1"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Recipes</title>
                <link rel="stylesheet" href="../CSS/styles.css"/>
            </head>
            <body>
                <h1>Recipes for Menu ID: <xsl:value-of select="$menuId"/></h1>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Preparation Time</th>
                        <th>Cooking Time</th>
                        <th>Description</th>
                        <th>Difficulty Level</th>
                        <th>Serving Size</th>
                        <th>Budget Category ID</th>
                        <th>Category ID</th>
                        <th>Cooking Instructions</th>
                    </tr>
                    <xsl:for-each select="Menus/Menu[id = $menuId]/recipes/recipe">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="preparation_time"/></td>
                            <td><xsl:value-of select="cooking_time"/></td>
                            <td><xsl:value-of select="description"/></td>
                            <td><xsl:value-of select="difficulty_level"/></td>
                            <td><xsl:value-of select="serving_size"/></td>
                            <td><xsl:value-of select="budgetcategory_id"/></td>
                            <td><xsl:value-of select="category_id"/></td>
                            <td>
                                <ul>
                                    <xsl:for-each select="cooking_instructions/step">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
