<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewSuccessOrder.aspx.cs" Inherits="viewSuccessOrder" %>

<%@ Register Src="~/pageHeader.ascx" TagPrefix="uc1" TagName="pageHeader" %>
<%@ Register Src="~/pageFooter.ascx" TagPrefix="uc1" TagName="pageFooter" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>订单详情</title>
</head>
<script type>
    var t = 7;
    setInterval("refer()", 1000);
    function refer() {
        if (t == 0) {
            location = "Default.aspx";
        }
        document.getElementById("show").innerHTML = "" + t + "秒后跳转到主界面";
        t--;
    }
</script>
<span id="show"></span>
<body>
    <uc1:pageHeader runat="server" ID="pageHeader" />
    <form id="form1" runat="server">
        <div align="center">

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [pname], [pcontent] FROM [payInfo]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="pname" HeaderText="支付方式" SortExpression="pname" />
                    <asp:BoundField DataField="pcontent" HeaderText="详细说明"
                        SortExpression="pcontent" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
    <uc1:pageFooter runat="server" ID="pageFooter" />
</body>
</html>
