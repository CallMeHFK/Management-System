<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xybmmain.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="css/index.css" type="text/css" />

  <link rel="stylesheet" href="css/xybm.css" type="text/css" />

    <style type="text/css">
        .auto-style42 {
            width: 100%;
            height: 195px;
            position: relative;
            left: -173px;
            top: 0px;
        }
    </style>

    </head>
<body>
    <form id="form1" runat="server">

                            <input type="hidden" id="RsCount" value="" />

        <div id="container" class="body_main">
        <div class="topframe">
            <div  class="auto-style42">
                <div  class="topframe_1_1">
                </div>
                <div class="topframe_1_2">
                </div>
            </div>
            <div  class="topframe_2">
                <div  class="topframe_2_1">
                    <div  class="navigation_136245320998259944_1601">
                        <h3 class="title">
                            <span>
                            </span>
                        </h3>
                        <ul class="nav" >
                            <li class="">
                                <a class="topname" href="index.aspx" target="_self">
                                    <span>网站首页</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>部门介绍</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>培训计划</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="xybm.aspx" target="_self">
                                    <span>学员报名</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>在线考试</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>鉴定考试</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="topname" href="#" target="_self">
                                    <span>联系我们</span>
                                </a>
                            </li>
                           
                        </ul>

                    </div>
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
                        <span class="jxz"> 当前日期：<%=DateTime.Now.ToShortDateString()%></span>
                        </span>

                    </div>
                </div>
             
            </div>
        </div>
            <div class="main">
            <div class="leftframe"
          <div class="leftframe_1">


                <br />
                <br />
                <br />


        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Contacts" NodeIndent="10" Height="355px" Width="109px">
            <HoverNodeStyle Font-Underline="False" />
            <Nodes>
                <asp:TreeNode Text="学员管理" Value="安工学校">
                    <asp:TreeNode Text="学员报名" Value="学员" NavigateUrl="~/xsbm.aspx" Checked="True" Selected="True" Target="ICount">
                    </asp:TreeNode>
                    <asp:TreeNode Text="学员登录" Value="学员" NavigateUrl="~/index.aspx">
                    </asp:TreeNode>
                    <asp:TreeNode Text="信息修改" Value="学员" NavigateUrl="~/index.aspx">
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    

            </div>
        </div>
            <div class="rightframe">
                <iframe name="ICount"  id="Ifrc" height="100%" width="100%"  runat="server"  border="0" frameborder="0" scrolling="auto">
              
           </iframe>
            </div>
      </div>
          
      
    </div>
    <div>
    
    </div>
    </form>
</body>
</html>
