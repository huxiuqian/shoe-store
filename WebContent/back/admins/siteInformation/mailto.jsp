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
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>无标题文档</title>
</head>

<body>


<form id="form1" name="form1" method="post" action="back/email.action">
  <p>
    <label>目标邮箱 - 
      <input type="text" name="mailto" id="mailto" />
    </label>
  </p>
  <p>
    <label>
      邮件主题 - 
        <input type="text" name="subject" id="subject" />
    </label>
  </p>
  <p>邮件正文 - </p>
  <p>
    <label>
      <textarea name="body" id="body" cols="100" rows="35"></textarea>
    </label>
  </p>
  <input type="submit" value="点击发送"/>
</form>
</body>
</html>

