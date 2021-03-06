<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="tool-product">
            <div class="wrapper"><div class="btn btn-cate">Loại thùng</div>
            <div class="btn btn-filter"> Màu sắc / Ngành hàng
            </div></div>
            
        </div>
        <div class="item-product-left">
            <div class="title-product">Loại thùng</div>
            <div class="choose-product">
                <ul>
                    <xsl:apply-templates select="Zone"></xsl:apply-templates>
                </ul>
            </div>
            <div id="cls_filter">Đóng</div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
