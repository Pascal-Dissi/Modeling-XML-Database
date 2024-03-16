<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:key name="customerById" match="Customer" use="@id">
    <xsl:variable name="customerId" select="@id"/>
  </xsl:key>

  <xsl:template match="/">
    <h2>Orders</h2>
    <table border="1">
      <thead>
        <tr>
          <th>Order ID</th>
          <th>Customer Name</th>
          <th>Order Date</th>
          <th>Delivery Date</th>
          <th>Total Amount</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="document('Orders.xml')/Orders/Order">
          <tr>
            <td><xsl:value-of select="id"/></td>
            <td>
              <xsl:variable name="customerId" select="customer_id"/>
              <xsl:value-of select="document('../Customers/customers.xml')/Customers/Customer[@id=$customerId]/firstname"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="document('../Customers/customers.xml')/Customers/Customer[@id=$customerId]/lastname"/>
            </td>
            <td><xsl:value-of select="order_date"/></td>
            <td><xsl:value-of select="delivery_date"/></td>
            <td><xsl:value-of select="total_amount"/></td>
            <td><xsl:value-of select="@status"/></td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>

</xsl:stylesheet>
