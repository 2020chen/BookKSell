<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pageHeader.ascx.cs" Inherits="pageHeader" %>
<!-- 页头开始 -->
<link href="Include/common/css/style.css" rel="stylesheet" />
<link href="Include/common/css/dtk.css" rel="stylesheet" />
<div id="navTop">
    <div id="top">
        <div id="topleft" style="margin: 0; line-height: 25px;">
            欢迎来一起阅！HCY简单网上书店第一站！ 
        </div>
        <ul id="topright" style="line-height: 25px;">
            <li style="margin-right: 8px;"><a class="set_home" href="javascript:void(0)" onclick="SetHome(this,window.location)" style="color: #757575" title="将本站设为首页">设为首页</a> </li>
            <li style="margin-right: 8px;"><a class="add_favorite" href="javascript:void(0)" onclick="shoucang(document.title,window.location)" style="color: #757575" title="加入收藏，方便下次打开">加入收藏</a> </li>
            <li><a class="header_service" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1966965327&amp;site=qq&amp;menu=yes" style="color: #8da7cb" title="联系我帮你解答">遇到购物问题? 联系我 &gt;</a> </li>
        </ul>
    </div>
</div>
<table width="80%" height="22" background="Include/common/image/sh.gif" style="line-height: 25px;">
    <tr>
        <td style="text-align: center; font-size: 120%; color: gold; font-family: Arial;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <em><span style="font-family: @华文彩云"><strong style="font-size: large; color: orange; font-family: 隶书"><span style="color: #ffcc00; font-family: 华文彩云">HCY 简单网上书店</span></strong>
            </span></em>&nbsp;<asp:Label ID="lblDateTime" runat="server" Style="font-size: small; font-family: Monospace" Font-Names="@黑体"></asp:Label><br />
            <br />
        </td>
    </tr>
</table>

<table height="17" cellpadding="0" cellspacing="0" background="Include/common/image/indexbg.gif" style="width: 80%">
    <tr align="center" height="27">
        <td height="13" background="Include/common/image/index_1.gif" style="width: 5px"></td>
        <td style="width: 26px"></td>
        <td width="62"><a href="default.aspx">首 页</a></td>
        <td width="10">
            <img src="Include/common/image/line.gif"></td>
        <td style="width: 83px"><a href="orderfind.aspx">订单查询</a></td>
        <td width="10">
            <img src="Include/common/image/line.gif"></td>
        <td style="width: 80px"><a href="uLogin.aspx">用户登录</a></td>
        <td width="10">
            <img src="Include/common/image/line.gif"></td>
        <td style="width: 92px"><a href="reg.aspx">用户注册</a></td>
        <td style="width: 16px">
            <img src="Include/common/image/line.gif"></td>

        <td background="Include/common/image/index_2.gif" style="width: 5px"></td>
    </tr>
</table>
<table width="760" class="ZWenbg">
    <tr>
        <td></td>
    </tr>
</table>
<!-- 页头结束 -->
