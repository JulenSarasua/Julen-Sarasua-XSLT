<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
    
    <xsl:template match="/club_voleibol" >
        <html lang="es">
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta name="description" content="Página principal" />
                <title>Club de Voleibol</title>
            </head>
            <body>
                <header>
                    <img src="../img/logotipo.png" alt="Club de Voleibol" />
                    <nav>
                        <a href="tienda.xsl">Tienda</a>
                        <a href="equipos.xsl">Equipos</a>
                        <a href="partidos.xsl">Partidos</a>
                    </nav>
                </header>
                <main class="principal">
                    <xsl:for-each select="tienda/articulo">
                        <article>
                            <section>
                                <img class="articulo" src="../img/{@foto}"/>			
                            </section>
                            <section>
                                <h2><xsl:value-of select="precio"/> €</h2>
                                <h3>Comentarios: <xsl:value-of select="count(comentarios)"/></h3>
                                <ul>
                                    <xsl:for-each select="comentarios">
    									<li>
       										<xsl:value-of select="@fecha"/>: 
        									<xsl:value-of select="."/>
   										</li>
									</xsl:for-each>
                                </ul>
                            </section>
                        </article>
                    </xsl:for-each>
                </main>
                <footer>
                    <address>&#169; Desarrollado por <a href="mailto:info@birt.eus">info@birt.eus</a></address>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
