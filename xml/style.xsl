<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My CD collection</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Country</th>
                        <th>Company</th>
                        <th>Price</th>
                        <th>Year</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <!-- <xsl:if test="price &lt; 10"> -->
                            <!-- <xsl:sort select="artist"></xsl:sort> -->
                            <tr>
                                <td><xsl:value-of select="title"></xsl:value-of></td>
                                <!-- <xsl:choose>
                                    <xsl:when test="price &gt; 10">
                                        <td bgcolor="#ff00ff"><xsl:value-of select="artist"></xsl:value-of></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td><xsl:value-of select="artist"></xsl:value-of></td>
                                    </xsl:otherwise>
                                </xsl:choose> -->
                                <td><xsl:value-of select="artist"></xsl:value-of></td>
                                <td><xsl:value-of select="country"></xsl:value-of></td>
                                <td><xsl:value-of select="company"></xsl:value-of></td>
                                <td><xsl:value-of select="price"></xsl:value-of></td>
                                <td><xsl:value-of select="year"></xsl:value-of></td>
                            </tr>
                        <!-- </xsl:if> -->
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>