<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <section class="home_s-1">
            <div class="container">
                <xsl:apply-templates select="News"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="head-title">
            <img >
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
        <div class="row">
            <div class="col-12 col-md-6 col-lg-6">
                <div class="content">
                    <div class="sub-title">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                    <div class="desc">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                    <div class="btn-view">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:text disable-output-escaping="yes">/gioi-thieu</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">tìm hiểu thêm</xsl:text>
                            <span class="material-icons">arrow_right_alt</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6">
                <div class="card_img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
