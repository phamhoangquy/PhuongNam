<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/BannerList">
        <section class="home-banner">
            <div class="container-fuild">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="Banner"></xsl:apply-templates>
                    </div>
                </div>
                <div class="banner-scroll">
                    <div class="icon-banner"><span class="lnr lnr-chevron-down"></span></div>
                </div>
                <div class="img-clouds">
                    <img src="/Data/Sites/1/skins/default/img/may.png" alt=""/>
                </div>
            </div>
        </section>
        <section class="bg-img-clouds">
            <div class="clouds-img">
                <div class="img">
                    <img src="/Data/Sites/1/media/home/clouds.png " alt=""/>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="wrapper">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
            </div>
            <xsl:if test="Description != ''">
                <div class="caption">
                    <h2 class="title-caption">
                        <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                    </h2>
                    <h2 class="title-caption">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h2>
                </div>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
