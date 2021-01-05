<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="service-detail">
            <div class="container">
                <div class="title-srv-detail">
                    <h1>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h1>
                </div>
                <div class="content-srv-detail">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
                <div class="row">
                    <xsl:apply-templates select="NewsImages[position() &gt; 1 and position() &lt; 5]" mode="NewsImages1"></xsl:apply-templates>
                </div>
                <div class="serivce-detail-swiper-wrapper">
                    <div class="nav-arrow-prev">
                        <em class="lnr lnr-chevron-left"></em>
                    </div>
                    <div class="nav-arrow-next">
                        <em class="lnr lnr-chevron-right"></em>
                    </div>
                    <div class="swiper-container slide-srv-detail">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="NewsImages[position() &gt; 4]" mode="NewsImages2"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsImages" mode="NewsImages1">
        <div class="col-lg-4">
            <div class="card_img">
                <img >
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
    <xsl:template match="NewsImages" mode="NewsImages2">
        <div class="swiper-slide">
            <div class="card_body">
                <img >
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
