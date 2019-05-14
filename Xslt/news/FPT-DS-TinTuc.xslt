<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h1 class="title">
			<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
		</h1>
		<div class="ajaxresponse">
			<div class="news-list ajaxresponsewrap clearfix">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				<xsl:if test="/NewsList/NextPageUrl!=''">
					<div class="flex-center col-12">
						<a class="btn-more ajaxpagerlink">
							<xsl:attribute name="href">
								<xsl:value-of select="/NewsList/NextPageUrl" />
							</xsl:attribute>
							<xsl:text>Xem thêm</xsl:text>
						</a>
					</div>
				</xsl:if>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="news-item-wrapper">
			<div class="news-item">
				<h4 class="mobile-title">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
				</h4>
				<figure>
					<div class="box-img">
						<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h4 class="desktop-title">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Target"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</h4>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>