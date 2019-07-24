<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xsbm.aspx.cs" Inherits="xsbm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="css/xybm.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="table">       
          <table>
             <tr>
                 <td class="auto-style36">姓名：</td>
                 <td class="auto-style40"> <asp:TextBox ID="txtRequiredField" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style35"> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="姓名不能为空！" ControlToValidate="txtRequiredField" Display="Dynamic" Enabled="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style37">密码：</td>
                 <td class="auto-style40"> <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
                 <td class="auto-style26"></td>
             </tr>
            <tr>
                 <td class="auto-style38">确认密码：</td>
                 <td class="auto-style40">
                     <asp:TextBox ID="txtPwdConfirm" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="密码输入不一致！" ControlToCompare="txtPwd" 
            ControlToValidate="txtPwdConfirm" Display="Dynamic"></asp:CompareValidator>
                 </td>
             </tr>
              <tr>
                 <td class="auto-style38">

     
                     身份证：</td>
                 <td class="auto-style40">
       <asp:TextBox ID="txtId" runat="server" TextMode="SingleLine"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtId" ErrorMessage="身份证错误" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
                 </td>
              </tr>
             <tr>
                 <td class="auto-style36">性别：</td>
                 <td class="auto-style40">
                     <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="89px">
                         <asp:ListItem Selected="True">男</asp:ListItem>
                         <asp:ListItem>女</asp:ListItem>
                     </asp:RadioButtonList>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style36">电话：</td>
                 <td class="auto-style40">
                     <asp:TextBox ID="txtPhone" runat="server" TextMode="SingleLine" Height="16px" Width="97px"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">

     
                     民族：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="62px">
                         <asp:ListItem>汉族</asp:ListItem>
                         <asp:ListItem>其他民族</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     学历：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="66px">
                         <asp:ListItem>专科</asp:ListItem>
                         <asp:ListItem>本科</asp:ListItem>
                         <asp:ListItem>硕士</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                 </td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     工作单位：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="90px">
                         <asp:ListItem>安工学院</asp:ListItem>
                         <asp:ListItem>铜陵学院</asp:ListItem>
                         <asp:ListItem>有色公司</asp:ListItem>
                         <asp:ListItem>华润苏果</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                 &nbsp;
                     <asp:TextBox ID="txtmc" runat="server"></asp:TextBox>
                     <asp:Button ID="Button4" runat="server" Text="添加" Height="25px" Width="72px" OnClick="Button4_Click" OnDisposed="Button4_Disposed" />
                     <asp:Button ID="Button5" runat="server" Text="删除" Height="25px" Width="72px" OnClick="Button5_Click" />
                 </td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     培训项目：</td>
                 <td class="auto-style40">
                     <asp:DropDownList ID="DropDownList4" runat="server">
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
            <tr>
                 <td class="auto-style38">

     
                     流水号：</td>
                 <td class="auto-style40">
                     <asp:TextBox ID="txtlsh" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style39">

     
                     &nbsp;</td>
                 <td class="auto-style40">

     
         <asp:Button ID="Button1" runat="server" Text="确定" Height="26px" Width="80px" OnClick="Button1_Click" />
        
                 </td>
                 <td class="auto-style35">
                     &nbsp;</td>
             </tr>
         </table>
               
        </div>               
      
    </form>
</body>
</html>
