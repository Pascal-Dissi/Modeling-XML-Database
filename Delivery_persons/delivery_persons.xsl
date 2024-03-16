<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Delivery Persons</title>
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
      <h2>Delivery Persons</h2>
      <table>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Contact</th>
          <th>Vehicle Type</th>
          <th>Availability</th>
          <th>Vehicle Number</th>
          <th>Current Location</th>
        </tr>
        <xsl:apply-templates select="Delivery_persons/Delivery_person"/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="Delivery_person">
  <tr>
    <td><xsl:value-of select="id"/></td>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="contact"/></td>
    <td><xsl:value-of select="vehicule_type"/></td>
    <td><xsl:value-of select="availability"/></td>
    <td><xsl:value-of select="vehicule_number"/></td>
    <td><xsl:value-of select="current_location"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
