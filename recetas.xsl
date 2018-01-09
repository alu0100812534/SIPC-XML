<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:template match="libro">
		<html>
			<head>
				<META HTTP-EQUIV="Content-Type" content="text/html; charset=utf-8"/>
			</head>
			<body>
        <h1>
					<b>
						<xsl:value-of select="info" />
					</b>
				</h1>
				<h2>
					<b>Recetas:</b>
				</h2>
				<xsl:for-each select="receta">
          <xsl:sort order="ascending" select="receta"/>
					<h3>
						Titulo:<font color="red"> <xsl:value-of select="titulo" /></font>
						<br />Ingredientes:
						<xsl:for-each select="ingredientes/ing">
              	<h4>
								  <xsl:value-of select="." />
				    		</h4>
						</xsl:for-each>
						<br />Elaboración:
						<xsl:value-of select="elaboracion" />
						<xsl:if test="elaboracion/anotaciones">
							<h4>Anotaciones:</h4>
							<xsl:for-each select="elaboracion/anotaciones/anota">
								<h4>
									<xsl:value-of select="." />
								</h4>
							</xsl:for-each>
						</xsl:if>
					</h3>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
