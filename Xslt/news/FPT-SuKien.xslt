<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2>
			<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
		</h2>
		<div class="event-slider">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
			<div class="swiper-navigation">
				<div class="swiper-prev"><span class="mdi-chevron-left"></span></div>
				<div class="swiper-next"><span class="mdi-chevron-right"></span></div>
			</div>
		</div>

	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<article class="event-item">
				<div class="img">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ThumbnailUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="summary">
					<div class="date">
						<span class="month">
							<xsl:text>t</xsl:text>
							<xsl:value-of select='CreatedMM'></xsl:value-of>
						</span>
						<span class="day">
							<xsl:value-of select='CreatedDD'></xsl:value-of>
						</span>
					</div>
					<h3>
						<a>
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select='Title'>
							</xsl:value-of>
						</a>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h3>
					<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</article>
		</div>
	</xsl:template>
</xsl:stylesheet>