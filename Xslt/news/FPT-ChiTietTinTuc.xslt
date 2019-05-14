<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tintuc-ct-1">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="main-news">
							<div class="title">
								<h1>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
									<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h1>
								<time>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>
							</div>
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
							<div class="tags">
								<xsl:apply-templates select="/NewsDetail/Tags"></xsl:apply-templates>
							</div>
							<div class="social-sharing">
								<div class="fb-like" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true">
									<xsl:attribute name="data-href">
										<xsl:value-of select="FullUrl"></xsl:value-of>
									</xsl:attribute>
								</div>
							</div>
						</div>
						<h3 class="title-lienquan">
							<xsl:value-of select="/NewsDetail/RelatedNewsText"></xsl:value-of>
						</h3>
						<div class="row">
							<xsl:apply-templates select="/NewsDetail/NewsRelated"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="tintuc-khac">
							<h2 class="title">
								<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
							</h2>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="thumbs-item">
			<figure>
				<div class="box-img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
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
				</div>
				<figcaption>
					<h5>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="Tags">
		<a>
		
      <xsl:attribute name="href">
        <xsl:value-of select="Url"/>
      </xsl:attribute>
			<xsl:value-of select="Tag" />
		</a>
	</xsl:template>
	<xsl:template match="NewsRelated">
		<div class="col-12 col-md-4">
			<div class="news-item">
				<figure>
					<div class="box-img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h5>
							<a href="javascript:void(0)">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</h5>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>