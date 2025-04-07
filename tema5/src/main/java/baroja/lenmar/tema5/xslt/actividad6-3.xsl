<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Curriculum Vitae</title>
                <link rel="stylesheet" type="text/css" href="styles6-3.css" />
            </head>
            <body>
                <div class="container">
                    <h2>Curriculum vitae de <br/>
                    <xsl:value-of select="curriculum/nombre" /></h2>
                    <p>Teléfono: <xsl:value-of select="curriculum/telefono" /></p>

                    <h3>Experiencia Laboral</h3>
                    <ol>
                    <xsl:for-each select="curriculum/experiencia-profesional/experiencia">
                        <li>
                        <ul>
                            <li>
                            Puesto: <xsl:value-of select="puesto" />
                            </li>
                            <li>
                            Empresa: <xsl:value-of select="empresa" />
                            </li>
                            <li>
                            Año Inicio: <xsl:value-of select="anio-inicio" />
                            </li>
                            <li>
                            Año Final: <xsl:value-of select="anio-final" />
                            </li>
                        </ul>
                        </li>
                    </xsl:for-each>
                    </ol>

                    <h3>Experiencia Laboral</h3>
                    <ol>
                        <xsl:for-each select="curriculum/experiencia-profesional/experiencia">
                            <li>
                            <ul>
                                <li> Puesto: <xsl:value-of select="puesto" />
                                </li>
                                <li> Empresa: <xsl:value-of select="empresa" />
                                </li>
                                <li> Año Inicio: <xsl:value-of select="anio-inicio" />
                                </li>
                                <li> Año Final: <xsl:value-of select="anio-final" />
                                </li>
                            </ul>
                            </li>
                        </xsl:for-each>
                    </ol>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>