<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Los mejores coches del 2024</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
    </head>
    <body>
    <h2>Los mejores coches del 2024</h2>
    
    <table border="1">
        <tr>
            <th>Marca</th>
            <th>Web</th>
            <th>Modelo</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="vehiculos/vehiculo">
        <tr>
            <td><xsl:value-of select="marca"/></td>
            <td>
                <a href="{web}">
                    <xsl:value-of select="web"/>
                </a>
            </td>
            <td><xsl:value-of select="modelo"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>