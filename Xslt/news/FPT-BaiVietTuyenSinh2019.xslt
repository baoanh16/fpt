<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="title">
            <xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
        </div>
        <div class="tabs-wrapper">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="tabs-item">
            <div class="tabs-title">
                <xsl:if test="position() &lt; 10">
                    <span>
                        <xsl:text>0</xsl:text>
                        <xsl:value-of select="position()"></xsl:value-of>
                    </span>
                </xsl:if>
                <xsl:if test="position() > 9">
                    <span>
                        <xsl:value-of select="position()"></xsl:value-of>
                    </span>
                </xsl:if>
                <p>
                    <xsl:value-of select="Title"></xsl:value-of>
                </p>
                <i class="lnr lnr-chevron-down"></i>
            </div>
            <div class="tabs-content">
                <p>
                    <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>