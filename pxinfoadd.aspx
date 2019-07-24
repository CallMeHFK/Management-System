<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pxinfoadd.aspx.cs" Inherits="pxinfoadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 321px;
        }
        .auto-style2 {
            width: 739px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="rightframe1">
                    <table class="auto-style20">
            <tr>
                <td class="auto-style3" colspan="2" style="color:#ff0000;font-size:24px; font-weight:bold;">
                    培训项目信息输入</td>
                <td class="auto-style1" style="color:#ff0000;font-size:24px; font-weight:bold;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    培训时间</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TxtPxtime" runat="server" Width="83px" Height="25px"></asp:TextBox>
                    年</td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    培训项目</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TxtPxmc" runat="server" Height="25px" Width="100px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    培训期次</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TxtPxqc" runat="server" Height="25px" Width="100px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">
                    培训费用</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TxtPxcost" runat="server" Height="25px" Width="100px"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="3">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Enabled="False" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Enabled="False" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    开始时间</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TxtPxbegin" runat="server" Height="25px" Width="100px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="23px" ImageUrl="~/images/ico_10.gif" OnClick="ImageButton1_Click" Width="21px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style36">
                    结束时间</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TxtPxend" runat="server" Height="25px" Width="100px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" ImageUrl="~/images/ico_10.gif" OnClick="ImageButton2_Click" Width="21px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    培训内容</td>
                <td class="auto-style39" colspan="2">
                    <asp:TextBox ID="TxtPxnr" runat="server" Height="110px" TextMode="MultiLine" Width="375px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" Height="35px" Width="67px" />
                </td>
            </tr>
                        

         
        </table>
                </div>
                <div class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="387px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="744px" AutoGenerateColumns="False" BorderStyle="Solid" BackColor="White" BorderColor="#999999" BorderWidth="1px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" PageSize="5" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="pxid" HeaderText="项目编号" />
                    <asp:BoundField DataField="pxsj" HeaderText="培训时间" >
                    <ControlStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pxmc" HeaderText="培训项目" >
                    <ControlStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pxqc" HeaderText="培训期次" />
                    <asp:BoundField DataField="pxcost" HeaderText="培训费用" >
                    <ControlStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="begintime" HeaderText="开始时间" >
                    <ControlStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="endtime" HeaderText="结束时间" >
                    <ControlStyle Width="30px" />
                    </asp:BoundField>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
         
                
            </div>
    </div>
    </form>
</body>
</html>
