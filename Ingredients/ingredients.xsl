<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Ingredients</title>
      <link rel="stylesheet" href="../CSS/styles.css"/>
      <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }
        th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: left;
        }
        th {
          background-color: #f2f2f2;
        }
      </style>
    </head>
    <body>
      <h2>Ingredients</h2>
      <table>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Measurement Unit</th>
          <th>Cost</th>
          <th>Calories</th>
          <th>Macronutrient ID</th>
          <th>Recipe ID</th>
        </tr>
        <xsl:apply-templates select="Ingredients/Ingredient"/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="Ingredient">
  <tr>
    <td><xsl:value-of select="id"/></td>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="measurement_unit"/></td>
    <td><xsl:value-of select="cost"/></td>
    <td><xsl:value-of select="calories"/></td>
    <td><xsl:value-of select="macronutrient_id"/></td>
    <td><xsl:value-of select="recipe_id"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
