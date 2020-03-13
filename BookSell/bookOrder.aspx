<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="bookOrder.aspx.cs" Inherits="bookOrder" %>

<%@ Register Src="~/pageHeader.ascx" TagPrefix="uc1" TagName="pageHeader" %>
<%@ Register Src="~/pageFooter.ascx" TagPrefix="uc1" TagName="pageFooter" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图书购物车</title>
</head>
<body>
    <uc1:pageHeader runat="server" ID="pageHeader" />
    <form id="form1" runat="server">
    <div align="center">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="bname" HeaderText="图书名称" />
            <asp:TemplateField>
           <HeaderTemplate>购买量</HeaderTemplate>
           <ItemTemplate>
               <asp:TextBox ID="TextBox1" Text='<%# Eval("count") %>' ReadOnly Width="20 px" runat="server"></asp:TextBox>
               <a href="bookOrder.aspx?op=subcount&isbn=<%# Eval("ISBN") %>"><img id="delete" border="0" alt="减一" src="images/del.png" height="18" width="18" /></a> 
               <a href="bookOrder.aspx?op=addcount&isbn=<%# Eval("ISBN") %>"><img id="add" border="0" alt="加一" src="images/add.png" height="18" width="18" /></a> 
           </ItemTemplate>
            </asp:TemplateField>
          
            <asp:BoundField DataField="bprice" HeaderText="单价" />
           
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:Label ID="sumCount" runat="server"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="default.aspx">返回</asp:HyperLink>
    &nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="payOrder.aspx">付款</asp:HyperLink>
    </div>
    </form>
    <uc1:pageFooter runat="server" ID="pageFooter" />
</body>
</html>
