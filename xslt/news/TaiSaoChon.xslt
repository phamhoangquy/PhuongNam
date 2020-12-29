<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="item-big_s-2">
            <div class="img-polygon">
                <xsl:apply-templates select="News[position() &gt; 0 and position() &lt; 6]" mode="Image"></xsl:apply-templates>
            </div>
        </div>
        <div class="row">
            <xsl:apply-templates select="News[position() &gt; 5 and position() &lt; 9]" mode="Content"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Image">
        <div class="icon-polygon">
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
            <div class="block_list">
                <div class="text-icon">
                    <span class="counter">
                        <xsl:attribute name="data-count">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">0</xsl:text>
                    </span>
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
                <span>
                    <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                </span>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Content">
        <div class="col-12 col-md-6 col-lg-4">
            <div class="content_s-2">
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
                <div class="title_s-2">
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
                <div class="desc_s-2">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
