<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyAdminPassword.aspx.cs" Inherits="admin_modifyAdminPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <br />
        修改密码<br />
        <asp:Label ID="labMsg" runat="server"></asp:Label>
        <br />
        旧密码：<asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtOldPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
        <br />
        新密码：<asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtNewPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
        <br />
        确认密码：<asp:TextBox ID="txtComfigPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtComfigPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtNewPassword" ControlToValidate="txtComfigPassword" 
            ErrorMessage="2次密码输入不一致"></asp:CompareValidator>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">修改密码</asp:LinkButton>
    </div>
    </form>
</body>
</html>
