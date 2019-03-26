<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match='Zone'>
		<xsl:if test='position()=3'>
			<xsl:text disable-output-escaping='yes'>
				&lt;section class=&quot;fpt-daotao-ct3&quot;&gt;&lt;div class=&quot;container&quot;&gt;&lt;div
				class=&quot;row no-gutters&quot;&gt;&lt;div class=&quot;col-lg-6&quot;&gt;&lt;div
				class=&quot;lo-trinh-wrapper&quot;&gt;
			</xsl:text>
			<h2>
				<xsl:value-of select='Title'></xsl:value-of>
			</h2>
			<div class="lo-trinh-content">
				<div class="step-wrapper">
					<xsl:apply-templates select='News' mode="ZoneNews3"></xsl:apply-templates>
				</div>
				<div class="summary">
					<xsl:value-of select='Description' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/div&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test='position()=4'>
			<xsl:text disable-output-escaping='yes'>
				&lt;div class=&quot;col-lg-6&quot;&gt;&lt;div class=&quot;khac-biet-wrapper&quot;&gt;
			</xsl:text>
			<h2>
				<xsl:value-of select='Title'></xsl:value-of>
			</h2>
			<div class="content">
				<xsl:apply-templates select='News' mode='ZoneNews4'></xsl:apply-templates>
			</div>
			<xsl:text disable-output-escaping='yes'>
				&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;
			</xsl:text>
		</xsl:if>
		<xsl:if test='position()=5'>
			<section class="fpt-daotao-ct4">
				<div class="container">
					<div class="section-wrapper">
						<h2>
							<xsl:value-of select='Title'></xsl:value-of>
						</h2>
						<div class="program-table">
							<table>
								<thead>
									<tr>
										<th>
											&#160;
										</th>
										<th>học phần</th>
										<th>kỹ năng đạt được</th>
									</tr>
								</thead>
								<tbody>
									<xsl:apply-templates select='News' mode='ZoneNews5'></xsl:apply-templates>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test='position()=6'>
			<section class="fpt-daotao-ct5">
				<div class="container">
					<div class="section-wrapper">
						<xsl:value-of select='Description' disable-output-escaping='yes'></xsl:value-of>
					</div>
				</div>
				<div class="content-wrapper">
					<xsl:apply-templates select='News' mode='ZoneNews6'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test='position()=7'>
			<section class="fpt-daotao-ct6">
				<div class="container">
					<div class="section-wrapper">
						<xsl:value-of select='Description' disable-output-escaping='yes'></xsl:value-of>
						<div class="row">
							<xsl:apply-templates select='News' mode='ZoneNews7'></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match='News' mode='ZoneNews3'>
		<div class="step">
			<div class="content">
				<span>
					<xsl:value-of select='Title'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</span>
				<span>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</span>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews4'>
		<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
	</xsl:template>

	<xsl:template match='News' mode='ZoneNews5'>
		<tr>
			<td>
				<xsl:value-of select='Title'></xsl:value-of>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</td>
			<td data-title="học phần">
				<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
			</td>
			<td data-title="kỹ năng đạt được">
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews6'>
		<div class="img">
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
		<div class="content">
			<div class="container">
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				<h3>
					<xsl:value-of select='Title'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</h3>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews7'>
		<div class="col-lg-6">
			<div class="feedback-item">
				<div class="img">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="content">
					<div class="name">
						<xsl:value-of select='Title'></xsl:value-of>
					</div>
					<div class="job">
						<xsl:value-of select='SubTitle'></xsl:value-of>
					</div>
					<div class="feedback">
						<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
					</div>
					<a class="view-more" href="javascript:;" data-fancybox="feedback">
						<xsl:attribute name='data-src'>
							<xsl:text>#feedback-</xsl:text>
							<xsl:value-of select='position()'></xsl:value-of>
						</xsl:attribute>
						+
					</a>
				</div>
				<div class="hidden-content" id="feedback-1">
					<xsl:attribute name='id'>
						<xsl:text>feedback-</xsl:text>
						<xsl:value-of select='position()'></xsl:value-of>
					</xsl:attribute>
					<div class="img">
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<div class="name">
						<xsl:value-of select='Title'></xsl:value-of>
					</div>
					<div class="job">
						<xsl:value-of select='SubTitle'></xsl:value-of>
					</div>
					<div class="feedback">
						<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>