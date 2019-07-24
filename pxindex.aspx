<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pxindex.aspx.cs" Inherits="usermanager" %>



<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="css/index.css" type="text/css" />
     <link rel="stylesheet" href="css/pxindex.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">

                          

        <div id="container" class="body_main">
        <div class="topframe">
            <div  class="topframe_1">
                <div  class="topframe_1_1">
                </div>
                <div class="topframe_1_2">
                </div>
            </div>
            <div  class="topframe_2" style="height:35px;">
                <div  class="topframe_2_1">
                </div>
                <div class="topframe_2_2">
                    <div  class="showtime_136245321004571740_1601">
                        
                        <h3>
                            <span>日期时间</span>
                        </h3>
                        <span class="time" >
                        </span>
                        <span  class="xuen">
                        </span>
                        <span  class="xueq">
                        </span>
                        <span class="jxz">
                            
                        <label id="Lable2"></label>
                          <script type="text/javascript" language="javascript">
                              window.setInterval(function () {
                                  document.getElementById("Lable2").innerHTML =new Date;
                              }, 1000);
</script>
                        </span>

                    </div>
                    <div class="user">
                        当前用户：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;所在部门：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                    </div>
                </div>
             
            </div>
        </div>
            <div class="main">
            <div class="leftframe">
                <asp:TreeView ID="TreeView1" runat="server" Height="503px" ImageSet="Contacts" NodeIndent="10" OnLoad="TreeView1_Load" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Width="139px">
                    <HoverNodeStyle Font-Underline="False" />
                    <Nodes>
                        <asp:TreeNode Text="培训项目" Value="领导培训人员财务人员管理员系部学员">
                            <asp:TreeNode NavigateUrl="~/pxinfoadd.aspx" Target="ICount" Text="建立培训信息" Value="管理员培训人员领导"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" NavigateUrl="~/xsbm.aspx" Text="学员报名" Value="管理员领导培训人员财务人员系部学员" Target="ICount"></asp:TreeNode>
                            <asp:TreeNode Text="学员分班" Value="管理员培训人员" NavigateUrl="~/no.aspx" Target="ICount"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/pxpay.aspx" Target="ICount" Text="培训缴费" Value="领导财务人员管理员"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/pxcost.aspx" Target="ICount" Text="支出费用登记" Value="管理员财务人员领导"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/search.aspx" Target="ICount" Text="收入支出统计" Value="管理员领导"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="系统设置" Value="领导培训人员财务人员管理员系部学员">
                            <asp:TreeNode NavigateUrl="~/userxg.aspx" Target="ICount" Text="用户密码修改" Value="领导培训人员财务人员管理员系部学员"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/usermanage.aspx" Target="ICount" Text="用户管理" Value="领导管理员"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/index.aspx" Text="退出系统" Value="领导培训人员财务人员管理员系部学员"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
                    <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
         
            </div>
           
            <div class="rightframe">
                <iframe name="ICount"  id="Ifrc" height="100%" width="100%"  runat="server"  border="0" frameborder="0" scrolling="auto">
              
           </iframe>
            </div>
          
      
    </div>
    </form>
</body>
</html>
