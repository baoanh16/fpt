<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h1>
			<xsl:value-of select='/ZoneList/ModuleTitle'></xsl:value-of>
		</h1>
		<div class="row">
			<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match='Zone'>
		<div class="col-md-6">
			<figure>
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>

					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
					<figcaption>
						<xsl:value-of select='Title'></xsl:value-of>
					</figcaption>
				</a>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>