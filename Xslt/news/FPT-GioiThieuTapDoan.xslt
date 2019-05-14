<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<section class="fpt-about">
				<div class="container">
					<div class="section-wrapper">
						<h1>
							<xsl:value-of select="Title"></xsl:value-of>
						</h1>
						<xsl:if test="Description != ''">
							<div class="row" style="justify-content: center; margin-bottom: 20px; text-align: center;">
								<div class="col-lg-10 col-xl-8">
									<p><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></p>
								</div>
							</div>
						</xsl:if>
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2">
			<section class="fpt-about-2">
				<div class="container">
					<div class="section-wrapper">
						<div class="fpt-logo">
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<div class="orgranization-chart">
							<h2>
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<div class="btn-wrapper">
								<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="row nodes-list">
								<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-6 col-xl-4 statistic-col">
			<div class="statistic-item">
				<div class="statistic-title">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<span>
						<xsl:value-of select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</span>
				</div>
				<div class="statistic-body">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-md-3 node-col">
			<div class="parent-node">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
				<span>
					<xsl:value-of select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</span>
			</div>
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>