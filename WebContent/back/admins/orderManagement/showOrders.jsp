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
    <title>showOrders.jsp</title>
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
        ss.action="back/order.action";
        ss.submit();
    }else if(num=="a"){
        f=document.form1;
		for( i=0 ; i<f.elements.length ; i++) {
			if (f.elements[i].name=="chk_oid") {
				if(f.elements[i].checked==true){
					if(confirm("确定批量删除这些数据吗？")){
						return true;
					}else{
						return false;
					}
				}
			}
		}
		alert("至少选中一个订单……");
		return false;
    }else{
        ss.action="findOrderPage.do?pageNum="+num;
        ss.submit();
    }
	
}</script>
  </head>
  
  <body>
    <form id="form2" method="post" name="form1" action="findOrderPage.do" onSubmit="return checkForm('a');">
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
        <td colspan="7" align="right">
          <input id="fuzzy" name="fuzzy" size="25" value="" />
          <input type="button" onclick="checkForm('b')" value="查询" />
        </td>
    </tr>    
      <tr>
        <td colspan="7"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6%" background="back/images/b_table_header_left.gif"><img src="back/images/b_table_header_left.gif" width="58" height="31" /></td>
            <td width="92%" background="back/images/b_table_title_bg.gif">
            	<div style="text-align:center; font:12px; color:#FFF; font-weight:bold;">
                	订单列表                </div>            </td>
            <td width="2%" background="back/images/b_table_header_left.gif"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table></td>
        </tr>
      <!----------------------表格字段部分------------------------------>     
      <tr>
        <td width="3%" background="back/images/b_table_header.gif" height="34px">&nbsp;</td>
        <td width="10%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>订单编号</strong></td>
        <td width="10%" background="back/images/b_table_header.gif" align="center" valign="middle"><strong>用户账户</strong></td>
        <td width="24%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>收货地址</strong></td>
        <td width="20%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>下单时间</strong></td>
        <td width="20%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>订单编号</strong></td>
        <td width="13%" background="back/images/bg_handler.gif" height="34px" align="center" valign="middle"><strong>处理</strong></td>
      </tr>
      <tr>
        <td colspan="7" background="back/images/b_table_header.gif" height="20px">
           <a href="back/order.action?ostate=1">查看待发货订单</a>&nbsp;&nbsp;
           <a href="back/order.action?ostate=2">查看发送中订单</a>&nbsp;&nbsp;
           <a href="back/order.action?ostate=3">交易成功的订单</a>&nbsp;&nbsp;
           <a href="back/order.action?ostate=4">申请退货中订单</a>&nbsp;&nbsp;
           <a href="back/order.action?ostate=6">已取消订单</a>&nbsp;&nbsp;
           <a href="back/order.action?ostate=5">已退货订单</a>&nbsp;&nbsp;
           <a href="back/order.action?ostate=7">查看秒杀订单</a>&nbsp;&nbsp;
           <input name="ostate" id="ostate" type="hidden" value="" />    
        </td>
       </tr>    
      <!----------------------动态数据显示部分------------------------------>
      <c:forEach items="${page.data }" var="order">
      <tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
        <td align="center" valign="middle">&nbsp;</td>
        <td height="35" align="center" valign="middle">${order.oid }</td>
        <td align="center" valign="middle">${order.uname }</td>
        <td align="center" valign="middle">${order.orecid }</td>
        <td align="center" valign="middle">
            ${order.ordertime }
        </td>
        <td align="center" valign="middle">${ordertime.onum }</td>
        <td align="center" valign="middle">
        	<c:if test="${order.ostate==1 }">发货途中</c:if>
        	<c:if test="${order.ostate==7 }">发货途中</c:if>
        	<c:if test="${order.ostate==5 }">已退货</c:if>
        	
        		<a href="javascript:{location='/back/order!FindOrdersInfo.action?oid=1';}">查看详情</a>   		
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
      
    </table></td>
  </tr>
</table>
</form>
  </body>
</html>