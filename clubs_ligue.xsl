<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
            <h2> 
                <br> Les clubs de Ligue 1 <br> saison : <xsl:value-of select="(/championnat/@annee)-1"/>-<xsl:value-of select="/championnat/@annee"/> </br>
            </h2>
            <table border="1">
                <thead>
                    <tr>
                        <th> <br> ville </br> </th>
                        <th> <br> club </br> </th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="/championnat/clubs/club">
                        <tr>
                            <td>
                                <xsl:value-of select="ville"/>
                            </td>
                            <td>
                                <xsl:value-of select="nom"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>