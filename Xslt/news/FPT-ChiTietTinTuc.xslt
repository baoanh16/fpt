<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tintuc-ct-1">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="main-news">
							<div class="title">
								<h1>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
									<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes">
									</xsl:value-of>
								</h1>
								<time>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>
							</div>
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>

							<div class="tags">
								<xsl:apply-templates select='/NewsDetail/Tags'>
								</xsl:apply-templates>
							</div>
						</div>
						<h3 class="title-lienquan">
							<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
						</h3>
						<!-- <div class="row">
                            <div class="col-12 col-md-4">
                                <div class="news-item">
                                    <figure>
                                        <div class="box-img">
                                            <img src="./img/tintuc/medium.png" alt="medium.png">
                                        </div>
                                        <figcaption>
                                            <h5><a href="javascript:void(0)">Sinh viên ĐH FPT gửi gắm “Những điều chưa
                                                    nói” qua âm nhạc Sinh viên ĐH FPT gửi gắm “Những điều chưa nói” qua
                                                    âm nhạc Sinh viên ĐH FPT gửi gắm “Những điều chưa nói” qua âm
                                                    nhạc</a></h5>
                                            <time>04/08/2018</time>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="news-item">
                                    <figure>
                                        <div class="box-img"><img src="./img/tintuc/medium.png" alt="medium.png"></div>
                                        <figcaption>
                                            <h5><a href="javascript:void(0)">Sinh viên ĐH FPT gửi gắm “Những điều chưa
                                                    nói” qua âm nhạc Sinh viên ĐH FPT gửi gắm “Những điều chưa nói” qua
                                                    âm nhạc Sinh viên ĐH FPT gửi gắm “Những điều chưa nói” qua âm
                                                    nhạc</a></h5>
                                            <time>04/08/2018</time>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="news-item">
                                    <figure>
                                        <div class="box-img"><img src="./img/tintuc/medium.png" alt="medium.png"></div>
                                        <figcaption>
                                            <h5><a href="javascript:void(0)">Sinh viên ĐH FPT gửi gắm “Những điều chưa
                                                    nói” qua âm nhạc Sinh viên ĐH FPT gửi gắm “Những điều chưa nói” qua
                                                    âm nhạc Sinh viên ĐH FPT gửi gắm “Những điều chưa nói” qua âm
                                                    nhạc</a></h5>
                                            <time>04/08/2018</time>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                        </div> -->
					</div>
					<div class="col-lg-3">
						<div class="tintuc-khac">
							<h2 class="title">
								<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
							</h2>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="thumbs-item">
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
						<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="Tags">
		<a>
			<xsl:value-of select="Tag" />
		</a>
	</xsl:template>
	<!--<xsl:template match="NewsAttributes" mode="tabs">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:text>#tab</xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
  <xsl:template match="NewsAttributes" mode="tabcontent">
    <div class="tab-content">
      <xsl:attribute name="id">
        <xsl:text>tab</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
    </div>
  </xsl:template>
  <xsl:template match="NewsImages">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <img width="80" height="71">
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </a>
    </li>
  </xsl:template>-->
</xsl:stylesheet>