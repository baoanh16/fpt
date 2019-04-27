<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="container bg pb-0">
			<h1 class="title">
				<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
			</h1>
		</div>
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position() = 1">
			<xsl:text disable-output-escaping="yes">&lt;div class=&quot;container bg pt-30&quot;&gt;&lt;div
				class=&quot;row&quot;&gt;&lt;div class=&quot;col-lg-6&quot;&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 1">
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
								<xsl:attribute name="target">
									<xsl:value-of select="Target"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h4>
						<p>
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
						<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position() = 2">
			<a class="news-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</xsl:if>
		<xsl:if test="position() = 2">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 3">
			<xsl:text disable-output-escaping="yes">&lt;div class=&quot;col-lg-6&quot;&gt;&lt;div
				class=&quot;row&quot;&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() > 2 and position() &lt; 7">
			<div class="col-12 col-md-6">
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
									<xsl:attribute name="target">
										<xsl:value-of select="Target"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select="Title"></xsl:value-of>
								</a>
							</h5>
							<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
							</p>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:text disable-output-escaping="yes">
				&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:text disable-output-escaping="yes">
				&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 6">
			<div class="col-12 col-md-3">
				<div class="news-item">
					<h5 class="mobile-title">
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
					</h5>
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
							<h5 class="desktop-title">
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
								<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
							</h5>
							<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
							</p>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=last()">
			<xsl:text disable-output-escaping="yes">
				&lt;/div&gt;&lt;/div&gt;
			</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>