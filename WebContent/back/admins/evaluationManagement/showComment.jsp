<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">
    <title>showComment.jsp</title>
    <style type="text/css">
		<!--
		body {
			background-color: #e6e6e6;
		}
		body,td,th {
			font-size: 12px;
		}
		-->
	</style>
		<script language="javascript">
	function SetChecked(boxname) {
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].name==boxname) {
		f.elements[i].checked=true;
		}
	}
}
function SetResverseChecked(boxname) {
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].name==boxname) {
			if(f.elements[i].checked==true){
				f.elements[i].checked=false;
			}else{
				f.elements[i].checked=true;
			}
		}
	}
}
function SetUnChecked(boxname) {
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].name==boxname) {
		f.elements[i].checked=false;
		}
	}
}

function checkForm(num){
    var ss=document.getElementById("form2");
    if(num=="b"){
        ss.action="back/comment.action";
        ss.submit();
    }else if(num=="a"){
        f=document.form1;
		for( i=0 ; i<f.elements.length ; i++) {
			if (f.elements[i].name=="chk_aid") {
				if(f.elements[i].checked==true){
					if(confirm("确定批量删除这些数据吗？")){
						return true;
					}else{
						return false;
					}
				}
			}
		}
		alert("至少选中一条数据……");
		return false;
    }else{
        ss.action="comment.do?pageNum="+num;
        ss.submit();
    }
	
}
	</script>
	</head>
  
  <body>
  	
    <form id="form2" method="post" name="form1" action="comment.do" onsubmit="return checkForm('a');">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="8" rowspan="3" background="back/images/shadow.gif">
    </td>
    <td width="943" height="30" valign="middle" background="back/images/table_bg001.gif"> &nbsp;&nbsp; <img src="back/images/b_sing.gif" width="12" height="12" align="middle" />&nbsp;<font color="#999999">&nbsp;&nbsp; 提示信息及功能说明，总共： 3 条数据</font></td>
  </tr>
   <!----------------------表格标题部分------------------------------>
  <tr>
    <td height="580" valign="top" background="back/images/table_bg001.gif" style="padding:5px;">
    <table width="100%" border="0" cellspacing="1" cellpadding="0" align="center">
      <tr>
        <td colspan="5" align="right">
           <input id="fuzzy" name="fuzzy" size="25" value="" />
           <input type="button" onclick="checkForm('b')" value="查询" />           
        </td>
      </tr>
      <tr>
        <td colspan="5"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6%"><img src="back/images/b_table_header_left.gif" width="58" height="31" /></td>
            <td width="92%" background="back/images/b_table_title_bg.gif">
            	<div style="text-align:center; font:12px; color:#FFF; font-weight:bold;">
                	全部商品评论列表
                </div>
            </td>
            <td width="2%"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table></td>
        </tr>
      <!----------------------表格字段部分------------------------------>
      
      <tr>
        <td width="5%" background="back/images/b_table_header.gif" height="34px">&nbsp;</td>
        <td width="10%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>用户名称</strong></td>
        <td width="20%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>鞋子名称</strong></td>
        <td width="60%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>评论内容</strong></td>
        <td width="5%" background="back/images/bg_handler.gif" height="34px" align="center" valign="middle"><strong>处理</strong></td>
      </tr>
      <!----------------------动态数据显示部分------------------------------>
      <c:forEach items="${page.data }" var="suc">
      		<tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
        <td align="center" valign="middle"><label>
          <input type="checkbox" name="chk_aid" id="chk_aid" value="${suc.cid }"/>
        </label></td>
        <td height="35" align="center" valign="middle">${suc.uaccount }</td>
        <td align="center" valign="middle">${suc.sname }</td>
        <td align="center" valign="middle">${suc.sccomments }</td>
        <td align="center" valign="middle">
        		<a href="javascript:if(confirm('确定删除该评论信息吗?')==true){location='DeleteComments.do?cid=${suc.cid }';}">删除</a>
        </td>
      </tr>
      </c:forEach>
      
      <!--------------------------分页显示部分---------------------------------->
      <tr height="35px">
        <td height="40" colspan="3" align="left" valign="middle">
        	当前第：  ${page.curPage }/${page.totalPage }  页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        </td>
        <td colspan="10" align="right" valign="middle">请选择：第
        <c:forEach begin="1" end="${page.totalPage }" step="1" var="i">
        	<c:if test="${i==page.curPage }">
        		【${i }】&nbsp;
        	</c:if>
        	<c:if test="${i!=page.curPage }">
        		<a href="javascript:checkForm('${i }');">${i }&nbsp;</a>
        	</c:if>
        </c:forEach>
       
       页</td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
  </body>
</html>
