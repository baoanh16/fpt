<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">
			<div class="doitac-slider">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select='/BannerList/Banner'></xsl:apply-templates>
					</div>
				</div>
				<div class="swiper-navigation">
					<div class="swiper-prev"><span class="mdi-chevron-left"></span></div>
					<div class="swiper-next"><span class="mdi-chevron-right"></span></div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="banner">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>