<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="title">
            <xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
        </div>
        <div class="row">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
        <div class="flex-center">
            <button class="btn-more"><span>xem thêm</span></button>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <div class="col-12 col-md-6 col-lg-4">
            <div class="item">
                <figure>
                    <a class="box-img" href="https://youtu.be/IKx5CvIayV0" data-fancybox=''>
                        <xsl:attribute name="href">
                            <xsl:value-of select="BriefContent"></xsl:value-of>
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
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>