<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="srcoll-branch">
            <div class="text-contact">Công ty TNHH SX - TM Bao bì phương nam</div>
            <div class="branch-one">
                <ul>
                    <xsl:apply-templates select="News[position() &gt; 0 and position() &lt; 3]" mode="LH1"></xsl:apply-templates>
                </ul>
            </div>
            <div class="branch-two">
				<xsl:value-of disable-output-escaping="yes" select="News[position() = 3]/BriefContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="LH1">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="data-href">
                <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
            </xsl:attribute>
            <div class="building-city">
                <div class="icon">
                    <em class="ri-building-4-line"></em>
                </div>
                <div class="city">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </div>
            </div>
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
        </li>
    </xsl:template>
</xsl:stylesheet>
