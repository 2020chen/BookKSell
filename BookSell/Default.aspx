<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="uc1" TagName="pageHeader" Src="pageHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="pageFooter" Src="pageFooter.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>网上书店</title>
</head>
<body>
    <uc1:pageHeader ID="PageHeader1" runat="server"></uc1:pageHeader>
    <form id="form1" runat="server">
        <table width="80%" class="LMubg" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" height="0" bgcolor="#e9e9e9"></td>
            </tr>
            <tr>
                <td width="2"></td>
                <td width="208">
                    <!-- 导航条 首页-->
                    <table>
                        <tr>
                            <td>
                                <img src="Include/common/image/index_dc_20L.gif"></td>
                        </tr>
                    </table>
                </td>
                <td>

                    <!-- 搜索条开始{ -->
                    <table width="100%" runat="server">
                        <tr>
                            <td width="60" align="center">
                                <img src="Include/common/image/leibie.gif"></td>
                            <td width="45" align="center">按分类</td>
                            <td width="60" align="center">
                                <asp:DropDownList ID="ddlClass" runat="server" DataSourceID="SqlDataSource2" DataTextField="bcName" DataValueField="bcName"></asp:DropDownList>
                            </td>
                            <td width="45" align="center">关键字</td>
                            <td width="100" align="center">
                                <asp:TextBox ID="txtSelect" runat="server"></asp:TextBox></td>
                            <td width="40" align="right">
                                <asp:Button ID="btnSelect" Style="width: 60px; color: #ff0000" runat="server" Text="查&nbsp;&nbsp;询" OnClick="btnSelect_Click"></asp:Button></td>
                            <td align="right">
                                <img src="Include/common/image/index_dc_20.gif"></td>
                        </tr>
                    </table>
                    <!-- }搜索条结束 -->

                </td>
            </tr>
            <tr>
                <td colspan="3" height="0" bgcolor="#e2e2e2"></td>
            </tr>
        </table>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [bookInfo]"></asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [bcId], [bcName] FROM [bookClass]"></asp:SqlDataSource>
            <table width="80%" class="ZWenbg" cellpadding="2" cellspacing="2">
                <tr valign="top">
                    <td width="185">
                        <!-- 左边开始 -->
                        <!-- 分类列表开始 -->
                        <table width="179" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="179" colspan="3" background="Include/common/image/fenlei.gif" height="24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>图书分类</b></td>
                            </tr>
                            <tr>
                                <td class="LFramebg"></td>
                                <td align="center" height="100" class="LMubg" valign="top">
                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="bcId"
                                        DataSourceID="SqlDataSource2">
                                        <ItemTemplate>
                                            <img border="0" src="Include/common/image/bullet.gif" width="10" height="10">
                                            <asp:HyperLink ID="HyperLink2" runat="server"
                                                NavigateUrl='<%# Eval("bcId", "?bcId={0}") %>' Text='<%# Eval("bcName") %>'></asp:HyperLink>
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    &nbsp;</td>
                                <td class="RFramebg"></td>
                            </tr>
                            <tr>
                                <td colspan="3" class="XFramebg"></td>
                            </tr>
                        </table>
                    </td>
                    <td width="100%" align="right">
                        <!-- 最新上架列表开始{  -->
                        <table width="98%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td height="22" width="135" background="Include/common/image/T3.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 12px; color: #ffffff"><b>[ 最新上架 ]</b></span></td>
                                <td background="Include/common/image/Z3.gif">&nbsp;</td>
                                <td width="2" background="Include/common/image/W3.gif"></td>
                            </tr>
                        </table>
                        <table width="98%" cellpadding="0" cellspacing="0" height="200">
                            <tr>
                                <td class="LFramebg"></td>
                                <td valign="top" class="LMubg">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ISBN"
                                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <Columns>
                                            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True"
                                                SortExpression="ISBN" />
                                            <asp:BoundField DataField="bname" HeaderText="书名" SortExpression="bname" />
                                            <asp:BoundField DataField="bzz" HeaderText="作者" SortExpression="bzz" />
                                            <asp:BoundField DataField="bprice" HeaderText="价格" SortExpression="bprice" />
                                            <asp:BoundField DataField="bkcCount" HeaderText="库存量"
                                                SortExpression="bkcCount" />
                                            <asp:BoundField DataField="bSaleCount" HeaderText="销售量"
                                                SortExpression="bSaleCount" />
                                            <asp:HyperLinkField DataNavigateUrlFields="ISBN"
                                                DataNavigateUrlFormatString="bookInfo.aspx?isbn={0}" HeaderText="详细信息"
                                                Text="详细信息" />
                                            <asp:HyperLinkField DataNavigateUrlFields="ISBN"
                                                DataNavigateUrlFormatString="bookOrder.aspx?op=add&bid={0}"
                                                HeaderText="加入购物车" Text="加入购物车" />
                                        </Columns>
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                </td>
                                <td class="RFramebg"></td>
                            </tr>
                            <tr>
                                <td colspan="3" class="XFramebg"></td>
                            </tr>
                        </table>
                        <!-- }最新上架列表结束  -->
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
    <uc1:pageFooter ID="PageFooter1" runat="server"></uc1:pageFooter>
</html>
