<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="background-big-about-1">
            <xsl:apply-templates select="Zone" mode="Block1"></xsl:apply-templates>
        </div>
        <div class="background-big-about-2">
            <xsl:apply-templates select="Zone" mode="Block2"></xsl:apply-templates>
        </div>
        <xsl:apply-templates select="Zone" mode="Block3"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="Block1">
        <xsl:if test="position() = 1">
            <section class="about-1">
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="ThongDiep"></xsl:apply-templates>
                    </div>
                    <div class="modal-about" id="content-modal" style="display: none;">
                        <div class="title">
                            <xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
                        </div>
                        <xsl:value-of disable-output-escaping="yes" select="News/FullContent"></xsl:value-of>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="about-2">
                <div class="container">
                    <xsl:apply-templates select="News" mode="TamNhin"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Block2">
        <xsl:if test="position() = 3">
            <section class="about-4">
                <div class="container">
                    <div class="title-about">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="about-factory-swiper-wrapper">
                        <div class="nav-arrow-prev">
                            <em class="lnr lnr-chevron-left"></em>
                        </div>
                        <div class="nav-arrow-next">
                            <em class="lnr lnr-chevron-right"></em>
                        </div>
                        <div class="swiper-container factory-slide">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="CoSo"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 4">
            <section class="about-5">
                <div class="container">
                    <div class="title-about-5">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                        <div class="desc-about-5">
                            <xsl:apply-templates select="News" mode="Content"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="about-news-swiper-wrapper">
                        <div class="nav-arrow-prev">
                            <em class="lnr lnr-chevron-left"></em>
                        </div>
                        <div class="nav-arrow-next">
                            <em class="lnr lnr-chevron-right"></em>
                        </div>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Image"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Block3">
        <xsl:if test="position() = 5">
            <section class="about-6">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-6">
                            <div class="title-about">
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
                        <div class="col-12 col-md-6 colg-lg-6">
                            <div class="about-prize-swiper-wrapper">
                                <div class="swiper-container slide-prize">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="News" mode="ChungNhan"></xsl:apply-templates>
                                    </div>
                                </div>
                                <div class="nav-arrow-prev">
                                    <em class="lnr lnr-chevron-left"></em>
                                </div>
                                <div class="nav-arrow-next">
                                    <em class="lnr lnr-chevron-right"></em>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 6">
            <section class="about-7">
                <div class="container">
                    <div class="title-about">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="about-client-swiper-wrapper">
                        <div class="nav-arrow-prev">
                            <em class="lnr lnr-chevron-left"></em>
                        </div>
                        <div class="nav-arrow-next">
                            <em class="lnr lnr-chevron-right"></em>
                        </div>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="DoiTac"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="ThongDiep">
        <div class="col-12 col-md-6 col-lg-6">
            <div class="card_img">
                <div class="img">
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
        </div>
        <div class="col-12 col-md-6 col-lg-6">
            <div class="content-about-1">
                <div class="title-about">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="desc-about-1">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </p>
                </div>
                <div class="btn-view">
                    <a href="" data-src="#content-modal">
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">popup</xsl:text>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">xem thêm</xsl:text>
                        <span class="material-icons">arrow_right_alt</span>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="TamNhin">
        <xsl:if test="position() &gt;0 and position() &lt;3">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="item-about-2">
                        <div class="title-about">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="caption-about">
                            <p>
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="card_img">
                        <div class="img">
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
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="row">
                <div class="col-lg-8">
                    <div class="title-about-3">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="big-about-bg">
                        <div class="img">
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
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="CoSo">
        <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="NewsImages">
        <div class="swiper-slide">
            <div class="factory-img">
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
    <xsl:template match="News" mode="Content">
        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
    </xsl:template>
    <xsl:template match="News" mode="Image">
        <xsl:apply-templates select="NewsImages" mode="Images"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Images">
        <div class="swiper-slide">
            <div class="wrapper">
                <div class="about-img">
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
                <div class="content">
                    <div class="caption-slide">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="ChungNhan">
        <xsl:apply-templates select="NewsImages" mode="BangKhen"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="NewsImages" mode="BangKhen">
        <div class="swiper-slide">
            <div class="wrapper">
                <div class="about-prize-img">
                    <div class="img">
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
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="DoiTac">
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
        </div>
    </xsl:template>
</xsl:stylesheet>
