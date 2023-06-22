<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <title>后台管理中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/skin.css" />
    	<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
</head>
    <body>
        <table width="100%">
            <!-- 顶部部分 -->
            <tr height="41"><td colspan="2" background="../images/Images/login_top_bg.gif">&nbsp;</td></tr>
            <!-- 主体部分 -->
            <tr style="background:url(../images/Images/login_bg.jpg) repeat-x;" height="532">
                <!-- 主体左部分 -->
                <td id="left_cont">
                    <table width="100%" height="100%">
                        <tr height="155"><td colspan="2">&nbsp;</td></tr>
                        <tr>
                            <td width="20%" rowspan="2">&nbsp;</td>
                            <td width="60%">
                                <table width="100%">
                                    <tr height="70"><td align="right"><img src="../images/Images/logo.gif" title="瑞曼科技" alt="瑞曼科技" /></td></tr>
                                    <tr height="274">
                                        <td valign="top" align="right">
                                            <ul>
                                                <%--<li>1- 企业门户站建立的首选方案...</li>
                                                <li>2- 快捷的整合方式，方便用户使用...</li>
                                                <li>3- 强大的后台系统，管理内容易如反掌...</li>--%>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                            <td width="15%" rowspan="2">&nbsp;</td>
                            </td>
                        </tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                    </table>
                </td>
                <!-- 主体右部分 -->
                <td id="right_cont">
                    <table height="100%">
                        <tr height="30%"><td colspan="3">&nbsp;</td></tr>
                        <tr>
                            <td width="45%" rowspan="5">&nbsp;</td>
                            <td valign="top" id="form">
                                <form action="/Shop-SSM/admin/adminLogin.do" method="post">
                                    <table valign="top" width="50%">
                                        <tr><td colspan="2"><h4 style="letter-spacing:1px;font-size:16px;">商城管理后台</h4></td></tr>
                                        <tr><td>管理员：</td><td><input type="text" id="users"  name="admin_user" value="" placeholder="请输入用户名"/></td></tr>
                                        <tr><td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input id="pwd" type="password" name="admin_pwd" value="" placeholder="密码"/></td></tr>
                                        <tr class="bt" align="center"><td>&nbsp;<input type="submit" value="登陆" onclick="return logins()"/></td><td>&nbsp;<input type="reset" value="重填" /></td></tr>
                                    </table>
                                </form>
                            </td>
                            <td rowspan="5">&nbsp;</td>
                        </tr>
                        <tr><td colspan="3">&nbsp;</td></tr>
                    </table>
                </td>
            </tr>

        </table>
        <script>
        function logins() {
			var users = $('#users').val().length;
			var pwd = $('#pwd').val().length;
			if(users==0||pwd==0){
				alert("请输入账户信息");
				return false;
			}else{
				return true;
			}
		}
        
        </script>
    </body>
</html>