<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookInfo.aspx.cs" Inherits="bookInfo" %>

<%@ Register Src="~/pageFooter.ascx" TagPrefix="uc1" TagName="pageFooter" %>
<%@ Register Src="~/pageHeader.ascx" TagPrefix="uc1" TagName="pageHeader" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图书详情</title>
</head>
<body>
    <uc1:pageHeader runat="server" ID="pageHeader" />
    <form id="form1" runat="server">
        <div align="center">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT bookInfo.ISBN, bookInfo.bname, bookInfo.bcid, bookInfo.bzz, bookInfo.bprice, bookInfo.bkcCount, bookInfo.bSaleCount, bookInfo.bPictuer, bookInfo.bContent, bookClass.bcName FROM bookInfo INNER JOIN bookClass ON bookInfo.bcid = bookClass.bcId WHERE (bookInfo.ISBN = @ISBN)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ISBN" QueryStringField="isbn" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
        <div>

            <table align="center" style="width: 437px">
                <tr>
                    <td class="style1">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
                            DataKeyNames="ISBN" DataSourceID="SqlDataSource1" Height="50px" Width="341px"
                            CellPadding="4" ForeColor="#333333" GridLines="None">
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <Fields>
                                <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True"
                                    SortExpression="ISBN" />
                                <asp:BoundField DataField="bname" HeaderText="书名" SortExpression="bname" />
                                <asp:BoundField DataField="bcName" HeaderText="类别" SortExpression="bcName" />
                                <asp:BoundField DataField="bzz" HeaderText="作者" SortExpression="bzz" />
                                <asp:BoundField DataField="bprice" HeaderText="价格" SortExpression="bprice" />
                                <asp:BoundField DataField="bkcCount" HeaderText="库存量"
                                    SortExpression="bkcCount" />
                                <asp:BoundField DataField="bSaleCount" HeaderText="销售量"
                                    SortExpression="bSaleCount" />
                                <asp:BoundField DataField="bContent" HeaderText="介绍"
                                    SortExpression="bContent" />
                            </Fields>
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:DetailsView>
                    </td>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="ISBN"
                            DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("bPictuer") %>' />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="default.aspx" Width="40px">返回</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
<uc1:pageFooter runat="server" ID="pageFooter" />
</html>
