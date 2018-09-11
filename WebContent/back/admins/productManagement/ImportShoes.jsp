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
<title>importshoes.jsp</title>
<style type="text/css">
<!--
body {
	background-color: #e6e6e6;
}

body, td, th {
	font-size: 16px;
}

.STYLE1 {
	font-size: 16px
}
-->
</style>
<script type="text/javascript">
	function checkForm() {
		var s = document.getElementById("form2");
		var uploadImage = document.getElementById("uploadImage").value;
		if (uploadImage = "") {
			alert("请导入Excel文件!");
			uploadImage.focus();
			return false;
		} else {
			if (confirm("确认导入Excel文件?")) {
				s.submit();
			}
		}
	}
</script>
</head>

<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="8" rowspan="3" background="back/images/shadow.gif"><br></td>
			<td width="943" height="30" valign="middle"
				background="back/images/table_bg001.gif">&nbsp;&nbsp; <img
				src="back/images/b_sing.gif" width="12" height="12"
				align="absmiddle" />&nbsp;<font color="#999999">&nbsp;&nbsp;
					提示信息及功能说明:添加一种新的鞋</font></td>
		</tr>
		<!----------------------表格标题部分------------------------------>
		<tr>
			<td height="580" valign="top"
				background="back/images/table_bg001.gif" style="padding: 5px;">
				<table width="100%" border="0" cellspacing="1" cellpadding="0"
					align="center">
					<tr>
						<td colspan="5"><table width="100%" border="0"
								cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%"><img
										src="back/images/b_table_header_left.gif" width="58"
										height="31" /></td>
									<td width="92%" background="back/images/b_table_title_bg.gif">
										<div
											style="text-align: center; font: 12px; color: #FFF; font-weight: bold;">
											Excel批量导入鞋子</div>
									</td>
									<td width="2%"><img
										src="back/images/b_table_header_right.gif" width="58"
										height="31" /></td>
								</tr>
							</table></td>
					</tr>
					<tr>
						<td align="center"><br /> <br /> <br />
							<form id="form2" name="form1"
								action="back/admins/productManagement//import.action"
								method="post" enctype="multipart/form-data"
								onSubmit="return checkForm();">
								<table class="wwFormTable">
									<table width="500" border="0" align="center" cellpadding="0"
										cellspacing="1">
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">文件路径：</td>
											<td height="30" background="back/images/b_table_header.gif">
										<tr>
											<td class="tdLabel"><label for="uploadImage"
												class="label">上传文件:</label></td>
											<td><input type="file" name="uploadImage" value=""
												id="uploadImage" /></td>
										</tr>

										</td>
										</tr>

										<tr>
											<td height="30" colspan="2"
												background="back/images/b_table_header.gif"><input
												value="上传" type="submit" /></td>
										</tr>
									</table>
								</table>
							</form></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
