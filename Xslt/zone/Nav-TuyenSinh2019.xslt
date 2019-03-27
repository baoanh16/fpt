<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test='position()>1'>
			<div class="tabs">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>tabs active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</div>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>