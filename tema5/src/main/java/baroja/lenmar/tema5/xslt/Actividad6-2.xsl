<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Receta Pad Thai</title>
                <link rel="stylesheet" type="text/css" href="styles.css"/>
            </head>
            <body>
                <h2>Receta Pad Thai</h2>

                <ul>
                    <xsl:for-each select="receta/ingrediente">
                        <li>
                            <xsl:value-of select="@nombre"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>