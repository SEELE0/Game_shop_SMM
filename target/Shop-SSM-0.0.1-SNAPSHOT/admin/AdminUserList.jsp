<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/skin.css" />
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
                                        <td valign="bottom"><h3 style="letter-spacing:1px;font-size: 13px;color:red;">该页面仅为显示后台管理员，不能对其做任何操作！</h3></td>
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
                                            <form action="" method="">
                                            
                                                <table width="100%"   class="cont tr_color" id="goods">
                                                    <tr>

                                                        <th>排序</th>
                                                        <th>管理员昵称</th>
                                                        <th>管理员账号</th>
                                                        <th>管理员密码</th>
                                                    </tr>
                                                    

                                                </table>
                                            </form>
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
          <script type="text/javascript" src="../js/layer.js"></script>
          <script type="text/javascript" src="../js/jquery.cookie.js"></script>
          
          <script>
          var str = "";
          $.ajax({
        	  
        	  url : "/Shop-SSM/admin/adminGets.do",
        	  type : "get",
        	  dataType : "json",
        	  success : function (m) {
        		  AdminList_(m)
        		  $('#goods').append(str)
			}
        	  
          })
          
          function AdminList_(arry) {
        	  var num = 1;
			for(var i in arry){
				str+="<tr align='center' class='d'>"
					str+="<td>"+(num++)+"</td>"
					str+="<td>"+arry[i]["admin_name"]+"</td>"
					str+="<td>"+arry[i]["admin_user"]+"</td>"
					str+="<td>"+arry[i]["admin_pwd"]+"</td>"
					str+="</tr>"
			}
		}
          
          </script>
    </body>
</html>