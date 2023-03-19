<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet verison="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My CD Collections</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Country</th>
                        <th>Company</th>
                        <th>Price</th>
                        <th>Year</th>
                    </tr>
                    <xsl:for-each select="CATALOG/CD">
                        <!-- <xsl:sort select="YEAR"></xsl:sort> -->
                        <!-- <xsl:if test="PRICE &lt; 10">
                            <tr>
                                <td>
                                    <xsl:value-of select="TITLE"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ARTIST"/>
                                </td>
                                <td>
                                    <xsl:value-of select="COUNTRY"/>
                                </td>
                                <td>
                                    <xsl:value-of select="COMPANY"/>
                                </td>
                                <td>
                                    <xsl:value-of select="PRICE"/>
                                </td>
                                <td>
                                    <xsl:value-of select="YEAR"/>
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

                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>