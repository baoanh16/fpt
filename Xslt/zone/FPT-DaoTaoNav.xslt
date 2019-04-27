<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="count(Zone) > 1 and IsActive='true' ">
			<nav class="fpt-nav ">
				<div class="container">
					<div class="nav-wrapper">
						<h2>lựa chọn chuyên ngành</h2>
						<ul class="nav animated hiddenV slow" data-scroll-class="visible heartBeat">
							<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
						</ul>
					</div>
				</div>
			</nav>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name='class'>
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select='Title'></xsl:value-of>
			</a>
		</li>
	</xsl:template>



</xsl:stylesheet>