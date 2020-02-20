<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



	<html>
		<body>
			<h1>My BGG Collection</h1>
			<h2>Närmast mål för H-index (32)</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				
				<xsl:template match="item[@subtype='boardgame']">
				<xsl:for-each select="items/item[numplays='31']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='30']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='29']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='28']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='27']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='26']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='25']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='24']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				</xsl:template>
			</table>
			<h2>Närmast Friendless metric</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item[numplays='13']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='12']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='11']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='10']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='9']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
			</table>
			<h2>Närmast 10 omgångar</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item[numplays='9']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='8']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
				<xsl:for-each select="items/item[numplays='7']">
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
			</table>
			<h2>Ospelade</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item">
					<xsl:if test="numplays &lt; 1">
						<tr>
							<td><xsl:value-of select="name"/></td>
							<td><xsl:value-of select="numplays"/></td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			</table>
			<h2>Mest spelade</h2>
			<table border="1">
				<tr>
					<th>Spel</th>
					<th>Omgångar</th>
				</tr>
				<xsl:for-each select="items/item">
					<xsl:sort select="numplays" order="descending" data-type="number"/>
					<tr>
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="numplays"/></td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>

</xsl:stylesheet>