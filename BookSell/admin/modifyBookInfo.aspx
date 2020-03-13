<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyBookInfo.aspx.cs" Inherits="admin_modifyBookInfo" %>

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
            InsertCommand="INSERT INTO [bookInfo] ([ISBN], [bname], [bcid], [bzz], [bprice], [bContent], [bkcCount]) VALUES (@ISBN, @bname, @bcid, @bzz, @bprice, @bContent, @bkcCount)" 
            SelectCommand="SELECT [ISBN], [bname], [bcid], [bzz], [bprice], [bContent], [bkcCount] FROM [bookInfo] WHERE ([ISBN] = @ISBN)" 
            UpdateCommand="UPDATE [bookInfo] SET [bname] = @bname, [bcid] = @bcid, [bzz] = @bzz, [bprice] = @bprice, [bContent] = @bContent, [bkcCount] = @bkcCount WHERE [ISBN] = @ISBN">
            <SelectParameters>
                <asp:QueryStringParameter Name="ISBN" QueryStringField="isbn" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="ISBN" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="bname" Type="String" />
                <asp:Parameter Name="bcid" Type="Int32" />
                <asp:Parameter Name="bzz" Type="String" />
                <asp:Parameter Name="bprice" Type="Double" />
                <asp:Parameter Name="bContent" Type="String" />
                <asp:Parameter Name="bkcCount" Type="Int32" />
                <asp:Parameter Name="ISBN" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="bname" Type="String" />
                <asp:Parameter Name="bcid" Type="Int32" />
                <asp:Parameter Name="bzz" Type="String" />
                <asp:Parameter Name="bprice" Type="Double" />
                <asp:Parameter Name="bContent" Type="String" />
                <asp:Parameter Name="bkcCount" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="ISBN" 
            DataSourceID="SqlDataSource1" DefaultMode="Edit" ForeColor="#333333">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <EditItemTemplate>
                ISBN:
                <asp:Label ID="ISBNLabel1" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />
                图书名称:
                <asp:TextBox ID="bnameTextBox" runat="server" Text='<%# Bind("bname") %>' />
                <br />
                图书类别:
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="bcName" DataValueField="bcId" 
                    SelectedValue='<%# Bind("bcid") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [bcId], [bcName] FROM [bookClass]">
                </asp:SqlDataSource>
                <br />
                图书作者:
                <asp:TextBox ID="bzzTextBox" runat="server" Text='<%# Bind("bzz") %>' />
                <br />
                图书售价:
                <asp:TextBox ID="bpriceTextBox" runat="server" Text='<%# Bind("bprice") %>' />
                <br />
                内容介绍:
                <asp:TextBox ID="bContentTextBox" runat="server" Text='<%# Bind("bContent") %>' 
                    TextMode="MultiLine" />
                <br />
                库存量:
                <asp:TextBox ID="bkcCountTextBox" runat="server" 
                    Text='<%# Bind("bkcCount") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ISBN:
                <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                <br />
                bname:
                <asp:TextBox ID="bnameTextBox" runat="server" Text='<%# Bind("bname") %>' />
                <br />
                bcid:
                <asp:TextBox ID="bcidTextBox" runat="server" Text='<%# Bind("bcid") %>' />
                <br />
                bzz:
                <asp:TextBox ID="bzzTextBox" runat="server" Text='<%# Bind("bzz") %>' />
                <br />
                bprice:
                <asp:TextBox ID="bpriceTextBox" runat="server" Text='<%# Bind("bprice") %>' />
                <br />
                bContent:
                <asp:TextBox ID="bContentTextBox" runat="server" 
                    Text='<%# Bind("bContent") %>' />
                <br />
                bkcCount:
                <asp:TextBox ID="bkcCountTextBox" runat="server" 
                    Text='<%# Bind("bkcCount") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                ISBN:
                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />
                bname:
                <asp:Label ID="bnameLabel" runat="server" Text='<%# Bind("bname") %>' />
                <br />
                bcid:
                <asp:Label ID="bcidLabel" runat="server" Text='<%# Bind("bcid") %>' />
                <br />
                bzz:
                <asp:Label ID="bzzLabel" runat="server" Text='<%# Bind("bzz") %>' />
                <br />
                bprice:
                <asp:Label ID="bpriceLabel" runat="server" Text='<%# Bind("bprice") %>' />
                <br />
                bContent:
                <asp:Label ID="bContentLabel" runat="server" Text='<%# Bind("bContent") %>' />
                <br />
                bkcCount:
                <asp:Label ID="bkcCountLabel" runat="server" Text='<%# Bind("bkcCount") %>' />
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
    
    </div>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
