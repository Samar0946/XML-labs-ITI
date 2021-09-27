<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="books">
        <table border="1">
            <tr>
                <th>Author</th>
                <th>Title</th>
                <th>Price</th>
            </tr>
            <xsl:for-each select="book">
                <tr>
                <td><xsl:value-of select="author"/></td>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="price"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>