<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="fpt-event-detail">
			<div class="container">
				<div class="section-wrapper">
					<div class="row detail-row">
						<div class="col-lg-5">
							<div class="event-poster">
								<xsl:apply-templates select='/NewsDetail/NewsImages'></xsl:apply-templates>

							</div>
						</div>
						<div class="col-lg-7">
							<article class="event-detail">
								<h1>
									<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
									<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'>
									</xsl:value-of>
								</h1>
								<div class="list-info">
									<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'>
									</xsl:value-of>
								</div>
								<div class="fullcontent">
									<xsl:apply-templates select='/NewsDetail/NewsAttributes' mode="FullContent">
									</xsl:apply-templates>
								</div>
							</article>
							<div class="social-sharing">
								<div class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/"
									data-layout="button_count" data-size="small">
									<xsl:attribute name='data-href'>
										<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
									</xsl:attribute>
									<a class="fb-xfbml-parse-ignore" target="_blank">
										<xsl:attribute name='href'>
											<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
											<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
											<xsl:text>&amp;src=sdkpreparse</xsl:text>
										</xsl:attribute>
										Chia sẻ
									</a>
								</div>
							</div>
              <div>
                <xsl:apply-templates select='/NewsDetail/Tags'>
                </xsl:apply-templates>
              </div>
							<div class="contact">
								<xsl:apply-templates select='/NewsDetail/NewsAttributes' mode="Contact">
								</xsl:apply-templates> 
							</div>
						</div>
					</div>
					<div class="related-new">
						<h2>sự kiện khác</h2>
						<div class="row">
							<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
  <xsl:template match="Tags">
    <span>
      <xsl:value-of select="Tag"/>
    </span>
  </xsl:template>
	<xsl:template match="NewsOther">
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

	<xsl:template match="NewsImages">
		<xsl:if test="position()=1">
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsAttributes" mode="FullContent">
		<xsl:if test="position()=1">
			<xsl:value-of select='Content' disable-output-escaping='yes'></xsl:value-of>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsAttributes" mode="Contact">
		<xsl:if test="position()=2">
			<div class="title">
				<xsl:value-of select='Title'></xsl:value-of>:
			</div>
			<xsl:value-of select='Content' disable-output-escaping='yes'></xsl:value-of>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>