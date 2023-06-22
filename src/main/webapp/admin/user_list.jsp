<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     
    <link rel="stylesheet" type="text/css" href="../css/skin.css" />
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="../js/pages/css/layui.css">
    <link rel="stylesheet" href="../css/layer.css">

</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="./Images/mail_left_bg.gif">
                    <img src="./Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="./Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="././Images/content_bg.gif">
                        <tr><td height="31"><div class="title">添加栏目</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="./Images/mail_right_bg.gif"><img src="./Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="./Images/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="./Images/mime.gif" /></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;font-size: 14px">全部会员</h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        
                        <!-- 产品列表开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                           
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            
                                                <table width="100%"   class="cont tr_color" id="users">
                                                    <tr>

                                                        <th>排序</th>
                                                        <th>会员用户名</th>
                                                        <th>会员密码</th>
                                                        <th>邮箱</th>
                                                        <th>手机号</th>
                                                        <th>地址</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    
                                                    
                                         

                                                </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 产品列表结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                          <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt">
                            <div id="page"></div>
                         
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- 底部部分 -->
                        <tr>
                <td valign="bottom" background="../images/Images/mail_left_bg.gif">
                    <img src="../images/Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="../images/Images/buttom_bgs.gif">
                    <img src="../images/Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="../images/Images/mail_right_bg.gif">
                    <img src="../images/Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
         <script type="text/javascript" src="../js/pages/layui.js"></script>
         <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<%--          <script type="text/javascript" src="../js/Js/user_1.js"></script>--%>
           <script type="text/javascript" src="../js/layer.js"></script>
          <script type="text/javascript" src="../js/jquery.cookie.js"></script>

    <script type="text/javascript">
        $(function() {
            var str = ""

            function getUsers() {
                $.ajax({
                    url : "/Shop-SSM/adminGetByUsers.do",
                    type : "get",
                    dataType : "json",
                    success : function(m) {
                        UserList_(m)
                        $('#users').append(str)

                        dels()
                    }

                })
            }

            getUsers()

            function UserList_(arry) {
                var num = 1;
                for(var i in arry){
                    str+="<tr align='center' class='d godlist'>"
                    str+="<td>"+(num++)+"</td>"
                    str+="<td>"+arry[i]["users"]+"</td>"
                    str+="<td>"+arry[i]["password"]+"</td>"
                    str+="<td>"+arry[i]["email"]+"</td>"
                    str+="<td>"+arry[i]["iphone"]+"</td>"
                    str+="<td>"+arry[i]["address"]+"</td>"
                    str+="<td><a href='user_update.jsp?id=" + arry[i]["id"] + "'>修改</a>"
                    var l2 = "<shiro:hasPermission name='delete'>&nbsp;&nbsp;&nbsp;&nbsp;<a class='del' rel='" + arry[i]["id"] + "' href='javascript:;'>删除</a></shiro:hasPermission>";
                    str +=  l2
                    str+="</td></tr>"
                }

            }




            function dels() {
                $(".del").click(function(){
                    var ids = $(this).attr("rel");
                    layer.open({
                        icon:3,
                        content:"这是危险的操作，删除该账户，则账户下的所有信息会全被清除！",
                        title:"确认删除",
                        btn: ['确定', '取消'],
                        yes: function(index, layero){
                            $.ajax({
                                url : "/Shop-SSM/adminDelsUsers.do",
                                type : "post",
                                data:{
                                    "id" : ids,
                                    "shiro_id" : eval("(" + $.cookie('admin-users') + ")")['admin_shiro']
                                },
                                dataType : "json",

                                complete: function (XMLHttpRequest) {
                                    console.log(XMLHttpRequest)
                                    var redirect = XMLHttpRequest.getResponseHeader("SESSIONSTATUS");  //获取响应头中的跳转地址
                                    if(redirect === "TIMEOUT"){
                                        window.location.href = "/Shop-SSM/admin/user_list.jsp";
                                    }
                                },

                                success : function (m) {
                                    console.log(m)
                                    if(m.state==-1){
                                        layer.msg("您的权限不足，无法删除",{
                                            icon:5,time:3000
                                        });
                                    }else if(m.state==1){
                                        layer.msg("删除成功",{
                                            icon:1,time:2000
                                        });
                                        setTimeout("location.href='user_list.jsp'",1500);

                                    }else{
                                        layer.msg("删除失败",{
                                            icon:5,time:3000
                                        });
                                    }
                                }
                            });

                        }
                        ,btn2: function(index, layero){
                            layer.msg("已取消",{
                                icon:2,time:1000
                            });
                        }
                    });
                    return false;
                });
            }

        })

    </script>

    </body>
</html>