<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orderList.aspx.cs" Inherits="admin_orderList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT orders.orderid, orders.postAdress, orders.postNumber, orders.orderMember, orders.orderPrice, orders.isPay, orders.isPost, payInfo.pname FROM orders INNER JOIN payInfo ON orders.pid = payInfo.pid">
        </asp:SqlDataSource>
    
    </div>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="orderid" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="订单号" ReadOnly="True" 
                SortExpression="orderid" />
            <asp:BoundField DataField="postAdress" HeaderText="收货地址" 
                SortExpression="postAdress" />
            <asp:BoundField DataField="postNumber" HeaderText="国内邮政编码" 
                SortExpression="postNumber" />
            <asp:BoundField DataField="orderMember" HeaderText="收货人" 
                SortExpression="orderMember" />
            <asp:BoundField DataField="orderPrice" HeaderText="订单总金额" 
                SortExpression="orderPrice" />
            <asp:CheckBoxField DataField="isPay" HeaderText="是否支付" ReadOnly="True" 
                SortExpression="isPay" />
            <asp:CheckBoxField DataField="isPost" HeaderText="是否发货" ReadOnly="True" 
                SortExpression="isPost" />
            <asp:BoundField DataField="pname" HeaderText="支付方式" SortExpression="pname" />
            <asp:HyperLinkField DataNavigateUrlFields="orderid" 
                DataNavigateUrlFormatString="postOrder.aspx?orderid={0}" HeaderText="订单详细" 
                Text="订单详细" />
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </form>
</body>
</html>
