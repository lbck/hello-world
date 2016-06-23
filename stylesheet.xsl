<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" encoding="UTF-8" />

	<xsl:template match="/">
		<html>
			<head>
				<title>Adressbuch</title>
				<style>
					.table, tr, td, th{
					border: 2px solid black;
					}
				</style>
			</head>

			<table style="border: 2px solid black">

				<tr>
					<th>Nr.</th>
					<th>Anrede</th>
					<th>Vorname</th>
					<th>Name</th>
					<th>Beruf</th>
					<th>Tel. Privat</th>
				</tr>
				<xsl:for-each select="/ADRESSBUCH/PERSON">
				<xsl:sort select="VOLLER_NAME/NAME" />

					<tr>
						<td>
							<xsl:value-of select="position()" />
						</td>
						<td>
							<xsl:value-of select="ANREDE/@TITEL" />
						</td>
						<td>
							<xsl:value-of select="VOLLER_NAME/VORNAME" />

						</td>

						<td>
							<xsl:value-of select="VOLLER_NAME/NAME" />

						</td>

						<td>
							<xsl:value-of select="BERUF/@BEZEICHNUNG" />

						</td>

						<td>
							<xsl:value-of select="KONTAKT/TELEFON/TELEFON_PRIVAT" />

						</td>
					</tr>

				</xsl:for-each>
				
			</table>
		</html>
	</xsl:template>
	
	
	
	<xsl:template name="ausgeben">
		<xsl:param name="Nr"/>
		<xsl:param name="Anrede"/>
		<xsl:param name="Vorname"/>
		<xsl:param name="Name"/>
		<xsl:param name="Beruf"/>
		<xsl:param name="Tel"/>
		
		
	</xsl:template> 



</xsl:stylesheet>