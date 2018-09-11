<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/global.css" type="text/css" rel="stylesheet" /> 
<link type="text/css" rel="stylesheet" href="css/login.css" /> 
<title>login</title> 
<SCRIPT language=javascript src="js/jquery.js" type=text/javascript></SCRIPT>

<!--含有右侧浮动广告 在js里面-->
<SCRIPT language=javascript src="js/floatright_close_v7.js" type=text/javascript></SCRIPT>
<!------登陆的javascript---->
<script type="text/javascript">
function checkForm(){  
	//验证用户名长度 
	if(form_login.uaccount.value.length<4 || form_login.uaccount.value.length>20){ 
		alert("用户名的长度应该为4-20位"); 
		form_login.uaccount.select(); 
		return false;  
	}
	
	//验证密码不为空
	if(form_login.upwd.value==""){ 
		alert("请输入密码"); 
		return false; 
	}
	//密码为6~20位
	if(form_login.upwd.value.length<6 || form_login.upwd.value.length>20){ 
		alert("密码的长度应该为6-20位"); 
		form_login.upwd.select(); 
		return false;  
	}
	//密码只有数字英文和下划线  
    var usern = /^[a-zA-Z0-9_]{1,}$/; 
    if (!form_login.upwd.value.match(usern)) {  
		alert("密码只允许字母、数字和下划线");  
		form_login.upwd.val ="";  
		form_login.upwd.focus();  
		return false;  
    }    

	if(document.getElementById("inputCheckCode").value == null ||document.getElementById("inputCheckCode").length == 0){
	   alert("验证码不能为空！");
	   return false;
	}
  }
</script>
</head>

<body onload="changeCode()">
 
     <!--首部-->
    <div align="center" >
        <div id="header" > 
            <iframe id="main_header" src="header.jsp" width="100%" height="200px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div> 
     
   		<!-----中部----->
        <div align="center" >
        	<div style=" width:1000px; background-color:#fdf7ea"> 
                  <div align="center" style="height:500px;">
                	<form id="form_login" name="form_login" method="post" action="login.do"  onSubmit="return checkForm()" > 
                        <table  id="login_table"  > 
                          <tr align="left">
                            <td  colspan="3" > 
                               <h1><img src="images/login/login_title.png" alt="新用户注册...Register" />           </h1> 
                            </td> 
                          </tr> 
                          
                           <!----- 我是分隔符--------->
                          <tr> <td  colspan="3" > <hr /> </td>   </tr>
                        
                           <tr>
                             <td  colspan="3"  >
                                <span >本页所有项目为必填项，请认真填写:</span>
                             </td>
                           </tr>
                           <tr>
                             <td class="grayColor"><span >用 户&nbsp; 名:</span></td>
                             <td width="204" ><input type="text" name="uaccount" id="uaccount" class="linput"   maxlength="20"/></td>
                             <td><span class="BrownColor">* 您的注册用户名</span></td>
                           </tr>
                           <tr>
                             <td class="grayColor"><span >用户密码:</span></td>
                             <td><input type="password" name="upwd" id="upwd" class=linput   maxlength="20"/></td>
                             <td><span class="BrownColor">* 您的密码6-20个字符</span></td>
                           </tr> 
                         <tr> 
		                       	<td></td>
		                       	<td colspan="2">
		                       		<span class="BrownColor" id="userNameChk">
		                            	${err }
		                            </span>
		                       	</td>
                      	 	</tr>
                           <!----- 我是分隔符--------->
                          <tr> <td  colspan="3"> <hr align="center"/> </td>   </tr>
                          
                           <tr>
                             <td colspan="3" align="center">   
                                <div>       <!-- onclick="getServerTime()" -->
                             
                                    <input type="submit" name="submit"  id="submit" value="  登陆  " /> 
                                </div>
                             </td>
                           </tr>
                         </table>
                	</form>
                	<div id="goto_register" >
                        <span class="span"> 没有账号？ >> </span>
                        <a href="register.jsp" target="_parent"  > 立即注册</a>&nbsp;&nbsp;
                        <a href="forgetpwd.jsp" target="_parent"  > 忘记密码</a>
        	  		</div>
                  </div>  
    
        	</div> 
        </div>   
    <!--底部 --> 
    <div align="center" >
        <div id="footer" > 
            <iframe id="main_footer" src="footer.jsp" width="100%" height="580px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div> 
    <!--底部 结束-->
</body>
</html>
