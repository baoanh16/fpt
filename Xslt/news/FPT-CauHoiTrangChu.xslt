<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="cauhoi-wrapper">
			<h2>
				<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<ul>
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</ul>
			<div class="flex-center">
				<a class="btn-more" href="/tuyen-sinh/hoi-dap">
					<span>xem tất cả</span>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<li>
			<p>
				<a>
					<xsl:attribute name="href">
						<xsl:text>/tuyen-sinh/hoi-dap</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
			</p>
		</li>
	</xsl:template>
</xsl:stylesheet>