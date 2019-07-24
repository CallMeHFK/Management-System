<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usermanage.aspx.cs" Inherits="pxsearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .table {
    width: 42%;
    margin-left:5%;
          
        }
        tr {
            height:40px;
        }

        .auto-style1 {
            width: 105px;
        }
        .auto-style2 {
        }
                
        .rightframe2 {
            height: 265px;
            width: 599px;
            margin-top: 67px;
        }
        .auto-style5 {
            width: 700px;
        }
        .auto-style7 {
            width: 110px;
        }
        .auto-style8 {
            width: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>  
        <asp:Button ID="btnAdd" runat="server" BorderWidth="0" Text="添加用户" OnClick="btnIntroduction_Click" />  
        <asp:Button ID="btnYhqx" runat="server" BorderWidth="0" Text="用户权限" OnClick="btnIntroduction_Click" />  
        <table style="border: 1px ridge #0000FF; width: 78%;">  
            <tr valign="top">  
                <td class="auto-style5">  
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">  
                        <asp:View ID="View1" runat="server">  
                              <div class="table">       
          
               
            <table style="width:172%;">
                <tr>
                    <td class="auto-style1">所属部门：</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DDLdept" runat="server" Height="20px" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="DDLdept_SelectedIndexChanged">
                            <asp:ListItem>培训部</asp:ListItem>
                            <asp:ListItem>财务部</asp:ListItem>
                            <asp:ListItem>系部</asp:ListItem>
                            <asp:ListItem>管理部</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        角色：<asp:DropDownList ID="DDLrole" runat="server" Height="26px" Width="79px" AutoPostBack="True" OnSelectedIndexChanged="DDLrole_SelectedIndexChanged">
                            <asp:ListItem>管理员</asp:ListItem>
                            <asp:ListItem>领导</asp:ListItem>
                            <asp:ListItem>培训人员</asp:ListItem>
                            <asp:ListItem>财务人员</asp:ListItem>
                            <asp:ListItem>学员</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">用户名：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtUser" runat="server" Height="20px" Width="100px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
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
                    &nbsp;&nbsp;
                        <asp:Button ID="BtnExit" runat="server" Height="30px" Text="退出" Width="76px" OnClick="BtnExit_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
          
               
        </div>               
      
            
                    
    
                
                        </asp:View>  
                        <asp:View ID="View2" runat="server">  
                        </asp:View>  
                    </asp:MultiView>  
                </td>  
            </tr>  
        </table>  
    </div>  
            
                        <div class="rightframe2">
            
    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="695px" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="username" HeaderText="用户名" />
                            <asp:BoundField DataField="Dept" HeaderText="所属部门" />
                            <asp:BoundField DataField="Role" HeaderText="角色" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
            
                  </div>  
    
    </form>
</body>
</html>
