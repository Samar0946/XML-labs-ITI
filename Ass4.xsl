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
        </tr>
        <xsl:for-each select="CD">
            <xsl:if test="PRICE &gt; 10">
                <tr>
                    <td><xsl:value-of select="TITLE"/></td>
                    <td><xsl:value-of select="ARTIST"/></td>
                </tr>
            </xsl:if>
        </xsl:for-each>
     </table>
</xsl:template>
</xsl:stylesheet>