<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">



.rightframe {
   
    float: left;
  
    background-color: #00549c;
}

.table {
    width: 91%;
    margin-left:5%;
            height: 161px;
        }
        tr {
            height:40px;
        }

        .rightframe2 {
            height: 265px;
          
            margin-top: 67px;
        }

        .auto-style5 {
            width: 91%;
            margin-left: 5%;
            height: 132px;
        }
        .auto-style7 {
            width: 158px;
        }
        
        .auto-style9 {
            width: 97%;
            float: left;
            height: 820px;
            background-color: #00549c;
        }

        .auto-style10 {
            height: 292px;
            width: 644px;
            margin-top: 67px;
        }
        .auto-style11 {
            width: 58%;
            height: 14px;
            margin-bottom: 0px;
        }

        .auto-style12 {
            width: 79px;
        }
        .auto-style13 {
            width: 77px;
        }

        .auto-style14 {
            width: 93px;
        }

        .auto-style15 {
            position: absolute;
            left: 20px;
            top: 522px;
            float: left;
        }
        .auto-style16 {
            position: absolute;
            left: 283px;
            top: 525px;
            float: left;
            width: 371px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
       

            <div class="auto-style9">
        <div class="auto-style5">       
          
               
       
            <table class="auto-style11">
                <tr>
                    <td class="auto-style14">年度：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="Txtsearch" runat="server" Height="25px" Width="141px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button1" runat="server" Height="27px" Text="查询" Width="73px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style13">
                        &nbsp;<asp:Button ID="Button2" runat="server" Height="27px" Text="退出" Width="72px" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Height="26px" Text="导出到excle" Width="84px" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
          
               
       
        </div>               
      
                <div class="auto-style10">
            
                    
    
                    <asp:GridView ID="GridView1" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="153px" Width="644px" AutoGenerateColumns="False" BorderStyle="Solid" BackColor="White" BorderColor="#999999" BorderWidth="1px" AllowPaging="True" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging1">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="pxid" HeaderText="编号" >
                    <ControlStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pxsj" HeaderText="年度" >
                    <ControlStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pxmc" HeaderText="项目名称" >
                    <ControlStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pxqc" HeaderText="期次" >
                    <ControlStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="缴费总额" DataField="jfhj" />
                    <asp:BoundField HeaderText="人数" DataField="peoplecount" >
                    <ControlStyle Width="70px" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="详细" ShowSelectButton="True" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="结束" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            
                   <div class="auto-style15"> 
                     <asp:GridView ID="GridView2" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="150px" Width="245px" AutoGenerateColumns="False" BorderStyle="Solid" BackColor="White" BorderColor="#999999" BorderWidth="1px" PageSize="3" AllowPaging="True" OnPageIndexChanging="GridView2_PageIndexChanging">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="pxid" HeaderText="编号" >
                    <ControlStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="人数" DataField="peoplecount" >
                    <ControlStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="jfhj" HeaderText="缴费统计" >
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>  </div>
                    <div class="auto-style16">
                    <asp:GridView ID="GridView3" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="150px" Width="371px" AutoGenerateColumns="False" BorderStyle="Solid" BackColor="White" BorderColor="#999999" BorderWidth="1px" PageSize="3" AllowPaging="True" OnPageIndexChanging="GridView3_PageIndexChanging">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="pxid" HeaderText="账单" >
                    <ControlStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="班级" DataField="bj" >
                    <ControlStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pay" HeaderText="费用名称" >
                    </asp:BoundField>
                    <asp:BoundField DataField="money" HeaderText="金额" />
                    <asp:BoundField DataField="bltime" HeaderText="日期" />
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
            </div>
 
   
    </form>
</body>
</html>
