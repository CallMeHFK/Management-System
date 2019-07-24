<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .rightframe2 {
            height: 374px;
        }
    </style>
</head>
<body style="height: 422px; width: 799px">
    <form id="form1" runat="server">
    <div>
    
   <input type="button"value="直接打印" onclick="document.all.webbrowser.ExecWB(6, 0)"/>
        <input type="button"value="页面设置" onclick="document.all.webbrowser.ExecWB(8, 1)"/>
        <input type="button"value="打印预览" onclick="document.all.webbrowser.ExecWB(7, 1)"/>
        <br />
    <div class="rightframe2" style="position:absolute; top: 37px; left: 10px; width: 715px;">
    
                   <div style="height: 25px; width: 98px; position:absolute; top:47px; left:42px;">姓名:<asp:Label ID="LblXm" runat="server"></asp:Label> </div>
                    <div style="height: 25px; width: 162px; position:absolute; top:189px; left:218px;">缴费金额:<asp:Label ID="LblMoney" runat="server"></asp:Label></div>
                    <div style="height: 25px; width: 110px; position:absolute; top:189px; left:392px;">合计:<asp:Label ID="LblHj" runat="server"></asp:Label></div>
                    <div style="height: 25px; width: 87px; position:absolute; top:47px; left:382px;"><asp:Label ID="LblDate" runat="server"></asp:Label></div>
                   <div style="height: 25px; width: 283px; position:absolute; top:230px; left:218px;"> 大写:<asp:Label ID="LblMoneyDx" runat="server"></asp:Label></div>
                    <div style="height: 25px; width: 270px; position:absolute; top:107px; left:136px;">缴费项目:<asp:Label ID="LblMc" runat="server"></asp:Label></div>
                    <div style="height: 25px; width: 133px; position:absolute; top:272px; left:288px;">办理人:<asp:Label ID="LblBlr" runat="server"></asp:Label></div>
    
                </div>
    </div>
    </form>
</body>
</html>
