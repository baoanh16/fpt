<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">
			<div class="campus-slider-wrapper">
				<div class="big-slider">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/BannerList/Banner" mode="BigThumb"></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-navigation">
						<div class="swiper-prev">
							<span class="mdi mdi-chevron-left"></span>
						</div>
						<div class="swiper-next">
							<span class="mdi mdi-chevron-right"></span>
						</div>
					</div>
				</div>
				<div class="small-slider">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/BannerList/Banner" mode="SmallThumb"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Banner" mode="BigThumb">
		<div class="swiper-slide">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
			<div class="description">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Banner" mode="SmallThumb">
		<div class="swiper-slide">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>