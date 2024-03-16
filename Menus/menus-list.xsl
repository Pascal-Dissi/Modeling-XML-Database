<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output  method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Menus with Dates</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="../CSS/styles.css"/>
            </head>
            <body>
                <header>
                    <h1>Recipe Box Company</h1>
                </header>
                <div id="includedContent"></div>

                <script>
                    // Fetch the content of the HTML file
                    fetch('../nav.html')
                        .then(response => response.text())
                        .then(html => {
                            // Inject the HTML content into the specified div
                            document.getElementById('includedContent').innerHTML = html;
                        })
                        .catch(error => console.error('Error fetching HTML file:', error));
                </script>
                <h1>Menus with Dates</h1>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>
                    <xsl:for-each select="Menus/Menu">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="description"/></td>
                            <td><xsl:value-of select="start_date"/></td>
                            <td><xsl:value-of select="end_date"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>
