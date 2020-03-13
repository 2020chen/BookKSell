<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderFind.aspx.cs" Inherits="OrderFind" %>

<%@ Register Src="~/pageHeader.ascx" TagPrefix="uc1" TagName="pageHeader" %>
<%@ Register Src="~/pageFooter.ascx" TagPrefix="uc1" TagName="pageFooter" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>订单查询</title>
</head>
<body>
    <uc1:pageHeader runat="server" ID="pageHeader" />
    <form id="form1" runat="server">
    <div align="center">
    
        订单号：<asp:TextBox ID="txtOrderId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; 查询密码：<asp:TextBox ID="txtFindPassword" runat="server" 
            TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFind" runat="server" onclick="btnFind_Click" Text="查询" />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
            style="margin-top: 0px" Width="407px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="postAdress" HeaderText="收货地址" />
                <asp:BoundField DataField="postNumber" HeaderText="国内邮政编码" />
                <asp:BoundField DataField="orderMember" HeaderText="收货人" />
                <asp:BoundField DataField="pname" HeaderText="支付方式" />
                <asp:BoundField DataField="orderPrice" HeaderText="订单总额" />
                <asp:CheckBoxField DataField="isPay" HeaderText="是否支付" InsertVisible="False" 
                    ReadOnly="True" />
                <asp:CheckBoxField DataField="isPost" HeaderText="是否发货" ReadOnly="True" />
            </Fields>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                <asp:BoundField DataField="bname" HeaderText="图书名称" />
                <asp:BoundField DataField="count" HeaderText="数量" />
                <asp:BoundField DataField="price" HeaderText="单价" />
                <asp:BoundField DataField="sumPrice" HeaderText="总价" />
            </Columns>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    </div>
    </form>
    <uc1:pageFooter runat="server" ID="pageFooter" />
</body>
</html>
