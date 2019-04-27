<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tuyendung-ct">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="main-content">
							<div class="title">
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<hr />
							<div class="new-attributes">
								<div class="row">
									<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
								</div>
							</div>
							<hr />
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
							<div class="flex-center">
								<a class="btn-nop">
									<span>nộp hồ sơ</span>
								</a>
							</div>
							<iframe>
								<xsl:attribute name="src">
									<xsl:value-of select="/NewsDetail/ApplyUrl" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
							</iframe>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="row">
							<div class="col">
								<div class="vitri-khac">
									<div class="title">
										<xsl:value-of select="/NewsDetail/OtherPosition"></xsl:value-of>
									</div>
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<p>
					<xsl:value-of select="Title"></xsl:value-of>
				</p>
				<time>
					<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
				</time>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="attributes col-sm-6">
			<div class="attr-title">
				<xsl:value-of select="Title"></xsl:value-of>
			</div>
			<div class="attr-content">
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>