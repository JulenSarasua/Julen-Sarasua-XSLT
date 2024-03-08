<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
    
    <xsl:variable name="entrenador" select="/club_voleibol/equipo[entrenador/nombre = 'Julio Velasco']/entrenador/nombre" />

    <xsl:template match="/club_voleibol">
        <html lang="es">
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta charset="utf-8"/>
                <meta name="description" content="Página principal" />
                <title>titulo de la web</title>
            </head>

            <body>
                <header>
                    <img src="../img/logotipo.png" alt="Reservas" />
                    <a href="tienda.xml">Tienda</a>
                    <a href="equipos.xml">Equipos</a>
                    <a href="partidos.xml">Partidos</a>
                </header>

                <main>
                    <h1><a href="{/club_voleibol/equipo/entrenador/url}"><xsl:value-of select="$entrenador" /></a></h1>
                    <article class="equipos">
                        <h4><xsl:value-of select="/club_voleibol/equipo/nombre" /></h4>
                        <xsl:for-each select="/club_voleibol/equipo[entrenador/nombre = 'Julio Velasco']/jugadores/jugador[@titular='si']">
                            <p><xsl:value-of select="concat(@camiseta, ' - ', nombre)" /></p>
                        </xsl:for-each>
                    </article>
                </main>

                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
