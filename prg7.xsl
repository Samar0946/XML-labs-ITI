<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0"> 
   <xsl:template match="xslTutorial">
        <xsl:for-each select="SECTION">
            <xsl:choose>
                <xsl:when test="SUMMARY">
                    <xsl:value-of select="SUMMARY"/>
                    <br/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:for-each select="DATA">
                        <xsl:value-of select="."/>
                        <br/>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>