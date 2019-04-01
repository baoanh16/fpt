<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match='Zone'>
		<xsl:if test='position() &lt; 10'>
			<section class="tintuc-2-wrapper">
				<div class="container">
					<div class="tintuc-2">
						<div class="title">
							<h4>
								<xsl:value-of select='Title'></xsl:value-of>
							</h4>
							<a class="more" href="javascript:void(0)">
								<xsl:attribute name='href'>
									<xsl:value-of select='Url'></xsl:value-of>
								</xsl:attribute>
								xem tất cả
							</a>
						</div>
						<div class="row">
							<xsl:if test='position() &lt; 9'>
								<xsl:apply-templates select='News' mode='ZoneNews1'></xsl:apply-templates>
							</xsl:if>
							<xsl:if test='position()=9'>
								<xsl:apply-templates select='News' mode='ZoneNews2'></xsl:apply-templates>
							</xsl:if>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test='position()= 10'>
			<section class="slide-1">
				<div class="container">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select='News' mode='ZoneNews3'></xsl:apply-templates>
						</div>
					</div>
					<div class="navigation"><i class="lnr lnr-chevron-left"></i><i class="lnr lnr-chevron-right"></i>
					</div>
					<div class="flex-center">
						<a class="btn-more">
							<xsl:attribute name='href'>
								<xsl:value-of select='Url'></xsl:value-of>
							</xsl:attribute>
							<span>Xem tất cả</span>
						</a>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews1'>
		<xsl:if test='position() &lt; 4'>
			<div class="col-12 col-sm-6 col-md-4">
				<div class="news-item">
					<figure>
						<div class="box-img">
							<img>
							<xsl:attribute name='src'>
								<xsl:value-of select='ImageUrl'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='alt'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<h5>
								<a>
									<xsl:attribute name='href'>
										<xsl:value-of select='Url'></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select='Title'></xsl:value-of>
								</a>
							</h5>
							<time>
								<xsl:value-of select='CreatedDate'></xsl:value-of>
							</time>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews2'>
		<div class="col-md-6 col-lg-3">
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
	<xsl:template match='News' mode='ZoneNews3'>
		<div class="swiper-slide">
			<div class="item">
				<figure>
					<a class="box-img" data-fancybox=''>
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
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>