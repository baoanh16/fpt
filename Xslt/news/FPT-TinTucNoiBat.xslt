<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h1 class="title">
			<xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
		</h1>
		<div class="row">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test='position()=1'>
			<div class="col-lg-6">
				<div class="news-item">
					<figure>
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
						<figcaption>
							<h6>tên chuyên mục</h6>
							<h4>
								<a>
									<xsl:attribute name='href'>
										<xsl:value-of select='Url'></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select='Title'></xsl:value-of>
								</a>
							</h4>
							<p>
								<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
		<xsl:if test='position()=2'>
			<xsl:text disable-output-escaping='yes'>
				&lt;div class="col-lg-6"&gt;&lt;div class="row"&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test='position()>1'>
			<div class="col-12 col-sm-6">
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
							<h6><a href="javascript:void(0)">tên chuyên mục</a></h6>
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
		<xsl:if test='position()=last()'>
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/div&gt;
			</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>