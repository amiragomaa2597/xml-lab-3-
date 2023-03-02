<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/Employees">
<html>
	<head>
		<title></title>
	</head>
	<body>
		<h2>All Employees</h2>
		<table border="1">
			<tbody>
				<tr bgcolor="#9acd32">
					<th align="left">Name</th>
					<th align="left">Phone</th>
					<th align="left">E_mail</th>
					<th>Street</th>
					<th>Region</th>
					<th>City</th>
					<th>Country</th>
				</tr>
				<xsl:for-each select="Employee">
				<tr>
				  <td><xsl:value-of select="Name"/></td>
				  <td><xsl:value-of select="Phones/Phone[1]"/></td>
				  <td><xsl:value-of select="E_mail[1]"/></td>
				  <td><xsl:value-of select="Addresses/Address[1]/Street"/></td>
				  <td><xsl:value-of select="Addresses/Address[1]/Region"/></td>
				  <td><xsl:value-of select="Addresses/Address[1]/City"/></td>
				  <td><xsl:value-of select="Addresses/Address[1]/Country"/></td>
				</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
