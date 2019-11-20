<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="ajaxresponse">
			<div class="title">
				<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
			</div>
			<div class="tabs-wrapper  ajaxresponsewrap">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
			<xsl:if test="/NewsList/NextPageUrl!=''">
				<div class="flex-center">
					<a class="btn-more ajaxpagerlink">
						<xsl:attribute name="href">
							<xsl:value-of select="/NewsList/NextPageUrl" />
						</xsl:attribute>
						<xsl:text>Xem thêm</xsl:text>
					</a>
				</div>
			</xsl:if>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="tabs-item">
			<div class="tabs-title">
				<xsl:attribute name="id">
					<xsl:text>#tab</xsl:text>
					<xsl:value-of select='NewsId'></xsl:value-of>
				</xsl:attribute>
				<span></span>
				<p>
					<xsl:value-of select="Title"></xsl:value-of>
				</p>
				<i class="lnr lnr-chevron-down"></i>
			</div>
			<div class="tabs-content">
				<p>
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>