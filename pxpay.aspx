<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pxpay.aspx.cs" Inherits="pxzc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  
    <style type="text/css">
    

.main {
    width: 962px;
    margin: 0 auto;
}

.rightframe {
    width:82%;
    float: left;
    height: 500px;
    background-color: #00549c;
}

.table {
    width: 91%;
    margin-left:5%;
            height: 161px;
        }
        .auto-style14 {
            width: 136px;
        }
        tr { height:30px;
        }
        
        .auto-style18 {            width: 116px;
        }
        .auto-style19 {
            width: 241px;
        }
        .auto-style20 {
            height: 30px;
        }
        .auto-style21 {
            height: 28px;
            width: 116px;
        }
        .auto-style22 {
            width: 136px;
            height: 28px;
        }
        .auto-style23 {
            height: 28px;
        }
        .auto-style25 {
            width: 120px;
        }
        .auto-style27 {
            width: 120px;
            height: 41px;
        }
        .auto-style28 {
            width: 241px;
            height: 41px;
        }
        .auto-style30 {
            height: 34px;
        }
        .auto-style31 {
            width: 136px;
            height: 34px;
        }
        .auto-style32 {
            height: 41px;
            width: 116px;
        }
        .auto-style33 {
            width: 136px;
            height: 41px;
        }
        .auto-style34 {
            width: 595px;
        }
        .auto-style35 {
            height: 34px;
            width: 116px;
        }
        .auto-style36 {
            width: 91%;
            margin-left: 5%;
            height: 204px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

                          

        <div id="container" class="body_main">

        </div>
            <div class="rightframe">
        <div class="auto-style36">       
          <table class="auto-style34">
             <tr>
                 <td class="auto-style32">培训项目</td>
                 <td class="auto-style33">
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="45px" Width="119px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style27">共：<asp:TextBox ID="TxtSum" runat="server" Height="17px" Width="49px" ReadOnly="True" ValidateRequestMode="Enabled"></asp:TextBox>
                 </td>
                 <td class="auto-style28">未缴费人数：<asp:TextBox ID="Txtnopay" runat="server" Height="19px" ReadOnly="True" Width="46px"></asp:TextBox>
                 </td>
             </tr>
            <tr>
                 <td class="auto-style35">人均缴费：</td>
                 <td class="auto-style31">
                     <asp:TextBox ID="Txtjf" runat="server" Height="25px" Width="128px" AutoPostBack="True" OnDataBinding="Txtjf_TextChanged" OnDisposed="Txtjf_TextChanged" OnTextChanged="Txtjf_TextChanged"></asp:TextBox>
                 </td>
                 <td class="auto-style30" colspan="2">
                     合计金额：<asp:TextBox ID="Txtmoney" runat="server" Height="23px" Width="77px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
              <tr>
                 <td class="auto-style18">

     
                     流水号：</td>
                 <td class="auto-style14">
                     <asp:TextBox ID="Txtlsh" runat="server" Height="25px" Width="128px"></asp:TextBox>
                  </td>
                 <td class="auto-style25">
                     &nbsp;</td>
                 <td class="auto-style19">
                     &nbsp;</td>
              </tr>
             <tr>
                 <td class="auto-style21">缴费情况：</td>
                 <td class="auto-style22">
                     <asp:CheckBox ID="CheckBox1" runat="server" Text="缴费" />
                 </td>
                 <td class="auto-style23" colspan="2">
                     <asp:Button ID="Button1" runat="server" Height="23px" Text="保存" Width="64px" OnClick="Button1_Click" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button2" runat="server" Height="23px" Text="退出" Width="64px" OnClick="Button2_Click" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style20" colspan="4">
                     <asp:RadioButton ID="RadioButton1" GroupName="rb" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="已缴费学员" AutoPostBack="True" />
                     <asp:RadioButton ID="RadioButton2" GroupName="rb" runat="server" Text="未缴费学员" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
                     <asp:RadioButton ID="RadioButton3" GroupName="rb"  runat="server" Text="全部学员" AutoPostBack="True" Checked="True" OnCheckedChanged="RadioButton3_CheckedChanged" />
                 </td>
             </tr>
             </table>
               
        </div>               
      
                <div class="rightframe2">
    
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="307px" PageSize="5" Width="706px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="pxid" HeaderText="项目编号" />
                            <asp:BoundField DataField="lsh" HeaderText="流水号">
                            <ControlStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="xm" HeaderText="姓名">
                            <ControlStyle Width="40px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gzdw" HeaderText="工作单位" />
                            <asp:BoundField HeaderText="人均缴费" DataField="jfje">
                            <ControlStyle Width="40px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="人数">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server">1</asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="70px" />
                            </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="pxid" DataNavigateUrlFormatString="print.aspx?_pxid={0}" Target="_blank" Text="打印" />
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
          
      
    </div>
   
    </form>
</body>
</html>
