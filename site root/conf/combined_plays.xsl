<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">


	<html>
		<body>
			<h1>Mina spelomgångar</h1>
			<h2>Normal 10x10 2020</h2>
			<table border="1">
				<tr>
					<th>Spel</th><th>Datum</th>
				</tr>
				<tr>
				<td>Eldritch Horror</td>
				<xsl:for-each select="//item[@objectid='146021']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
				<tr>
				<td>Quarto</td>
				<xsl:for-each select="//item[@objectid='681']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
				<tr>
				<td>Ganz Schön Clever</td>
				<xsl:for-each select="//item[@objectid='244522']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
				<tr>
				<td>Rising 5: Runes of Asteros</td>
				<xsl:for-each select="//item[@objectid='185196']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr><tr>
				<td>Pandemic: Fall of Rome</td>
				<xsl:for-each select="//item[@objectid='260428']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
				<tr>
				<td>Codenames: Duet</td>
				<xsl:for-each select="//item[@objectid='224037']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr><tr>
				<td>Jaipur</td>
				<xsl:for-each select="//item[@objectid='54043']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
				<tr>
				<td>Blossoms</td>
				<xsl:for-each select="//item[@objectid='245710']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
				<tr>
				<td>San Juan 2nd edition</td>
				<xsl:for-each select="//item[@objectid='166669']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
				<tr>
				<td>Istanbul</td>
				<xsl:for-each select="//item[@objectid='148949']">
				<xsl:if test="not(position() > 10)">
					<td><xsl:value-of select="../@date"/></td>
				</xsl:if>
				</xsl:for-each>
				</tr>
			</table>
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>