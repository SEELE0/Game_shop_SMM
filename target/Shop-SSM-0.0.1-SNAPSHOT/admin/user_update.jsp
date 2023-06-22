<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/skin.css" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
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
                                <td valign="bottom"><h3 style="letter-spacing:1px;">用户管理</h3></td>
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
                <!-- 添加产品开始 -->
                <tr>
                    <td width="2%">&nbsp;</td>
                    <td width="96%">
                        <table width="100%">
                            <tr>
                                <td colspan="2">
                                    <form id="forms" action="" method="post">
                                        <div class="right_content clearfix">
                                            <h3 class="common_title2">个人信息</h3>
                                            <div class="site_con" id="reg_form">
                                                <form action="" method="post" id="system_form">
                                                    <div class="form_group">
                                                        <label>邮箱：</label>
                                                        <input type="text" name="email" id="email"/>
                                                        &nbsp;&nbsp;&nbsp;<span class="error_tip" style="color: red"></span>
                                                    </div>
                                                    <div class="form_group">
                                                        <label>手机号：</label>
                                                        <input type="text" name="iphone" id="iphones"/>
                                                        &nbsp;&nbsp;&nbsp;<span class="error_tip" style="color: red"></span>
                                                    </div>
                                                    <div class="form_group">
                                                        <label>联系地址：</label>
                                                        <input type="text" name="address" id="address"/>
                                                        &nbsp;&nbsp;&nbsp;<span class="error_tip" style="color: red"></span>
                                                    </div>
                                                    <input type="submit"  value="保存" class="info_submit">
                                                </form>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="2%">&nbsp;</td>
                </tr>
                <!-- 添加产品结束 -->
                <tr>
                    <td height="40" colspan="4">
                        <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                            <tr><td></td></tr>
                        </table>
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
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="../js/urlsqit.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript">
    $(function(){
        $('#forms').submit(function() {
            var email = $('#email').val();
            var iphone = $('#iphones').val();
            var address = $('#address').val();
        });})
</script>
<script>
    $('#forms').attr("action","/Shop-SSM/update.do?id="+GetQueryString("id"));//设置提交地址,拼接id



</script>
</body>
</html>