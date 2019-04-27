<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="fpt-tracuu">
			<div class="container">
				<div class="section-wrapper">
					<div class="row ajaxfilterresponse">
						<div class="col-lg-4">
							<div class="img">
								<img alt="Tra cứu" src="/Data/Sites/1/skins/default/img/thisinh/tracuu.png" />
							</div>
						</div>
						<div class="col-lg-8">
							<div class="tracuu-form">
								<h1>
									TRA CỨU KẾT QUẢ
								</h1>
								<div class="form-tabs">
									<ul>
										<xsl:apply-templates select="/Group/Group"></xsl:apply-templates>
									</ul>
									<xsl:apply-templates select="/Group/Group" mode="Content"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="col-12">
							<xsl:if test="count(/Group/Student)>0">
								<div class="results">
									<table style="width:100%">
										<thead>
											<tr>
												<xsl:apply-templates select="/Group/Col"></xsl:apply-templates>
											</tr>
										</thead>
										<tbody>
											<xsl:apply-templates select="/Group/Student"></xsl:apply-templates>
										</tbody>
									</table>
								</div>
							</xsl:if>
							<xsl:if test="count(/Group/Student) = 0">
								<div class="row">
									<div class="col-md-4"></div>
									<div class="col-md-8">
										<p class="error" style="display: none;margin-left: 8.333333%;margin-top: 30px;">
											Không tìm thấy kết quả!</p>
									</div>
								</div>
							</xsl:if>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Col">
		<td>
			<xsl:if test="RTL='1'">
				<xsl:attribute name="style">
					<xsl:text>text-align:right</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="Name" disable-output-escaping='yes'></xsl:value-of>
		</td>
	</xsl:template>
	<xsl:template match="Student">
		<tr>
			<xsl:apply-templates select="Property"></xsl:apply-templates>
		</tr>
	</xsl:template>
	<xsl:template match="Property">
		<td>
			<xsl:if test="RTL='1'">
				<xsl:attribute name="style">
					<xsl:text>text-align:right</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="Value"></xsl:value-of>
		</td>
	</xsl:template>
	<xsl:template match="Group" mode="Content">
		<div class="search-container">
			<xsl:attribute name="id">
				<xsl:text>tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="wrap-form">
				<xsl:apply-templates select="Option"></xsl:apply-templates>
			</div>
			<div class="wrap-form btn-wrap">
				<button class="ajaxsearchbutton btn btn-success">
					<xsl:attribute name="data-url">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:text>TRA CỨU THÔNG TIN</xsl:text>
				</button>
				<div class="btn-append">
					<span class="mdi-magnify"></span>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Group">
		<li>
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
		<!--<div class="filter-group clearfix">
      <div class="filter-title">
        <xsl:value-of select="Title"></xsl:value-of>
      </div>
      <xsl:choose>
        <xsl:when test="FieldType='1'">
          <div class="color-picker">
            <xsl:apply-templates select="Option" mode="Color"></xsl:apply-templates>
          </div>
        </xsl:when>
        <xsl:otherwise>
          <div class="product-size">
            <xsl:apply-templates select="Option" mode="Default"></xsl:apply-templates>
          </div>
        </xsl:otherwise>
      </xsl:choose>
    </div>-->
	</xsl:template>
	<xsl:template match="Option">
		<div class="form-group">
			<label>
				<xsl:value-of select="Title" disable-output-escaping='yes'></xsl:value-of>
			</label>
			<input type="text" class="search-box">
			<xsl:attribute name="id">
				<xsl:text>f</xsl:text>
				<xsl:value-of select="OptionId"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="value">
				<xsl:value-of select="Value"></xsl:value-of>
			</xsl:attribute>
			</input>
		</div>
		<xsl:if test="position()!=last()">
			<span>Hoặc</span>
		</xsl:if>
		<!--<div class="size">
      <a class="ajaxlink">
        <xsl:if test="IsActive='true'">
          <xsl:attribute name="class">
            <xsl:text>ajaxlink active</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </div>-->
	</xsl:template>
</xsl:stylesheet>