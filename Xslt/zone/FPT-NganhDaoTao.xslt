<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="row no-gutters">
			<div class="col-lg-6">
				<div class="description">
					<h3>
						<xsl:value-of select='/ZoneList/Title'></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of select='/ZoneList/Description' disable-output-escaping='yes'></xsl:value-of>
					</p>
				</div>
			</div>
			<xsl:apply-templates select="/ZoneList/Zone" mode="Child"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<div class="col-6 col-md-4 col-lg-3 item">
			<figure>
				<a class="img" style="display: block">
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
				</a>
				<figcaption>
					<h4>
						<xsl:value-of select='Title'></xsl:value-of>
					</h4>
					<xsl:if test="count(Zone) = 2">
						<ul>
							<xsl:apply-templates select='Zone' mode="Child-2"></xsl:apply-templates>
						</ul>
					</xsl:if>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Child-2">
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