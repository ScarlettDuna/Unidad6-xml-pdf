<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Predicción tiempo Madrid, España</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
    </head>
    <body>
    <h2>Predicción tiempo <xsl:value-of select="root/nombre"/>, <xsl:value-of select="root/provincia"/></h2>
    <img src="./imagenTiempo.jpg" />
    
    <table border="1">
        <tr>
            <th>Fecha</th>
            <th>Temperatura máxima</th>
            <th>Temperatura mínima</th>
            <th>Sensación termica</th>
            <th>Viento</th>
        </tr>
        <tr>
            <td><xsl:value-of select="root/prediccion/dia/@fecha"/></td>
            <td><xsl:value-of select="root/prediccion/dia/temperatura/maxima"/></td>
            <td><xsl:value-of select="root/prediccion/dia/temperatura/minima"/></td>
            <td>Entre <xsl:value-of select="root/prediccion/dia/sens_termica/maxima"/>y <xsl:value-of select="root/prediccion/dia/sens_termica/minima"/></td>
            <td><xsl:value-of select="root/prediccion/dia/viento"/></td>
        </tr>
    </table>
    <h4>Hecho por Arantxa Reinoso Garayalde</h4>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>