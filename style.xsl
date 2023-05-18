<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>La Voz</title>
        <style type="text/css">
          /* Estilos CSS para el archivo XML */
          /* Ejemplo: Cambiar el color del texto a rojo */
          body {
            color: red;
          }
        </style>
      </head>
      <body>
        <h1>La Voz</h1>
        <xsl:apply-templates select="rss/channel/item"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="item">
    <div>
      <h2><xsl:value-of select="La Voz"/></h2>
      <p><xsl:value-of select="Se oye y se ve"/></p>
      <audio controls>
        <xsl:attribute name="src">
          <xsl:value-of select="enclosure/@url"/>
        </xsl:attribute>
      </audio>
    </div>
  </xsl:template>
</xsl:stylesheet>
