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
    <title>AddAdmin.jsp</title>
    <style type="text/css">
		<!--
		body {
			background-color: #e6e6e6;
			font-size: 12px;
		}
		body,td,th {
	font-size: 16px;
		}
.STYLE1 {font-size: 16px}
		-->
	</style>
	
	<script type="text/javascript">
	function checkForm(){
			if(form1.adcompany.value.length==0){
				alert("请输入公司名称！");
				form1.adcompany.select();
				return false;
			}
			if(form1.adlink.value.length==0){
				alert("请输入广告链接！");
				form1.adlink.select();
				return false;
			}
			if(form1.adincome.value.length==0){
				alert("请输入广告收入！");
				form1.adincome.select();
				return false;
			}
		}
	function fillYear() {
		var year = document.getElementById("year");
		for ( var i = 1980; i <= 2020; i++)
			year.options.add(new Option(i, i));
		fillMonth();
	}
	function fillMonth() {
		var month = document.getElementById("month");
		for ( var i = 1; i <= 12; i++)
			month.options.add(new Option(i, i));
		fillDay();
	}
	function fillDay() {
		var year = document.getElementById("year"); //获取年份下拉列表
		var month = document.getElementById("month"); //获取月份下拉列表
		var day = document.getElementById("day"); //获取日期下拉列表
		day.options.length = 0; //清空下拉框
		var indexOfYear = year.selectedIndex + 1980;
		var indexOfMonth = month.selectedIndex + 1;
		if (indexOfMonth == 1 || indexOfMonth == 3 || indexOfMonth == 5
				|| indexOfMonth == 7 || indexOfMonth == 8 || indexOfMonth == 10
				|| indexOfMonth == 12) {
			for ( var i = 1; i <= 31; i++)
				day.options.add(new Option(i, i));

		} else if (indexOfMonth == 4 || indexOfMonth == 6 || indexOfMonth == 9
				|| indexOfMonth == 11) {
			for ( var i = 1; i <= 30; i++)
				day.options.add(new Option(i, i));
		} else if ((indexOfYear % 400 == 0)
				|| ((indexOfYear % 4 == 0) && (indexOfYear % 100 != 0))) {
			for ( var i = 1; i <= 29; i++)
				day.options.add(new Option(i, i));
		} else {
			for ( var i = 1; i <= 28; i++)
				day.options.add(new Option(i, i));
		}
	}
	window.onload = function() {
		fillYear();
	};
	</script>
   </head>
  
  <body>
    
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="8" rowspan="3" background="back/images/shadow.gif">
    </td>
    <td width="943" height="30" valign="middle" background="back/images/table_bg001.gif"> &nbsp;&nbsp; <img src="back/images/b_sing.gif" width="12" height="12" align="middle" />&nbsp;<font color="#999999">&nbsp;&nbsp; 提示信息及功能说明:添加一个新的管理员</font></td>
  </tr>
   <!----------------------表格标题部分------------------------------>
  <tr>
    <td height="580" valign="top" background="back/images/table_bg001.gif" style="padding:5px;">
    <table width="100%" border="0" cellspacing="1" cellpadding="0" align="center">
      <tr>
        <td colspan="5"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6%"><img src="back/images/b_table_header_left.gif" width="58" height="31" /></td>
            <td width="92%" background="back/images/b_table_title_bg.gif">
            	<div style="text-align:center; font:12px; color:#FFF; font-weight:bold;">
                	添加一个新的广告
                </div>
            </td>
            <td width="2%"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
      	<td colspan="5" style="text-align:center; vertical-align:top">
        	<form id="form1" name="form1" action="back/admins/corporateCommunications/back/ads!SaveAds.action" method="post" enctype="multipart/form-data" onSubmit="return checkForm();">
<table class="wwFormTable">
        		<tr>
    <td class="tdLabel"><label for="adcompany" class="label">广告公司：:</label></td>
    <td
><input type="text" name="adcompany" value="" id="adcompany"/></td>
</tr>
<br/>
        		<tr>
    <td class="tdLabel"><label for="adlink" class="label">广告链接：:</label></td>
    <td
><input type="text" name="adlink" value="" id="adlink"/></td>
</tr>
<br/>
        		<tr>
    <td class="tdLabel"><label for="adincome" class="label">广告收入:</label></td>
    <td
><input type="text" name="adincome" value="" id="adincome"/></td>
</tr>
<br/>
        		<tr>
    <td class="tdLabel"><label for="adremarks" class="label">广告备注:</label></td>
    <td
><input type="text" name="adremarks" value="" id="adremarks"/></td>
</tr>
<br/>
        		 <tr>
              <td align="right" height="30" >截止时间：</td>
              <td height="30" >
              	<select name="year" id="year" onchange="fillDay()"></select>
            	<select name="month" id="month" onchange="fillDay()"></select>
            	<select name="day" id="day"></select></td>
            </tr><br/>
        		<tr>
    <td class="tdLabel"><label for="form1_uploadImage" class="label">上传图片：:</label></td>
    <td
><input type="file" name="uploadImage" value="" id="form1_uploadImage"/></td>
</tr>
<br/>
        		<tr>
    <td colspan="2"><div align="right"><input type="submit" id="form1_0" value="&#28155; &#21152;"/>
</div></td>
</tr>

        	</table></form>




        	
        <td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</body>
</html>
