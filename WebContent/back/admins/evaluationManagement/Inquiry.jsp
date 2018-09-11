<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Inquiry.jsp</title>
<style type="text/css">
<!--
body {
	background-color: #e6e6e6;
}

body, td, th {
	font-size: 12px;
}
-->
</style>
<script type="text/javascript">
	function checkForm(num) {
		var ss = document.getElementById("form2");

		ss.action = "findQuestion.do?pageNum=" + num;
		ss.submit();

	}
</script>
</head>

<body>
	<form id="form2" method="post" name="form2" action="comment.do">

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="8" rowspan="3" background="back/images/shadow.gif">
				</td>
				<td width="943" height="30" valign="middle"
					background="back/images/table_bg001.gif">&nbsp;&nbsp; <img
					src="back/images/b_sing.gif" width="12" height="12" align="middle" />&nbsp;<font
					color="#999999">&nbsp;&nbsp; 提示信息及功能说明，总共： 6 条数据</font></td>
			</tr>
			<!----------------------表格标题部分------------------------------>
			<tr>
				<td height="580" valign="top"
					background="back/images/table_bg001.gif" style="padding: 5px;">
					<table width="100%" border="0" cellspacing="1" cellpadding="0"
						align="center">
						<tr>
							<td colspan="5" align="right">
								<form action="back/inquiry.action" method="post">
									<input id="fuzzy" name="fuzzy" size="25" value="" /> <input
										type="submit" value="查询" />
								</form>
							</td>
						</tr>
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
												全部客户咨询列表</div>
										</td>
										<td width="2%"><img
											src="back/images/b_table_header_right.gif" width="58"
											height="31" /></td>
									</tr>
								</table></td>
						</tr>
						<!----------------------表格字段部分------------------------------>

						<tr>
							<td width="5%" background="back/images/b_table_header.gif"
								height="34px">编号</td>
							<td width="10%" background="back/images/b_table_header.gif"
								height="34px" align="center" valign="middle"><strong>鞋子名称</strong></td>
							<td width="70%" background="back/images/b_table_header.gif"
								height="34px" align="center" valign="middle"><strong>问题详细</strong></td>
							<td width="10%" background="back/images/b_table_header.gif"
								height="34px" align="center" valign="middle"><strong>提问时间</strong></td>
							<td width="5%" background="back/images/bg_handler.gif"
								height="34px" align="center" valign="middle"><strong>处理</strong></td>
						</tr>
						<!----------------------动态数据显示部分------------------------------>
						<c:forEach items="${page.data }" var="sq">
							<tr height="30px" bgcolor="#F7F7F7"
								onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
								onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
								<td align="center" valign="middle">${sq.sqid }</td>
								<td height="35" align="center" valign="middle">${sq.sname }</td>
								<td align="center" valign="middle">${sq.sqquestion }</td>
								<td align="center" valign="middle">${sq.sqquestiontime }</td>
								<td align="center" valign="middle"><a
									href="AnswerResponse.do?sqid=${sq.sqid }">回复</a>&nbsp;&nbsp;</td>
							</tr>
						</c:forEach>
						<!--------------------------分页显示部分---------------------------------->
						<tr height="35px">
							<td height="40" colspan="2" align="left" valign="middle">
								当前第： ${page.curPage }/${page.totalPage } 页</td>
							<td colspan="3" align="right" valign="middle">请选择：第 <c:forEach
									begin="1" end="${page.totalPage }" step="1" var="i">
									<c:if test="${i==page.curPage }">
	        		【${i }】&nbsp;
	        	</c:if>
									<c:if test="${i!=page.curPage }">
										<a href="javascript:checkForm('${i }');">${i }&nbsp;</a>
									</c:if>
								</c:forEach> 页
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
