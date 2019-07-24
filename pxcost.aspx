<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pxcost.aspx.cs" Inherits="costitem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  
 <link rel="stylesheet" href="css/pxcost.css" type="text/css" />
    <style type="text/css">
        .auto-style9 {
            width: 105px;
            height: 83px;
        }
        .auto-style10 {
            width: 177px;
            height: 83px;
        }
        .auto-style11 {
            height: 83px;
            width: 174px;
        }
        .auto-style15 {
            width: 34%;
        }
        .auto-style16 {
            width: 177px;
            height: 50px;
        }
        .auto-style18 {
            width: 177px;
            height: 51px;
        }
        .auto-style19 {
            width: 100%;
        }
        .auto-style23 {
            width: 105px;
            height: 50px;
        }
        .auto-style25 {
            width: 105px;
            height: 51px;
        }
        .auto-style26 {
            width: 174px;
            height: 50px;
        }
        .auto-style28 {
            width: 174px;
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>支出情况登记</p>
        <div class="auto-style15">
            
            
            <table class="auto-style19">
                <tr>
                    <td class="auto-style23">培训项目：</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DDLPxxm" runat="server" Height="20px" OnSelectedIndexChanged="DDLPxxm_SelectedIndexChanged" Width="136px" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style26">班级：<asp:DropDownList ID="DDLbj" runat="server" AutoPostBack="True" Height="20px">
                        <asp:ListItem>计算机班</asp:ListItem>
                        <asp:ListItem>机电班</asp:ListItem>
                        <asp:ListItem>电气班</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">费用名称：</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DDLpay" runat="server" Height="20px" Width="136px" AutoPostBack="True">
                            <asp:ListItem>教材费用</asp:ListItem>
                            <asp:ListItem>生活费用</asp:ListItem>
                            <asp:ListItem>活动费用</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style26">经办人:<asp:TextBox ID="TxtPeople" runat="server" Width="63px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">费用金额：</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TxtPay" runat="server" Width="86px"></asp:TextBox>
                        元</td>
                    <td class="auto-style26"></td>
                </tr>
                <tr>
                    <td class="auto-style23">日期：</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TxtDate" runat="server" Width="118px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/images/ico_10.gif" OnClick="ImageButton1_Click" Width="16px" />
                    </td>
                    <td class="auto-style26"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">
            <asp:Calendar ID="Calendar1" runat="server" Height="109px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="06/10/2017 21:50:54" Visible="False" Width="168px"></asp:Calendar>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style18">
                        <asp:Button ID="BtnSave" runat="server" Height="30px" OnClick="Button1_Click" Text="保存" Width="56px" />
&nbsp;&nbsp;<asp:Button ID="BtnExit" runat="server" Height="30px" Text="退出" Width="56px" OnClick="BtnExit_Click" />
                        &nbsp;
                    </td>
                    <td class="auto-style28"></td>
                </tr>
            </table>

       <asp:GridView ID="GridView1" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="290px"  Width="660px" AutoGenerateColumns="False" BorderStyle="Solid" BackColor="White" BorderColor="#999999" BorderWidth="1px" AllowPaging="True" PageSize="5" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging"  >
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="编号" />
                    <asp:BoundField DataField="pxid" HeaderText="培训项目" />
                    <asp:BoundField DataField="bj" HeaderText="班级" >
                    <ControlStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pay" HeaderText="费用名称" >
                    <ControlStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="money" HeaderText="费用金额" />
                    <asp:BoundField DataField="bltime" HeaderText="日期" >
                    <ControlStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="people" HeaderText="经办人" >
                    <ControlStyle Width="70px" />
                    </asp:BoundField>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="50px" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

        </div>
    </div>
        <div>
        </div>
    </form>
</body>
</html>
