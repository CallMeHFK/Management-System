<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userxg.aspx.cs" Inherits="userxg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 81px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:37%;">
                <tr>
                    <td class="auto-style1">用户名：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtUser" runat="server" Height="20px" Width="100px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">密码：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtPwd" runat="server" Height="20px" Width="100px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">确认密码：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtPwdconfim" runat="server" Height="20px" Width="100px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPwd" ControlToValidate="TxtPwdconfim" Display="Dynamic" ErrorMessage="密码不一致"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="BtnSave" runat="server" Height="30px" Text="确定" Width="76px" OnClick="BtnSave_Click" />
                    &nbsp;
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
