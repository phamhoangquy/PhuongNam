<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <section class="recrtuiment-3">
            <div class="container">
                <div class="sub-title">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ZoneImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Stt</th>
                                        <th scope="col">Vị trí tuyển dụng </th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Địa điểm </th>
                                        <th scope="col">Hạn nộp</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <xsl:apply-templates select="News"></xsl:apply-templates>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <tr>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </td>
            <td>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
