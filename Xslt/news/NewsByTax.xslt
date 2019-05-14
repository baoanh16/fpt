<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
      <div class="container">
        <div class="row">
          <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
      </div>
  </xsl:template>

  <xsl:template match="News">
    <div class="col-12 col-sm-6 col-md-4">
      <div class="news-item">
        <figure>
          <div class="box-img">
            <img>
              <xsl:attribute name='src'>
                <xsl:value-of select='ImageUrl'></xsl:value-of>
              </xsl:attribute>
              <!--<xsl:attribute name='alt'>
                <xsl:value-of select='Title'></xsl:value-of>
              </xsl:attribute>-->
            </img>
          </div>
          <figcaption>
            <h5>
              <a>
                <xsl:attribute name='href'>
                  <xsl:value-of select='Url'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='alt'>
                  <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select='Title'></xsl:value-of>
              </a>
            </h5>
            <time >
							<xsl:value-of select='CreatedDate'></xsl:value-of>
						</time>
          </figcaption>
        </figure>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>