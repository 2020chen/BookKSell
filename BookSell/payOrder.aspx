<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payOrder.aspx.cs" Debug="true" Inherits="payOrder" %>

<%@ Register Src="~/pageHeader.ascx" TagPrefix="uc1" TagName="pageHeader" %>
<%@ Register Src="~/pageFooter.ascx" TagPrefix="uc1" TagName="pageFooter" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>支付订单</title>
</head>
<body>
    <uc1:pageHeader runat="server" ID="pageHeader" />
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="Isbn" HeaderText="ISBN编号" />
                <asp:BoundField DataField="Count" HeaderText="购买量" />
                <asp:BoundField DataField="Bname" HeaderText="书名" />
                <asp:BoundField DataField="Bprice" HeaderText="单价" />
            </Columns>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
      <asp:Label ID="labSumPrice" runat="server"></asp:Label>
   
      <br />
   
      <table border="0" style="height: 212px; width: 323px">
        <tr>
          <td align="right">收货地址：</td>
          <td>
              <asp:TextBox ID="txtPostAdress" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="txtPostAdress" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
          <td align="right">国内邮政编码：</td>
          <td>
              <asp:TextBox ID="txtPostNumber" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="txtPostNumber" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
          <td align="right">收货人：</td>
          <td>
              <asp:TextBox ID="txtOrderMember" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ControlToValidate="txtOrderMember" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
          <td align="right">支付方式：</td>
          <td>
              <asp:DropDownList ID="ddlPid" runat="server" 
                  DataSourceID="SqlDataSource1" DataTextField="pname" DataValueField="pid">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT [pid], [pname] FROM [payInfo]"></asp:SqlDataSource>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ControlToValidate="ddlPid" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
          <td align="right">查询密码：</td>
          <td>
              <asp:TextBox ID="txtFindPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                  ControlToValidate="txtFindPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
          <td align="center" colspan="2">
              <asp:Button ID="btnSaveOrder" runat="server" Text="保存订单" 
                  onclick="btnSaveOrder_Click" />
            </td>
        </tr>
      </table>
    
    </div>
      <p>&nbsp;</p>
    </form>
    <uc1:pageFooter runat="server" ID="pageFooter" />
</body>
</html>
