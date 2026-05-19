<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Test</title>
                <link rel="stylesheet" href="../../../todo.css" type="text/css" />
                <link rel="stylesheet" href="../../../Fonts/Porsche_Next/porsche_next.css"
                    type="text/css" />
                <link rel="icon" type="image/png" href="../../../Images/EngineHUB.png" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"></link>
            </head>
            <body>
                <header>
                    <nav class="menuprincipal">
                        <ul>
                            <li>
                                <a href="../../index.html">Inicio</a>
                            </li>
                            <li>
                                <a href="../../Engines/Unity/unity.html">Unity</a>
                            </li>
                            <li>
                                <a href="../../Engines/Unreal_Engine/unreal_engine.html">Unreal
                                    Engine</a>
                            </li>
                            <li>
                                <a href="../../Engines/CryEngine/cryengine.html">CryEngine</a>
                            </li>
                            <li>
                                <a href="../../Engines/Godot/godot.html">Godot</a>
                            </li>
                            <li>
                                <a href="../../Engines/GameMaker/gamemaker.html">GameMaker</a>
                            </li>
                            <li>
                                <a href="../../Test/XML/test.xml">Test</a>
                            </li>
                        </ul>
                    </nav>
                </header>
                <h1>Cuestionario de Motores</h1>
                <form>
                    <xsl:for-each select="//Row[not(id = preceding-sibling::Row/id)]">
                        <div style="border:1px solid black; margin:10px; padding:10px;">
                            <p>
                                <strong>Pregunta <xsl:value-of select="id" />: </strong>
                                <xsl:value-of select="question_text" />
                            </p>
                            <ul class="test">
                                <xsl:for-each select="//Row[id = current()/id]">
                                    <li>
                                        <input type="radio">
                                            <xsl:attribute name="name"> p<xsl:value-of select="id" />
                                            </xsl:attribute>
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="answer_text" />
                                            </xsl:attribute>
                                        </input>
                                        <xsl:value-of select="answer_text" />
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </xsl:for-each>
                    <input type="submit" value="Enviar respuestas" />
                </form>
                <footer class="footer">
                    <div class="redes">
                        <a href="../../index.html">
                            <i class="fa-brands fa-square-github"></i>
                        </a>
                        <a href="../../index.html">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                        <a href="../../index.html">
                            <i class="fa-brands fa-x-twitter"></i>
                        </a>
                    </div>
                    <p>Copyright © 2025 - 2026 EngineHUB</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>