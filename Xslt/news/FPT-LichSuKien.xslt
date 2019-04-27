<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2>Lịch sự kiện</h2>
		<select id="tags" class="form-control" multiple="multiple" style="margin-bottom: 30px"></select>
		<div id="calendar"></div>
		<!--<select id="cates" class="form-control" multiple="multiple"></select>-->
		<div class="event-calendar">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="event-item">
			<div class="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</div>
			<div class="start">
				<xsl:value-of select="SubTitle"></xsl:value-of>
			</div>
			<div class="end">
				<xsl:value-of select="FileUrl"></xsl:value-of>
			</div>
			<div class="url">
				<xsl:value-of select="Url"></xsl:value-of>
			</div>
			<div class="description">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>