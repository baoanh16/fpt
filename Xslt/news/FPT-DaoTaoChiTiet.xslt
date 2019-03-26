<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match='Zone'>
		<xsl:if test="position() = 1">
			<xsl:text disable-output-escaping='yes'>
				&lt;section class=&quot;fpt-daotao-ct1&quot;&gt;&lt;div class=&quot;container&quot;&gt;&lt;div
				class=&quot;section-wrapper&quot;&gt;&lt;div class=&quot;row&quot;&gt;&lt;div
				class=&quot;col-lg-7&quot;&gt;&lt;div class=&quot;prospects&quot;&gt;
			</xsl:text>
			<h2>
				<xsl:value-of select='Title'></xsl:value-of>
			</h2>
			<xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/div&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 2">
			<xsl:text disable-output-escaping='yes'>
				&lt;div class=&quot;col-lg-5&quot;&gt;&lt;div class=&quot;jobs&quot;&gt;
			</xsl:text>
			<h2>
				<xsl:value-of select='Title'></xsl:value-of>
			</h2>
			<xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;
			</xsl:text>
		</xsl:if>
	</xsl:template>




	<xsl:template match='News' mode='ZoneNews1'>
		<div class="content">
			<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
			<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews2'>
		<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
		<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>