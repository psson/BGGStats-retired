<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">


	<html>
		<body>
			<h1>Min BGG-collection</h1>
			<h2>Ospelade spel</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
				</tr>
				<xsl:for-each select="items/item[numplays=0]">
					<tr>
						<td>
							<a><xsl:attribute name="href">
							<xsl:value-of select="concat('http://www.boardgamegeek.com/boardgame/',@objectid)"/></xsl:attribute>
							<xsl:value-of select="name"/>
							</a>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			<h2>Närmast under 10</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item[numplays &lt; 10 and numplays &gt; 5]">
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
			<h2>Närmast Friendless metric (20)</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item[numplays &lt; 23 and numplays &gt; 14]">
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
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>