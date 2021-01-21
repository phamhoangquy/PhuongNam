<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="news-detail">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-3 col-lg-3">
                        <div class="srcoll-detail">
                        <div class="title-detail">
                            <h2>Tin tức khác</h2>
                        </div>
                        <div class="other-detail">
                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                        </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-9 col-lg-9">
                        <div class="title-detail-right">
                            <h1>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h1>
                            <div class="bottom-wrapper-news-detail">
                                <div class="icon-top">
                                    <span class="ri-calendar-2-line"></span>
                                    <time>
                                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
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
                        <div class="fullcontent">
                            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="content-detail">
            <div class="img-detail">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="title-zone-detail">
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
            <div class="icon-news">
                <span class="ri-calendar-2-line"></span>
                <div class="date">
                    <time>
                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                    </time>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
