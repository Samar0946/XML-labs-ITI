<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="CATALOG">
        <table border="1">
            <tr>
                <th>Title</th>
                <th>Artist</th>
                <th>Country</th>
                <th>Company</th>
                <th>Price</th>
                <th>Year</th>
            </tr>
            <xsl:for-each select="CD">
                <xsl:sort select="PRICE" data-type="number" order="descending"></xsl:sort>
                    <tr>
                        <td><xsl:value-of select="Title"/></td>
                        <td><xsl:value-of select="Artist"/></td>
                        <td><xsl:value-of select="Country"/></td>
                        <td><xsl:value-of select="Company"/></td>
                        <td><xsl:value-of select="Price"/></td>
                        <td><xsl:value-of select="Year"/></td>
                    </tr>      
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>