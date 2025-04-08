<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simpleA4" page-height="29.7cm" page-width="21cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
                    <fo:region-body region-name="xsl-region-body" margin-bottom="3cm"/>
                    <fo:region-after region-name="xsl-region-after" extent="1.5cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simpleA4">
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block text-align="right" background-color="#884ea0" color="#f9e79f" font-size="10pt">Actividad 6.5 de Arantxa Reinoso Página: 1</fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="14pt" font-weight="bold" text-align="center" margin-bottom="10pt">Lista de ciudades de Arantxa Reinoso</fo:block>
                    <fo:table border-collapse="collapse" border-width="1pt" border-style="solid">
                        <fo:table-column column-width="5cm"/>
                        <fo:table-column column-width="5cm"/>
                        <fo:table-header>
                            <fo:table-row background-color="#884ea0" color="#f9e79f">
                                <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                    <fo:block font-weight="bold">Provincia</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                    <fo:block font-weight="bold">Temperatura máxima</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                    <fo:block font-weight="bold">Temperatura mínima</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                    <fo:block font-weight="bold">Sensación termica</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                    <fo:block font-weight="bold">Viento</fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                    <fo:block font-weight="bold">Humedad relativa</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>
                        <fo:table-body>
                            <xsl:for-each select="ciudades/ciudad">
                                <fo:table-row>
                                    <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                        <fo:block>Madrid</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                        <fo:block><xsl:value-of select="prediccion/temperatura/maxima"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                        <fo:block><xsl:value-of select="prediccion/temperatura/minima"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                        <fo:block><xsl:value-of select="habitantes"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                        <fo:block><xsl:value-of select="habitantes"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="1pt" border-style="solid" padding="5pt">
                                        <fo:block><xsl:value-of select="habitantes"/></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>