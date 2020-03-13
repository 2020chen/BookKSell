<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postOrder.aspx.cs" Inherits="postOrder" %>

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
            SelectCommand="SELECT [orderid], [postAdress], [postNumber], [orderMember], [isPay], [isPost], [orderPrice] FROM [orders] WHERE ([orderid] = @orderid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="orderid" QueryStringField="orderid" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="orderid" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="253px">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="orderid" HeaderText="订单编号" ReadOnly="True" 
                SortExpression="orderid" />
            <asp:BoundField DataField="postAdress" HeaderText="收货地址" 
                SortExpression="postAdress" />
            <asp:BoundField DataField="postNumber" HeaderText="国内邮政编码" 
                SortExpression="postNumber" />
            <asp:BoundField DataField="orderMember" HeaderText="收货人" 
                SortExpression="orderMember" />
            <asp:CheckBoxField DataField="isPay" HeaderText="是否支付" ReadOnly="True" 
                SortExpression="isPay" />
            <asp:CheckBoxField DataField="isPost" HeaderText="是否发货" 
                SortExpression="isPost" ReadOnly="True" />
            <asp:BoundField DataField="orderPrice" HeaderText="订单价格" 
                SortExpression="orderPrice" />
        </Fields>
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:DetailsView>
    <p>
        订单详细</p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT orderPocduct.orderid, orderPocduct.ISBN, orderPocduct.count, orderPocduct.price, orderPocduct.sumPrice, bookInfo.bname FROM orderPocduct INNER JOIN bookInfo ON orderPocduct.ISBN = bookInfo.ISBN WHERE (orderPocduct.orderid = @orderid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="orderid" QueryStringField="orderid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
        GridLines="None" style="" Width="545px">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="bname" HeaderText="书名" SortExpression="bname" />
            <asp:BoundField DataField="price" HeaderText="单价" SortExpression="price" />
            <asp:BoundField DataField="count" HeaderText="数量" SortExpression="count" />
            <asp:BoundField DataField="sumPrice" HeaderText="总价" 
                SortExpression="sumPrice" />
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
    <asp:LinkButton ID="btnIsPay" runat="server" onclick="btnIsPay_Click">已收款</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="btnIsPost" runat="server" onclick="btnIsPost_Click">已发货</asp:LinkButton>
    </form>
</body>
</html>
