<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">
  	<title>My JSP 'menu.jsp' starting page</title>
  	<style type="text/css">
<!--
body {
	background-color: #e6e6e6;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
-->
</style>
  </head>
  
  <body>
    <table width="200" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:5px;">
  <tr>
    <td background="back/images/menu_title.gif" height="40px"> 
    	<div style="font-size:12px; font-weight:bold; color:#FFF; margin-left:30px;">管理员账号</div>
    </td>
  </tr>
  <tr>
    <td background="back/images/menu_blank.gif" height="35px">
    	<div style="font-size:12px; margin-left:30px;"><a href="AdminSelectPage.do" target="adminAccount">管理员列表</a></div>
    </td>
  </tr>
  <tr>
    <td background="back/images/menu_blank.gif" height="35px">
    	<div style="font-size:12px; margin-left:30px;"><a href="showAddAdmin.do" target="adminAccount">添加管理员</a></div>
    </td>
  </tr>
   
  <tr>
    <td background="back/images/menu_bottom.gif" height="13px"></td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:5px;">
  <tr>
    <td style="background: url('back/images/menu_title.gif');" height="40px"> 
    	<div style="font-size:12px; font-weight:bold; color:#FFF; margin-left:30px;">管理权限</div>
    </td>
  </tr>
  <tr>
    <td style="background: url('back/images/menu_blank.gif');" height="35px">
    	<div style="font-size:12px; margin-left:30px;"><a href="showPermission.do" target="adminAccount">管理权限-权限列表</a></div>
    </td>
  </tr>
  <tr>
    <td style="background: url('back/images/menu_blank.gif');" height="35px">
    	<div style="font-size:12px; margin-left:30px;"><a href="back/admins/adminAccount/AddPermission.jsp" target="adminAccount">管理权限-新增权限</a></div>
    </td>
  </tr>
  <tr>
    <td style="background: url('back/images/menu_bottom.gif');" height="13px"></td>
  </tr>
</table>
  </body>
</html>
