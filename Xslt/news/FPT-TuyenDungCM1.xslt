<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<section class="tuyendung-1">
				<div class="container">
					<h1 class="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</h1>
					<div class="row">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
					<div class="flex-center" style="width: 100%;">
						<a class="btn-more">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<span>xem thêm</span>
						</a>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2">
			<section class="tuyendung-2">
				<div class="container">
					<h1 class="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</h1>
					<div class="table">
						<table>
							<thead>
								<tr>
									<th>Doanh nghiệp</th>
									<th>Vị trí tuyển dụng</th>
									<th>Hạn nộp hồ sơ</th>
								</tr>
							</thead>
							<tbody>
								<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">
				&lt;div class=&quot;col-lg-6&quot;&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()=1">
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
						<p>
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
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
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">
				&lt;/div&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">
				&lt;div class=&quot;col-lg-6&quot;&gt;&lt;div class=&quot;row&quot;&gt;
			</xsl:text>
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
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() = 6">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<tr>
			<td>

				<xsl:value-of select="SubTitle"></xsl:value-of>
			</td>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>