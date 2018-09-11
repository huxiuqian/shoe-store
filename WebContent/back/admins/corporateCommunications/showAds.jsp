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
    <title>ShowFlinks.jsp</title>
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

function checkForm(){
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].name=="chk_adid") {
			if(f.elements[i].checked==true){
				if(confirm("确定批量删除这些数据吗？")){
					return true;
				}else{
					return false;
				}
			}
		}
	}
	alert("至少选中一个部门……");
	return false;
}</script>
  </head>
  
  <body>
    <form method="post" name="form1" action="back/ads!BatchDeleteAds.action" onSubmit="return checkForm();">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="8" rowspan="3" background="back/images/shadow.gif">
    </td>
    <td width="943" height="30" valign="middle" background="back/images/table_bg001.gif"> &nbsp;&nbsp; <img src="back/images/b_sing.gif" width="12" height="12" align="middle" />&nbsp;</td>
  </tr>
   <!----------------------表格标题部分------------------------------>
   <tr>
    <td height="580" valign="top" background="back/images/table_bg001.gif" style="padding:5px;">
    <table width="100%" border="0" cellspacing="1" cellpadding="0" align="center">
      <tr>
        <td colspan="8"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6%"><img src="back/images/b_table_header_left.gif" width="58" height="31" /></td>
            <td width="92%" background="back/images/b_table_title_bg.gif">
            	<div style="text-align:center; font:12px; color:#FFF; font-weight:bold;">
                	全部广告列表                </div>            </td>
            <td width="2%"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table></td>
        </tr>
      <!----------------------表格字段部分------------------------------>
      
     
      <tr>
        <td width="2%" background="back/images/b_table_header.gif" height="34px">&nbsp;</td>
        <td width="10%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>广告编号</strong></td>
        <td width="12%" background="back/images/b_table_header.gif" align="center" valign="middle"><strong>广告公司</strong></td>
        <td width="10%" background="back/images/b_table_header.gif" align="center" valign="middle"><strong>广告收入</strong></td>
        <td width="13%" background="back/images/b_table_header.gif" align="center" valign="middle"><strong>广告结束时间</strong></td>
        <td width="19%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>广告外接url</strong></td>
        
        <td width="16%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>链接图片名称</strong></td>
        <td width="18%" background="back/images/bg_handler.gif" height="34px" align="center" valign="middle"><strong>处理</strong></td>
      </tr>
      <!----------------------动态数据显示部分------------------------------>
      <tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
        <td align="center" valign="middle"><label>
          <input type="checkbox" name="chk_adid" id="chk_adid" value="1"/>
        </label></td>
        <td height="35" align="center" valign="middle">1</td>
        <td align="center" valign="middle">锐步</td>
        <td align="center" valign="middle">0.0</td>
        <td align="center" valign="middle">
        2015-01-30
        </td>
        <td align="center" valign="middle">www.reebok.com</td>
        <td align="center" valign="middle">
        <img width="50px;" height="40px;" src="back/upload/img/111929667658599.jpg" />
        </td>
        <td align="center" valign="middle">&nbsp;&nbsp; 
        		<a href="javascript:if(confirm('确定删除吗？')){location='back/ads!DeleteAds.action?adid=1';}">删除</a></td>
      </tr>
      
      <tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
        <td align="center" valign="middle"><label>
          <input type="checkbox" name="chk_adid" id="chk_adid" value="2"/>
        </label></td>
        <td height="35" align="center" valign="middle">2</td>
        <td align="center" valign="middle">阿迪达斯</td>
        <td align="center" valign="middle">0.0</td>
        <td align="center" valign="middle">
        2015-12-29
        </td>
        <td align="center" valign="middle">www.adidas.com</td>
        <td align="center" valign="middle">
        <img width="50px;" height="40px;" src="back/upload/img/112380345017593.jpg" />
        </td>
        <td align="center" valign="middle">&nbsp;&nbsp; 
        		<a href="javascript:if(confirm('确定删除吗？')){location='back/ads!DeleteAds.action?adid=2';}">删除</a></td>
      </tr>
      
      <tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
        <td align="center" valign="middle"><label>
          <input type="checkbox" name="chk_adid" id="chk_adid" value="3"/>
        </label></td>
        <td height="35" align="center" valign="middle">3</td>
        <td align="center" valign="middle">李宁</td>
        <td align="center" valign="middle">0.0</td>
        <td align="center" valign="middle">
        2015-12-28
        </td>
        <td align="center" valign="middle">www.e-lining.com</td>
        <td align="center" valign="middle">
        <img width="50px;" height="40px;" src="back/upload/img/112582120492688.jpg" />
        </td>
        <td align="center" valign="middle">&nbsp;&nbsp; 
        		<a href="javascript:if(confirm('确定删除吗？')){location='back/ads!DeleteAds.action?adid=3';}">删除</a></td>
      </tr>
      
      <tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
        <td align="center" valign="middle"><label>
          <input type="checkbox" name="chk_adid" id="chk_adid" value="4"/>
        </label></td>
        <td height="35" align="center" valign="middle">4</td>
        <td align="center" valign="middle">Under Armour</td>
        <td align="center" valign="middle">0.0</td>
        <td align="center" valign="middle">
        2015-12-31
        </td>
        <td align="center" valign="middle">www.underarmour.com</td>
        <td align="center" valign="middle">
        <img width="50px;" height="40px;" src="back/upload/img/112714933177820.jpg" />
        </td>
        <td align="center" valign="middle">&nbsp;&nbsp; 
        		<a href="javascript:if(confirm('确定删除吗？')){location='back/ads!DeleteAds.action?adid=4';}">删除</a></td>
      </tr>
      
      <!--------------------------分页显示部分---------------------------------->
      <tr height="35px">
        <td height="40" colspan="6" align="left" valign="middle">
        	当前第：  /  页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        	<a href="javascript:SetChecked('chk_adid');">全选</a>&nbsp; 
        	<a href="javascript:SetResverseChecked('chk_adid');">反选</a>&nbsp; 
        	<a href="javascript:SetUnChecked('chk_adid');">清空</a>&nbsp;&nbsp;
        	<input type="submit" name="btnBatchDel" id="btnBatchDel" value="批量删除">        </td>
        <td colspan="2" align="right" valign="middle">请选择：第
       
       页</td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
  </body>
</html>
