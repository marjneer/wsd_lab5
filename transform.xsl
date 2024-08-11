<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Delhi Tourism Information</title>
                <style>
                    body{background-color:#F6E96B;}
                    table,th,td {
                        border : 1px solid black;
                        border-collapse: separate;
                      }
                      th,td {text-align:center;
                        padding: 5px;
                        color:white;
                      }
                      th{background-color:#387F39;}
                      td{background-color:#A2CA71;}
                </style>
            </head>
            <body>
                <h2>Delhi Tourism Information</h2>
                <table>
                    <tr>
                        <th>Area</th>
                        <th>Attraction</th>
                        <th>Description</th>
                        <th>Rating</th>
                        <th>Ticket Price</th>
                        <th>Nearest Metro Station</th>
                    </tr>
                    <xsl:for-each select="places/destination">
                    <tr>
                        <td><xsl:value-of select="area"/></td>
                        <td><xsl:value-of select="attraction"/></td>
                        <td><xsl:value-of select="description"/></td>
                        <td><xsl:value-of select="rating"/></td>
                        <td><xsl:value-of select="ticket"/></td>
                        <td><xsl:value-of select="station"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>