<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="title">
			<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
		</div>
		<div class="ajaxresponse">
			<div class="row ajaxresponsewrap">
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
		<div class="col-12 col-md-6 col-lg-4">
			<div class="item">
				<figure>
					<a class="box-img" href="https://youtu.be/IKx5CvIayV0" data-fancybox="">
						<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						<p><xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of></p>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>