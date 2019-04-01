<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="list-nav">
			<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<a class="nav-item">
			<xsl:attribute name='href'>
				<xsl:value-of select='Url'></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='SecondImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
			<span>
				<xsl:value-of select='Title'></xsl:value-of>
			</span>
		</a>
	</xsl:template>

</xsl:stylesheet>