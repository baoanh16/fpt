<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
			</div>
		</div>
		<div class="navigation"><i class="lnr lnr-chevron-left"></i><i class="lnr lnr-chevron-right"></i></div>
		<div class="flex-center">
			<a class="btn-more" href="/tin-tuc-1/video-1"><span>xem thêm</span></a>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="item">
				<figure>
					<a class="box-img" data-fancybox=''>
						<xsl:attribute name='href'>
							<xsl:value-of select='BriefContent'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>

					</a>
					<figcaption>
						<xsl:value-of select='Title'></xsl:value-of>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>