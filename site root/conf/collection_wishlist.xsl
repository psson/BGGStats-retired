<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">


	<html>
		<body>
			<h1><a href="https://boardgamegeek.com/wishlist/psson73">Önskelistan på BGG</a></h1>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Prioritet</th>
					<th>Kommentar</th>
				</tr>
				<xsl:for-each select="items/item[status/@wishlistpriority &lt; 4]">
				<xsl:sort select="status/@wishlistpriority" order="ascending" data-type="number"/>
					<tr>
						<td>
							<a><xsl:attribute name="href">
							<xsl:value-of select="concat('http://www.boardgamegeek.com/boardgame/',@objectid)"/></xsl:attribute>
							<xsl:value-of select="name"/>
							</a>
						</td>
						<td><xsl:value-of select="status/@wishlistpriority"/></td>
						<td><xsl:value-of select="wishlistcomment"/></td>
					</tr>
				</xsl:for-each>
			</table>
			<h1>Bortvalda spel</h1>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Prioritet</th>
					<th>Kommentar</th>
				</tr>
				<xsl:for-each select="items/item[status/@wishlistpriority &gt; 4]">
				<xsl:sort select="status/@wishlistpriority" order="ascending" data-type="number"/>
					<tr>
						<td>
							<a><xsl:attribute name="href">
							<xsl:value-of select="concat('http://www.boardgamegeek.com/boardgame/',@objectid)"/></xsl:attribute>
							<xsl:value-of select="name"/>
							</a>
						</td>
						<td><xsl:value-of select="status/@wishlistpriority"/></td>
						<td><xsl:value-of select="wishlistcomment"/></td>
					</tr>
				</xsl:for-each>
			</table>
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>