<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <body>
            <h2>My CD Collection</h2>
            <table border="1">
                <tr bgcolor="green">
                    <th>Location</th>
                    <th>last mod</th>
                    <th>priority</th>
                    <!-- <th>Company</th>
                    <th>Price</th>
                    <th>Year</th> -->
                </tr>
                <xsl:for-each select="urlset/url">
                    <!-- <xsl:sort select="YEAR"></xsl:sort> -->
                    <!-- <xsl:if test="PRICE &lt; 10">
                        <tr>
                            <td>
                                <xsl:value-of select="TITLE"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="ARTIST"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="COUNTRY"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="COMPANY"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="PRICE"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="YEAR"></xsl:value-of>
                            </td>
                        </tr>
                    </xsl:if> -->

                    <!-- <tr>
                        <td>
                            <xsl:value-of select="TITLE"></xsl:value-of>
                        </td>

                        <xsl:choose>
                            <xsl:when test="PRICE &gt; 10">
                                <td>
                                    <xsl:value-of select="ARTIST"></xsl:value-of>
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="YEAR"></xsl:value-of>
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>

                        
                    </tr> -->
                    <tr>
                        <td>
                            <xsl:value-of select="loc"></xsl:value-of>
                        </td>
                        <td>
                            <xsl:value-of select="lastmod"></xsl:value-of>
                        </td>
                        <td>
                            <xsl:value-of select="priority"></xsl:value-of>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>