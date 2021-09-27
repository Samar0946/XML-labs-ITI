<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="books">
        <xsl:value-of select="count(book[review=3.5])"/>
            <br/>
            <xsl:value-of select="count(book[review=4])"/>
    </xsl:template>         
</xsl:stylesheet>