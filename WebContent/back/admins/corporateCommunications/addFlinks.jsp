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
		function blank(){ 
  			document.form1.aacount.value = "";
			document.form1.apwd.value = "";
		}
		function checkForm(){
			if(form1.flname.value.length==0){
				alert("请输入链接名称！");
				form1.flname.select();
				return false;
			}
			if(form1.flurl.value.length==0){
				alert("请输入链接！");
				form1.flurl.select();
				return false;
			}
			
		}
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
                	添加一个新的友情链接
                </div>
            </td>
            <td width="2%"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
      	<td colspan="5" style="text-align:center; vertical-align:top">

        	<form id="form1" name="form1" action="back/admins/corporateCommunications/back/friend!SaveFriendLinks.action" method="post" enctype="multipart/form-data" onSubmit="return checkForm();">
<table class="wwFormTable">
        		<tr>
    <td class="tdLabel"><label for="flname" class="label">链接名称：:</label></td>
    <td
><input type="text" name="flname" value="" id="flname"/></td>
</tr>
<br/>
        		<tr>
    <td class="tdLabel"><label for="flurl" class="label">链接URL：:</label></td>
    <td
><input type="text" name="flurl" value="" id="flurl"/></td>
</tr>
<br/>
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
