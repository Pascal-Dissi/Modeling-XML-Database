<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Customer Information</title>
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
      <h2>Customer Information</h2>
      <table>
        <tr>
          <th>ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Address</th>
        </tr>
        <xsl:apply-templates select="Customers/Customer"/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="Customer">
  <tr>
    <td><xsl:value-of select="id"/></td>
    <td><xsl:value-of select="firstname"/></td>
    <td><xsl:value-of select="lastname"/></td>
    <td><xsl:value-of select="email"/></td>
    <td><xsl:value-of select="phone"/></td>
    <td><xsl:value-of select="address"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
