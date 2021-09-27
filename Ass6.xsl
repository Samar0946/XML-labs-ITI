<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="CATALOG">
        <table border="1">
            <tr>
                <th>TITEL</th>
            </tr>
            <xsl:for-each select="CD">
                <xsl:choose>
                    <xsl:when test="PRICE &gt; 10">
                        <tr style="background-color:red">
                            <td><xsl:value-of select="TITLE"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr style="background-color:green">
                            <td><xsl:value-of select="TITLE"/></td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each> 
        </table>
    </xsl:template>
</xsl:stylesheet>