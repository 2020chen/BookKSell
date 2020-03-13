<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminBookInfo.aspx.cs" Inherits="admin_adminBookInfo" %>

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
            DeleteCommand="DELETE FROM [bookInfo] WHERE [ISBN] = @ISBN" 
            InsertCommand="INSERT INTO [bookInfo] ([ISBN], [bname], [bcid], [bzz], [bprice], [bkcCount], [bSaleCount], [bPictuer], [bContent]) VALUES (@ISBN, @bname, @bcid, @bzz, @bprice, @bkcCount, @bSaleCount, @bPictuer, @bContent)" 
            SelectCommand="SELECT bookInfo.ISBN, bookInfo.bname, bookInfo.bcid, bookInfo.bzz, bookInfo.bprice, bookInfo.bkcCount, bookInfo.bSaleCount, bookClass.bcName FROM bookInfo INNER JOIN bookClass ON bookInfo.bcid = bookClass.bcId" 
            UpdateCommand="UPDATE [bookInfo] SET [bname] = @bname, [bcid] = @bcid, [bzz] = @bzz, [bprice] = @bprice, [bkcCount] = @bkcCount, [bSaleCount] = @bSaleCount, [bPictuer] = @bPictuer, [bContent] = @bContent WHERE [ISBN] = @ISBN">
            <DeleteParameters>
                <asp:Parameter Name="ISBN" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="bname" Type="String" />
                <asp:Parameter Name="bcid" Type="Int32" />
                <asp:Parameter Name="bzz" Type="String" />
                <asp:Parameter Name="bprice" Type="Double" />
                <asp:Parameter Name="bkcCount" Type="Int32" />
                <asp:Parameter Name="bSaleCount" Type="Int32" />
                <asp:Parameter Name="bPictuer" Type="String" />
                <asp:Parameter Name="bContent" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="bname" Type="String" />
                <asp:Parameter Name="bcid" Type="Int32" />
                <asp:Parameter Name="bzz" Type="String" />
                <asp:Parameter Name="bprice" Type="Double" />
                <asp:Parameter Name="bkcCount" Type="Int32" />
                <asp:Parameter Name="bSaleCount" Type="Int32" />
                <asp:Parameter Name="bPictuer" Type="String" />
                <asp:Parameter Name="bContent" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" onrowediting="GridView1_RowEditing">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </form>
</body>
</html>
