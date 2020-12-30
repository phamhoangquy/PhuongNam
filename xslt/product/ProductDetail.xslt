<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ProductDetail">
        <section class="product-detail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="gallery-product-detail-slide">
                            <div class="swiper-container gallery-top">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="ProductImages" mode="Top"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-container gallery-thumbs">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="ProductImages" mode="Thumb"></xsl:apply-templates>
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
                    <div class="col-lg-5">
                        <div class="item-desc-pro-detail">
                            <div class="title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <div class="table-pro-detail">
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </div>
                            <div class="contact-pro-detail">
                                <span class="ri-phone-line"></span>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:text disable-output-escaping="yes">Liên hệ</xsl:text>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="fullcontent-pro-detail">
                    <div class="title">Ứng dụng</div>
                    <div class="caption-pro-detail">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </section>
        <section class="product-detail-2">
            <div class="container">
                <div class="head-title">
                    <img src="/Data/Sites/1/skins/default/img/title/information.png" alt=""/>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="wrap-form">
                            <div class="row">
                                <div class="form-group col-12 col-md-6 col-6">
                                    <input class="form-control" type="text" placeholder="Họ và tên..."/>
                                </div>
                                <div class="form-group col-12 col-md-6 col-6">
                                    <input class="form-control" type="text" placeholder="Công ty..."/>
                                </div>
                                <div class="form-group col-12 col-md-6 col-6">
                                    <input class="form-control" type="text" placeholder="Số điện thoại..."/>
                                </div>
                                <div class="form-group col-12 col-md-6 col-6">
                                    <input class="form-control" type="text" placeholder="Email..."/>
                                </div>
                                <div class="form-group col-12">
                                    <textarea class="form-control" id="inpputTextArea" rows="3" placeholder="Nội dung..."></textarea>
                                </div>
                            </div>
                            <div class="frm-btnwrap">
                                <div class="frm-btn">
                                    <a href="">GỬI
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        <span class="material-icons">trending_flat</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="product-detail-3">
            <div class="container">
                <div class="head-title">
                    <img src="/Data/Sites/1/skins/default/img/title/title-other-pro.png" alt=""/>
                </div>
                <div class="detail-slide-3-swiper-wrapper">
                    <div class="nav-arrow-prev">
                        <em class="lnr lnr-chevron-left"></em>
                    </div>
                    <div class="nav-arrow-next">
                        <em class="lnr lnr-chevron-right"></em>
                    </div>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="ProductOther"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="ProductImages" mode="Top">
        <div class="swiper-slide">
            <img >
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match="ProductImages" mode="Thumb">
        <div class="swiper-slide">
            <img >
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
            <div class="item-product-detail">
                <div class="item__img">
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
                    <div class="title-zone">
                        <div class="caption">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                    </div>
                </div>
                <div class="item__img-hover">
                    <div class="content">
                        <div class="img-hover">
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
                            <div class="desc">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
