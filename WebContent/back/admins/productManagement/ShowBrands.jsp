<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<base href="<%=basePath%>">
    <title>ShowAdmins.jsp</title>
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
function checkForm1(num){
    var ss=document.getElementById("form2");
    var ssf=document.getElementById("fuzzy");
    //模糊查询
    if(num=="b"){
        ss.action="back/brand.action"; 
        ss.submit(); 
    }
    //批量更新
    else if(num=="a"){
        f=document.form1;
		for( i=0 ; i<f.elements.length ; i++) {
			if (f.elements[i].name=="chk_aid") {
				if(f.elements[i].checked==true){
					if(confirm("确定批量禁\反用这些品牌吗?")){
						return true;
					}else{
						return false;
					}
				}
			}
		}
		alert("至少选中一条数据……");
		return false;
    }
	//分页操作
	else{
	    ss.action="brand.do?pageNum="+num;	    
	    ss.submit();
	}
}
	</script>
  </head>
  
  <body>
  	
    <form id="form2" method="post" name="form1" action="back/brand!BatchDeleteBrands.action" onSubmit="return checkForm1('a');">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="8" rowspan="3" background="back/images/shadow.gif">
    </td>
    <td width="943" height="30" valign="middle" background="back/images/table_bg001.gif"> &nbsp;&nbsp; <img src="back/images/b_sing.gif" width="12" height="12" align="middle" />&nbsp;<font color="#999999">&nbsp;&nbsp; 提示信息及功能说明，总共：  条数据</font></td>
  </tr>
   <!----------------------表格标题部分------------------------------>
  <tr>
    <td height="580" valign="top" background="back/images/table_bg001.gif" style="padding:5px;">
    <table width="100%" border="0" cellspacing="1" cellpadding="0" align="center">
      <tr>
        <td colspan="6" align="right">
          <input id="fuzzy" name="fuzzy" size="25" value="" />
          <input type="button" onclick="checkForm1('b')" value="查询" />
        </td>
      </tr>    
      <tr>
        <td colspan="6"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6%" background="back/images/b_table_header_left.gif"><img src="back/images/b_table_header_left.gif" width="58" height="31" /></td>
            <td width="92%" background="back/images/b_table_title_bg.gif">
            	<div style="text-align:center; font:12px; color:#FFF; font-weight:bold;">
                	鞋的全部品牌列表
                </div>
            </td>
            <td width="2%"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table></td>
        </tr>
      <!----------------------表格字段部分------------------------------>
      
      <tr>
        <td width="5%" background="back/images/b_table_header.gif" height="34px">&nbsp;</td>
        <td width="20%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>品牌编号</strong></td>
        <td width="40%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>品牌名称</strong></td>
        <td width="20%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>品牌性别</strong></td>
        <td width="15%" background="back/images/bg_handler.gif" height="34px" align="center" valign="middle"><strong>处理</strong></td>
      </tr>
      <!----------------------动态数据显示部分------------------------------>
      <c:forEach items="${page.data }" var="brand">
	      <tr height="30px" bgcolor="#F7F7F7" 
	      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
	            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
	        <td align="center" valign="middle"><label>
	          <input type="checkbox" name="chk_aid" id="chk_aid" value="${brand.bid }"/>
	        </label></td>
	        <td align="center" valign="middle">${brand.bid }</td>
	        <td align="center" valign="middle">${brand.bname }</td>
	          <td align="center" valign="middle">${brand.bsex }</td>
	        <td align="center" valign="middle"><a href="UpdateBrands.do?bid=${brand.bid }">更改</a>&nbsp;&nbsp;
	          <a href="javascript:if(confirm('确定禁用此品牌吗?')){location='DeleteBrands.action?bid=${brand.bid }';}">禁用</a> 
	          
	        </td>
	      </tr>
      </c:forEach>
      
      <!--------------------------分页显示部分---------------------------------->
      <tr height="35px">
		<td height="40" colspan="8" align="left" valign="middle">
			当前第：${page.curPage }/${page.totalPage } 页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="javascript:SetChecked('chk_aid');">全选</a>&nbsp; <a
			href="javascript:SetResverseChecked('chk_aid');">反选</a>&nbsp; <a
			href="javascript:SetUnChecked('chk_aid');">清空</a>&nbsp;&nbsp; <input
			type="submit" name="btnBatchDel" id="btnBatchDel" value="批量反/禁用">&nbsp;&nbsp;
			<a href="javascript:checkForm('c');">excel导出</a>&nbsp; <a
			href="back/admins/productManagement/ImportShoes.jsp">excel导入</a>
		</td>
		<td colspan="2" align="right" valign="middle">请选择：第 
		<c:forEach begin="1" end="${page.totalPage }" step="1" var="i">
        	<c:if test="${i==page.curPage }">
        		【${i }】&nbsp;
        	</c:if>
        	<c:if test="${i!=page.curPage }">
        		<a href="javascript:checkForm('${i }');">${i }&nbsp;</a>
        	</c:if>
        </c:forEach>
		 页
		</td>
	</tr>
    </table></td>
  </tr>
</table>
</form>
  </body>
</html>
