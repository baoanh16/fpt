<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="tuyensinh-wrapper">
			<h2>
				<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			<div class="flex-center">
				<a class="btn-more" href="/hoat-dong-huong-nghiep">
				<span><xsl:value-of select="/NewsList/ViewAllText" disable-output-escaping="yes"></xsl:value-of></span>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<article class="news-item">
			<div class="img">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="content">
				<h6>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="ZoneUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="ZoneTitle"></xsl:value-of>
					</a>
				</h6>
				<h4>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
				</h4>
				<p>
					<xsl:value-of select="BriefContent"></xsl:value-of>
				</p>
			</div>
		</article>
	</xsl:template>
</xsl:stylesheet>