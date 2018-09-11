<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>modify pwd</title>
<link rel="stylesheet" type="text/css" href="css/personal_center_modify_pwd.css"/>
<script language="javascript" src="js/personal_center_user_info_modify_pwd.js"></script>
<script>
window.onload = function(){
	var oldask = document.getElementById("oldask").value;
	var upwdask = document.getElementById("upwdask");
	for(var i=0; i<upwdask.options.length;i++){
		if(oldask==upwdask.options[i].value){
			upwdask.options[i].selected = "selected";
			return;
		}
	}
	
	
};
</script>
<script type="text/javascript">
function submitperson(choose){
  var form2=document.getElementById("form2");
  var form3=document.getElementById("form3");
  var form4=document.getElementById("form4");
  if(choose=="1"){
     if(confirm("确认更新用户信息?")){
         form2.submit();
     }
  }else if(choose=="2"){
     if(confirm("确认更新用户信息?")){
         form3.submit();
     }
  }else{
     if(confirm("确认更新用户密码?")){
         form4.submit();
     }
  }
}
</script>
</head>

<body style = "background:#fefbf1;">
 

<!-- cookie登陆，获取cookie用户信息 -->
   
       
   
<hr />
<form id="form4" name="form1" method="post" action="users!updatePassword.action" onsubmit="return checkForm()">
  <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="40" colspan="4" align="center" class="grayColor">用户个人密码修改</td>
    </tr>
    <tr>
      <td width="121" height="40" align="right" class="grayColor"><span class="grayColor">旧密码</span>：</td>
      <td colspan="2" align="left"><label>
          <input name="oldpwd" type="password" class="linput" id="oldpwd" onblur="check_opwd()" value="" />
        </label></td>
      <td width="172"><div id="div_OldPwd" class="grayColor">请输入旧的密码</div></td>
    </tr>
    <tr>
      <td height="40" align="right" class="grayColor">新密码：</td>
      <td colspan="2" align="left"><label>
          <input name="newupwd" type="password" class="linput" id="newupwd" onblur="check_npwd()"/>
        </label></td>
      <td><div id="div_OldPwd8" class="grayColor">请输入新的密码</div></td>
    </tr>
    <tr>
      <td height="40" align="right" class="grayColor">确认新密码：</td>
      <td colspan="2" align="left"><label>
          <input name="upwd" type="password" class="linput" id="rupwd"/>
        </label></td>
      <td><div id="div_OldPwd9" class="grayColor">请重新输入新密码</div></td>
    </tr>
    <tr>
      <td height="40">&nbsp;</td>
      <td width="147" height="30" align="center"><label>
          <input name="btnConfirm" type="button" onclick="submitperson(3)" class="grayColor" id="btnConfirm" value="提交" />
        </label></td>
      <td width="60" align="center"><input name="btnCancel" type="submit" class="grayColor" id="btnCancel" value="取消" /></td>
      <td align="left">&nbsp;</td>
    </tr>
  </table>
  <table width="499" height="115" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="499" height="32" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td height="70" align="left" valign="top" class="grayColor"> 提示：密码为6-20个字符，密码只允许字母、数字和下划线，新旧密码不能相同</td>
    </tr>
  </table>
</form>
</body>
</html>
