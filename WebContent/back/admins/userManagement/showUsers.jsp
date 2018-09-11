<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
    <title>ShowUsers.jsp</title>
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
	<script language="javascript" >
//接收三种情况调用此function，1.form表单本身action,批量禁用用户,参数需要添加一个标志
//2.接收模糊查询按钮调用，得加上模糊搜索条件显示列表,参数也需要添加一个标志
//3.接收分页查找，分别根据有无模糊搜索条件进行分页查询操作,参数需要添加具体要查看第几页的整型参数
	function checkForm(num){
	//获取页面表单对象
	var form=document.getElementById("form2");
	//1.form表单本身action,批量更新
	if(num=="a"){
	        f=document.form1;
			for( i=0 ; i<f.elements.length ; i++) {
				if (f.elements[i].name=="chk_uid") {
					if(f.elements[i].checked==true){
						if(confirm("确定批量禁用这些用户吗?")){
							return true;
						}else{
							return false;
						}
					}
				}
			}
			alert("至少选中一个用户……");
			return false;
	}
    // 2.接收模糊查询按钮调用	
	else if(num=="b"){
	    //模糊查询不判断表单是否为空，如果为空，证明搜索全部用户信息，否则按模糊条件查询
	    //更改form表单本身action内容
	    form.action="";
	    //表单提交
	    form.submit(); 
	}
	//3.接收分页查找,这时num参数则为要查询页数的变量
	else{	   
	    //更改form表单本身action内容
	    form.action="selectUser.do?pageNum="+num;
	    //表单提交
	    form.submit();
	}
	
}
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
	</script>
  </head>  
  <body>
    <form id="form2" method="post" name="form2" action="BatchDeleteUser.action" onSubmit="return checkForm('a');">
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
         <td colspan="13" align="right">
           <input name="fuzzy" id="fuzzy" size="25" value="" /> <input type="button" onclick="checkForm('b')" value="查询"  />
         </td>
      </tr> 
      <tr>
        <td colspan="13">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6%" background="back/images/b_table_header_left.gif"><img src="back/images/b_table_header_left.gif" width="58" height="31" /></td>
            <td width="92%" background="back/images/b_table_title_bg.gif">
            	<div style="text-align:center; font:12px; color:#FFF; font-weight:bold;">
                	全部用户列表                </div>            </td>
            <td width="2%" background="back/images/b_table_header_right.gif"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table></td>
        </tr>
      <!----------------------表格字段部分------------------------------>
      
      <tr>
        <td width="3%" background="back/images/b_table_header.gif" height="34px">&nbsp;</td>
        <td width="9%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
        <strong>编号</strong></td>
        <td width="17%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
        <strong>用户账号</strong></td>
        <td width="10%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
        <strong>用户密码</strong></td>
        <td width="7%" height="34px" align="center" valign="middle" background="back/images/b_table_header.gif">
          <p><strong>用户</strong><strong>姓名</strong></p>          </td>
        <td width="8%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
          <p><strong>联系</strong><strong>电话</strong></p>          </td>
        <td width="7%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
          <p><strong>用户</strong><strong>性别</strong></p>          </td>
        <td width="7%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
          <p><strong>用户</strong><strong>积分</strong></p>          </td>
        <td width="12%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
          <p><strong>用户</strong><strong>邮箱</strong></p>          </td>
        <td width="10%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
          <p><strong>用户注册</strong><strong>时间</strong></p>          </td>
        <td width="10%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle">
        <strong>处理</strong></td>
      </tr>
      <!----------------------动态数据显示部分------------------------------>
      
      <c:forEach items="${page.data }" var="user">
      <tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
                    
        <td align="center" valign="middle"><label>
          <input type="checkbox" name="chk_uid" id="chk_uid" value="${user.uid }"/>
        </label></td>
        <td height="49" align="center" valign="middle">${user.uid }</td>
        <td align="center" valign="middle">${user.uaccount }</td>
        <td align="center" valign="middle">${user.upwd }</td>
        <td align="center" valign="middle">${user.uname }</td>
        <td align="center" valign="middle">${user.utel }</td>
        <td align="center" valign="middle">${user.ugender }</td>
        <td align="center" valign="middle">${user.uintegral }</td>
        <td align="center" valign="middle">${user.uemail }</td>
        <td align="center" valign="middle">
          ${user.uregtime}
        </td>
        <td colspan="3" align="center" valign="middle">
        <a href="showModify.do?uid=${user.uid }">更改</a>&nbsp;&nbsp; 
        
        <a href="javascript:if(confirm('确定禁用此用户吗?')){location='DeleteUser.do?uid=${user.uid }';}">禁用</a> 
        
        
       </td>
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
      <tr height="35px">
        <td height="40" colspan="3" align="left" valign="middle">&nbsp; <a href="javascript:SetChecked('chk_uid');">全选</a>&nbsp; <a href="javascript:SetResverseChecked('chk_uid');">反选</a>&nbsp; <a href="javascript:SetUnChecked('chk_uid');">清空</a>&nbsp;&nbsp;
          <input type="submit" name="btnBatchDel" id="btnBatchDel" value="批量禁/反用"></td>
        <td colspan="10" align="right" valign="middle">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
  </body>
</html>
