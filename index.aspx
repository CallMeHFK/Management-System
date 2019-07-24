<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>安徽工业职业技术学院-培训部</title>
    <link rel="stylesheet" href="css/index.css" type="text/css" />

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
            <div  class="topframe_2">
                <div  class="topframe_2_1">
                    <div  class="navigation_136245320998259944_1601">
                        <h3 class="title">
                            <span>
                            </span>
                        </h3>
                        <ul class="nav" >
                            <li class="">
                                <a class="topname" href="#" target="_self">
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
                                <a class="topname" href="xybmmain.aspx" target="_self">
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
                        <span class="jxz">
                           <label id="Lable2"></label>
                          <script type="text/javascript" language="javascript">
                              window.setInterval(function () {
                                  document.getElementById("Lable2").innerHTML = new Date();
                              }, 1000);
                            </script>

                    </div>
                    
                </div>
                <div  class="topframe_2_3">
                    <div  class="WebsiteSearch_136245321009224104_1601">
                        <h3>
                            <span>站点搜索</span>
                          
                        </h3>
                        <dl>
                            <dt>
                                <span class="gjz">
                                    <label>站内搜索：</label>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;</span><span class="lanm"><label>栏目</label>
                                    <select id="lmdm">
                                        <option value="">全部</option>
                                    </select>
                                </span>
                            </dt>
                            <dd>
                                <button id="search"">搜索</button>
                            </dd>
                            <input type="hidden" id="RsCount" value="" />
                        </dl>
                        
                    </div>
                </div>
            </div>
        </div>
        <div  class="mainframe">
            <div  class="mainframe_1">
                <div  class="mainframe_1_3">
                    <div  class="newsScrollControl_136376753940661201">
                        <h3>
                            <span>用户登录</span>
                        </h3>
                      
                        <div  style="height: 265px; border: 1px solid #cdcdcd">
                           
                                <br />
                           
                                <br />
                           
                                <table>
                                    <tr>
                                        <td class="auto-style9">用户名：</td>
                                        <td class="auto-style4"> 
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px; border:solid 1px #4d4d4d;"></asp:TextBox>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="不能输入空值"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10"> 密码：</td>

                                        <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="margin-left: 0px; border:solid 1px #4d4d4d;"></asp:TextBox>
                                        </td>
                                         <td class="auto-style7"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10">验证码：</td>

                                        <td class="auto-style8" colspan="2">
                    <asp:TextBox ID="txtYzm" runat="server" style="margin-left: 0px; border:solid 1px #4d4d4d;" Height="17px" Width="72px"></asp:TextBox>
                        <span class="jxz">
                                            <asp:ImageButton ID="ImageButton1" runat="server"  Height="27px" Width="89px" ImageUrl="~/yzm.aspx" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11"></td>

                                        <td class="auto-style6">
                                            <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Text="登录" Width="86px" BorderColor="#333333" BackColor="Gray" />
                    
                                        </td>
                                         <td class="auto-style1"><a href="#">忘记密码</a></td>
                                    </tr>
                                    </table>
                          
                                
                        </div>
                        <div  style="position:absolute;z-index:1;visibility:hidden;left:0;top:0;">
                        </div>
                       
                    </div>
                </div>
                <div  class="mainframe_1_2">
                    <div  class="htmldisplay_136376624110983634">
                        <h3>
                            <span>部门介绍</span>
                        </h3>
                        <div class="con" id="htmlcontent" style="font-size:12px">
                            <div class="maincon">
                                <div style="line-height: 20pt; text-indent: 21pt" align="left">学院培训部是学院非学历教育的管理部门,承担高职学生的技能培训与鉴定,承担社会从业人员的岗前培训、岗位培训和继续教育等培训项目，承担生产岗位工人的各级各类技能培训与鉴定工作，是国家特大型企业------铜陵有色金属集团公司的培训基地。</div>
                                <div style="line-height: 20pt; text-indent: 21pt" align="left">教育资源丰富：学院现占地面积443亩，教学、行政、 生活用房建筑面积14.01万平方米， 图书馆藏书37万余册，拥有各类实验室42个，实习实训基地 49个。学院拥有一支结构合理、勤勉、敬业的高素质教师队伍，现有专任教师266人，其中副教授以上58人，40%以上为&ldquo;双师&rdquo;型教师。学院下设信息工程系、电气工程系、机械工程系、资源开发系、管理工程系、基础部等6个系部，开办了计算机应用技术、软件技术、计算机网络技术、计算机多媒体技术、动漫设计与制作、机电一体化技术、电气自动化技术、数控技术、汽车检测与维修技术。。。</div>
                                <p>
                                    <a class="conmore" target="_blank" href="http://portal.ahip.cn:84/pxb/type/160102.html">更多&gt;&gt;</a>
                                </p>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="mainframe_2">
                <div  class="mainframe_2_1">
                    <div  class="newslist_136245321157621929_1601">
                        <h3>
                            <span>培训资质</span>
                            <a href=http://www.ahip.cn:84/pxb/type/160105.html target=_blank>
                            </a>
                        </h3>
                        <div class="con">
                            <ul></ul>
                        </div>
                    </div>
                </div>
                <div  class="mainframe_2_4">
                    <div  class="mainframe_2_2">
                        <div  class="newslist_136245321152911918_1601">
                            <h3>
                                <span>开班信息</span>
                                <a href=http://www.ahip.cn:84/pxb/type/160106.html target=_blank>
                                </a>
                            </h3>
                            <div class="con">
                                <asp:DataList ID="DataList1" runat="server" style="color: #0000FF; background-color: #FFFFFF" Width="303px">
                                    <FooterTemplate>
                                        &nbsp;
                                    </FooterTemplate>
                                    <HeaderTemplate>
                <br /> 
                <hr />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" ForeColor="#333333" Text='<%# Eval("pxmc") %>'></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label5" runat="server" ForeColor="#333333" Text='<%# Eval("newsTime") %>'></asp:Label>
                                        <br />
                <br />
                                    </ItemTemplate>
                                    <SeparatorTemplate>
                <hr />
                                    </SeparatorTemplate>
                                </asp:DataList>
                            </div>
                        </div>
                    </div>
                    <div class="mainframe_2_3">
                        <div  class="newslist_136245321148270048_1601">
                            <h3>
                                <span>鉴定安排</span>
                                <a href=http://www.ahip.cn:84/pxb/type/160107.html target=_blank>
                                </a>
                            </h3>
                            <div class="con">
                                <ul>
                                    <li>
                                        <a href="http://www.ahip.cn:84/pxb/news/143519431818661966.html" target="_blank" title=学院承办2015全市职业类院校职业技能鉴定考试>学院承办2015全市职业类院...</a>
                                        <span class="time">2015-04-21</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="botframe">
            <div  class="botframe_3">
                <div  class="textdisplay_136245321060775418_1601">
                    <div class="con">
                        <p>版权所有◎2008-2013 安徽工业职业技术学院 技术支持:技术开发中心</p>
                        <p>
                            皖ICP备05012980号 Tel:0562-2864456 E-mail:agzybgs@163.com
                            <a title="安徽工业职业技术学院后台管理系统" href="http://portal.ahip.cn:8016/zfsmp">后台管理</a>
                            <br />&nbsp;
                        </p>
                    </div>
                </div>
            </div>
            <div class="botframe_4">
                <div  class="webDegreeControl_136245321065471881_1601">
                  
              
                    <h3 id="webDegree"></h3>
                   
                </div>
            </div>
        </div>
        <div  class="otherframe">
        </div>
    </div>
    <div>
    
    </div>
    </form>
</body>
</html>
