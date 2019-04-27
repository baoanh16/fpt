<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="thisinh-1">
			<div class="container">
				<h1 class="title">
					<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h1>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					<div class="col-12">
						<xsl:apply-templates select="/ZoneList/Zone" mode="ViewMore"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">
				&lt;div class="col-lg-9"&gt;
			</xsl:text>
			<div class="row">
				<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
			</div>
			<xsl:text disable-output-escaping="yes">
				&lt;/div&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">
				&lt;div class="col-lg-3"&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()>1">
			<a class="func-item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
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
						<xsl:value-of select="Title"></xsl:value-of>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
		<xsl:if test="position()=last()">
			<xsl:text disable-output-escaping="yes">
				&lt;/div&gt;
			</xsl:text>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="ViewMore">
		<xsl:if test="position()=1">
			<div class="flex-center">
				<a class="btn-more">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<span>xem thêm</span>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">
				&lt;div class=&quot;col-md-8&quot;&gt;
			</xsl:text>
			<div class="news-item">
				<figure>
					<div class="big-img">
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
						<h4>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</h4>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<a class="news-link" href="javascript:void(0)">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<xsl:text disable-output-escaping="yes">
				&lt;/div&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">
				&lt;div class="col-md-4"&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position() > 2">
			<div class="news-item">
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
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</h5>
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position()= last()">
			<xsl:text disable-output-escaping="yes">
				&lt;/div&gt;
			</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>