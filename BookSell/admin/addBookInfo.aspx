<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addBookInfo.aspx.cs" Inherits="admin_addBookInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <table width="402" border="0">
  <tr>
    <td width="92" align="right">ISBN：</td>
    <td width="294" align="left">
        <asp:TextBox ID="txtIsbn" runat="server"></asp:TextBox>
                    </td>
  </tr>
  <tr>
    <td width="92"><div align="right">图书名称：</div></td>
    <td width="294" align="left">
        <asp:TextBox ID="txtBname" runat="server" Width="195px"></asp:TextBox>
                    </td>
  </tr>
  <tr>
    <td><div align="right">图书类别：</div></td>
    <td align="left">
        <asp:DropDownList ID="ddlBcid" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="bcName" DataValueField="bcId">
        </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [bookClass]"></asp:SqlDataSource>
                    </td>
  </tr>
  <tr>
    <td><div align="right">作者：</div></td>
    <td align="left">
        <asp:TextBox ID="txtBzz" runat="server" Width="195px"></asp:TextBox>
                    </td>
  </tr>
  <tr>
    <td><div align="right">单价：</div></td>
    <td align="left">
        <asp:TextBox ID="txtBprice" runat="server"></asp:TextBox>
                    </td>
  </tr>
  <tr>
    <td><div align="right">库存量：</div></td>
    <td align="left">
        <asp:TextBox ID="txtBkcCount" runat="server"></asp:TextBox>
                    </td>
  </tr>
  <tr>
    <td><div align="right">图片：</div></td>
    <td align="left">
        <asp:FileUpload ID="fileBPictuer" runat="server" />
                    </td>
  </tr>
  <tr>
    <td><div align="right">简介：</div></td>
    <td align="left">
        <asp:TextBox ID="txtBContent" runat="server" Height="81px" TextMode="MultiLine" 
            Width="267px"></asp:TextBox>
                    </td>
  </tr>
  
  <tr>
    <td colspan="2"><div align="center">
        <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
        </div></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
