<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payInfo.aspx.cs" Inherits="admin_payInfo" %>

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
            DeleteCommand="DELETE FROM [payInfo] WHERE [pid] = @pid" 
            InsertCommand="INSERT INTO [payInfo] ([pname], [pcontent]) VALUES (@pname, @pcontent)" 
            SelectCommand="SELECT * FROM [payInfo]" 
            UpdateCommand="UPDATE [payInfo] SET [pname] = @pname, [pcontent] = @pcontent WHERE [pid] = @pid">
            <DeleteParameters>
                <asp:Parameter Name="pid" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="pcontent" Type="String" />
                <asp:Parameter Name="pid" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="pcontent" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="pid" HeaderText="编号" InsertVisible="False" 
                ReadOnly="True" SortExpression="pid" />
            <asp:BoundField DataField="pname" HeaderText="支付方式名称" SortExpression="pname" />
            <asp:BoundField DataField="pcontent" HeaderText="支付方式说明" 
                SortExpression="pcontent" />
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="pid" 
        DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <EditItemTemplate>
            pid:
            <asp:Label ID="pidLabel1" runat="server" Text='<%# Eval("pid") %>' />
            <br />
            pname:
            <asp:TextBox ID="pnameTextBox" runat="server" Text='<%# Bind("pname") %>' />
            <br />
            pcontent:
            <asp:TextBox ID="pcontentTextBox" runat="server" 
                Text='<%# Bind("pcontent") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            支付方式名称:
            <asp:TextBox ID="pnameTextBox" runat="server" Text='<%# Bind("pname") %>' />
            <br />
            支付方式内容:
            <asp:TextBox ID="pcontentTextBox" runat="server" Text='<%# Bind("pcontent") %>' 
                TextMode="MultiLine" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            pid:
            <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
            <br />
            pname:
            <asp:Label ID="pnameLabel" runat="server" Text='<%# Bind("pname") %>' />
            <br />
            pcontent:
            <asp:Label ID="pcontentLabel" runat="server" Text='<%# Bind("pcontent") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="编辑" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="删除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新建" />
        </ItemTemplate>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:FormView>
    </form>
</body>
</html>
