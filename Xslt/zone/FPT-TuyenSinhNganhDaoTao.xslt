<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2>
			<xsl:value-of select='/ZoneList/ModuleTitle'></xsl:value-of>
		</h2>
		<div class="row no-gutters">
			<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="col-lg-6">
			<div class="description">
				<xsl:value-of select='Description' disable-output-escaping='yes'></xsl:value-of>
			</div>
		</div>
		<xsl:apply-templates select='Zone' mode='Child'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<div class="col-6 col-md-4 col-lg-3 item">
			<figure>
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<div class="img">
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='SecondImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</a>
				<figcaption>
					<h4>
						<xsl:value-of select='Title'></xsl:value-of>
					</h4>
					<ul>
						<xsl:apply-templates select='Zone' mode='ZoneChild'></xsl:apply-templates>
					</ul>
				</figcaption>

			</figure>
		</div>
	</xsl:template>
	<xsl:template match='Zone' mode='ZoneChild'>
		<li>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select='Title'></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>