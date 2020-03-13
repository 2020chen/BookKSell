<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录</title>
    <link href="../Include/common/css/admin_login.css" rel="stylesheet" type="text/css" />
    <script src="../Include/common/js/common.js" type="text/javascript" charset="gb2312"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <table width="100%" height="370" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="49%" height="312" align="center" valign="bottom">
                        <br />
                        <table width="375" border="0" cellspacing="0" cellpadding="0" class="bianju">
                            <tr>
                                <td colspan="2" align="center">
                                    <img src="../Include/common/image/logo.png" style="height: 196px; width: 280px;" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="51%" valign="bottom" style="padding-top: 25px">
                        <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px"
                            DestinationPageUrl="~/admin/menu.aspx" Font-Names="Tw Cen MT Condensed Extra Bold" Font-Size="10pt" Height="209px" OnAuthenticate="Login1_Authenticate" Width="349px" Style="font-size: medium; margin-top: 0px" TitleText="管理登录">
                            <TitleTextStyle BackColor="#6B696B" Font-Bold="True"
                                ForeColor="#FFFFFF" />
                        </asp:Login>
                    </td>
                </tr>
            </table>
        </div>
        <div class="clear">
        </div>
        <div class="footer-wrapper " style="width: 1200px; margin: 0 auto; position: relative; text-align: center">
            <div class="author" style="position: absolute; top: 67px; left: 990px; color: #666; font-size: 18px;">
                By &nbsp;&nbsp;HCY
            </div>
            <div class="text" style="color: #a2a2a2; font-size: 16px; margin-top: 33px;">
                <script src="http://www.17tao.net/Scripts/vip.js"></script>
                <script src="http://www.17tao.net/Plug/layer/layer.js"></script>
                <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1260484020'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260484020%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                <span id="cnzz_stat_icon_1260484020"><a href="https://www.cnzz.com/stat/website.php?web_id=1260484020" target="_blank" title="站长统计"></a></span>
                <script src=" http://s95.cnzz.com/z_stat.php?id=1260484020&amp;show=pic" type="text/javascript"></script>
                <script src="http://c.cnzz.com/core.php?web_id=1260484020&amp;show=pic&amp;t=z" charset="utf-8" type="text/javascript"></script>
                © CopyRight&nbsp;2019            &nbsp;
            &nbsp;&nbsp;                <a target="_blank" class="footer_service" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1966965327&amp;site=qq&amp;menu=yes" style="color: #8da7cb" title="联系我帮你解答">^_^亲遇到问题，联系我帮你处理哈</a>
                <p style="text-algin: center; margin-top: 30px;"></p>
            </div>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
