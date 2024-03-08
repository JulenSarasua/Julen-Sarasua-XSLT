<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
    
 

    <xsl:variable name="fechaPartido" select="//fecha" />
    <xsl:template match="/club_voleibol">
        <html lang="es">
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta name="description" content="Página principal" />
                <title>Partidos</title>
            </head>
            <body>
                <header>
                    <img src="../img/logotipo.png" alt="Reservas" />
                    <nav>
                        <a href="tienda.xsl">Tienda</a>
                        <a href="equipos.xsl">Equipos</a>
                        <a href="partidos.xsl">Partidos</a>
                    </nav>
                </header>
                <main>
                    <h1>PARTIDOS</h1>
                    <table>
                        <tr>
                            <th>PARTIDO</th>
                            <th>FECHA</th>
                            <th>RESULTADO</th>
                        </tr>
                        <xsl:for-each select="partido">
                            <tr>
                                <td><xsl:value-of select="equipos/local"/> - <xsl:value-of select="equipos/visitante"/></td>
                                <td><xsl:value-of select="fecha"/></td>
                                <xsl:choose>
                                    <xsl:when test="equipos/visitante/@puntuacion  > equipos/local/@puntuacion">
                                        <td class="azul"><xsl:value-of select="equipos/local/@puntuacion"/> - <xsl:value-of select="equipos/visitante/@puntuacion"/></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td><xsl:value-of select="equipos/local/@puntuacion"/> - <xsl:value-of select="equipos/visitante/@puntuacion"/></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>
                    </table>			
                </main>
                <footer>
                    <address>&#169; Desarrollado por <a href="mailto:info@birt.eus">info@birt.eus</a></address>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
