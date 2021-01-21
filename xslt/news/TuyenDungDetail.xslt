<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="recruitment-detail">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-3 col-lg-3">
                        <div class="srcoll-hr-detail">
                            <div class="form_apply_hr_detail">
                                <div class="apply-form">
                                    <div class="btn button-apply">
                                        <a href='javascript:void(0)' data-fancybox="" data-src="#form-apply">Ứng tuyển ngay</a>
                                    </div>
                                    <div class="btn button-download">
                                        <a class=" ">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="FileUrl"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="Title"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:attribute name="target">
                                                <xsl:value-of select="Target"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:text disable-output-escaping="yes">Tải form ứng tuyển</xsl:text> 
                                        </a>
                                    </div>
                                </div>
                                <div class="form-apply" id="form-apply" style="display: none">
                                    <iframe>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
                                        </xsl:attribute>
                                    </iframe>
                                </div>
                            </div>
                            <div id="infor-inner"></div>
                            <div class="location-hr-detail">
                                <div class="card-title-left">
                                    <h3>Vị trí khác</h3>
                                </div>
                                <div class="content_hr_detail_left">
                                    <div class="hr_detail_left_list">
                                        <ul>
                                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-9 col-lg-9">
                        <div class="card_title_hr_detail">
                            <h1>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h1>
                            <div class="bottom-wrapper-news-detail">
                                <div class="icon-top">
                                    <span class="ri-calendar-2-line"></span>
                                    <time>
                                        <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
                                    </time>
                                </div>
                                <div class="social-network-share">
                                    <div class="icon">
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                                <xsl:value-of select="FullUrl"/>
                                            </xsl:attribute>
                                            <span class="ri-facebook-fill"></span>
                                        </a>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://twitter.com/home?status=</xsl:text>
                                                <xsl:value-of select="FullUrl"/>
                                            </xsl:attribute>
                                            <span class="ri-twitter-fill"></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card_body_hr_detail">
                            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                        </div>
                        <div class="hr_list_content">
                            <xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <li>
            <div class="title_hr_detail_left">
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
            <div class="item-hr-locat">
                <div class="icon-location">
                    <span class="ri-calendar-2-line"></span>
                </div>
                <div class="date">
                    <time>
                        <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
                    </time>
                </div>
            </div>
        </li>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <div class="hr-detail_content">
            <div class="title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </div>
        </div>
        <div class="text">
            <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>
