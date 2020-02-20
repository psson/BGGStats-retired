<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">


	<html>
		<body>
			<h1>Mina spel</h1>
			<h2>Närmast mål för H-index (34)</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item[numplays &lt; 34 and numplays &gt; 20]">
				<xsl:sort select="numplays" order="descending" data-type="number"/>
					<tr>
						<td>
							<a><xsl:attribute name="href">
							<xsl:value-of select="concat('http://www.boardgamegeek.com/boardgame/',@objectid)"/></xsl:attribute>
							<xsl:value-of select="name"/>
							</a>
						</td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
			</table>
			<h2>Alla spel</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item">
				<xsl:sort select="name" order="ascending" data-type="text"/>
					<xsl:choose>
					<xsl:when test="status/@own=1">
					<tr>
						<td  bgcolor="#00ff00">
							<a><xsl:attribute name="href">
							<xsl:value-of select="concat('http://www.boardgamegeek.com/boardgame/',@objectid)"/></xsl:attribute>
							<xsl:value-of select="name"/>
							</a>
						</td>
						<td  bgcolor="#00ff00"><xsl:value-of select="numplays"/></td>
					</tr>
					</xsl:when>
					<xsl:otherwise>
					<tr>
						<td>
							<a><xsl:attribute name="href">
							<xsl:value-of select="concat('http://www.boardgamegeek.com/boardgame/',@objectid)"/></xsl:attribute>
							<xsl:value-of select="name"/>
							</a>
						</td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
					</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</table>
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>