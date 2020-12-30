<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <section class="news-list">
            <div class="container">
                <div class="row">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-12 col-md-6 col-lg-4">
            <div class="block-news">
                <div class="item_news_hover">
                    <div class="card_img">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="SubTitle"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="data-fancybox">
                                <xsl:text disable-output-escaping="yes">Video</xsl:text>
                            </xsl:attribute>
							<xsl:attribute name="data-src">
								<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
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
                    <div class="card_img_hover">
                        <div class="icon-hover">
                            <span class="material-icons">play_circle_outline</span>
                        </div>
                    </div>
                </div>
                <div class="content-news">
                    <div class="title-news">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
