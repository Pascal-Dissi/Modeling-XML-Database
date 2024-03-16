<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Reviews</title>
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
      <h2>Reviews</h2>
      <table>
        <tr>
          <th>ID</th>
          <th>Customer ID</th>
          <th>Recipe ID</th>
          <th>Rating</th>
          <th>Comment</th>
          <th>Review Date</th>
        </tr>
        <xsl:apply-templates select="reviews/review"/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="review">
  <tr>
    <td><xsl:value-of select="id"/></td>
    <td><xsl:value-of select="customer_id"/></td>
    <td><xsl:value-of select="recipe_id"/></td>
    <td><xsl:value-of select="rating"/></td>
    <td><xsl:value-of select="comment"/></td>
    <td><xsl:value-of select="review_date"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
