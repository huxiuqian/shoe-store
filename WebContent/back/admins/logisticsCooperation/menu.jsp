<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
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
</style></head>

<body>
<table width="200" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:5px;">
  <tr>
    <td style="background: url('back/images/menu_title.gif');"  height="40px"> 
    	<div style="font-size:12px; font-weight:bold; color:#FFF; margin-left:30px;">物流合作</div>
    </td>
  </tr>
  <tr>
    <td style="background: url('back/images/menu_blank.gif');" height="35px">
    	<div style="font-size:12px; margin-left:30px;"><a href="back/admins/logisticsCooperation/orderexp.jsp" target="logisticsCooperation">物流信息管理</a></div>
    </td>
  </tr>
  

   
  <tr>
    <td style="background: url('back/images/menu_bottom.gif');" height="13px"></td>
  </tr>
</table>




</body>
</html>
