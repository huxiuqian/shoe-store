<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/global.css" type="text/css" rel="stylesheet" /> 
<link type="text/css" rel="stylesheet" href="css/login.css" /> 
<title>login</title> 

<!--含有右侧浮动广告 在js里面-->
<SCRIPT language=javascript src="js/floatright_close_v7.js" type=text/javascript></SCRIPT>
<!------登陆的javascript---->
<SCRIPT language=javascript src="js/login.js" type=text/javascript></SCRIPT>      
</head>

<body >
 
     <!--首部-->
    <div align="center" >
        <div id="header" > 
            <iframe id="main_header" src="./header.jsp" width="100%" height="200px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div> 
     
   		<!-----中部----->
        <div align="center" >
        	<div style=" width:1000px; background-color:#fdf7ea"> 
                  <div align="center" style="height:500px;">
                	<form id="form_login" name="form_login" method="post" action="/shoe/users!ForgetPassword.action"  onSubmit="return checkForm()" > 
                        <table  id="login_table"  > 
                          <tr align="left">
                            <td  colspan="3" > 
                               <h1>忘记密码?<br>           </h1> 
                            </td> 
                          </tr> 
                          
                           <!----- 我是分隔符--------->
                          <tr> <td  colspan="3" > <hr /> </td>   </tr>
                        
                           <tr>
                             <td  colspan="3"  >
                                <span >密码会发送到您提交的邮箱内，请查收</span>
                             </td>
                           </tr>
                           <tr>
                             <td class="grayColor"><span >用 户&nbsp; 名:</span></td>
                             <td width="204" ><input type="text" name="usn" id="uaccount" class="linput"   maxlength="20"/></td>
                             <td><span class="BrownColor">* 您的注册用户名</span></td>
                           </tr>
                           <tr>
                             <td class="grayColor"><span >邮箱地址:</span></td>
                             <td><input type="text" name="email" id="upw" class=linput   maxlength="20"/></td>
                             <td><span class="BrownColor">*</span></td>
                           </tr> 
                           
                           
    	
                           <!----- 我是分隔符--------->
                          <tr> <td  colspan="3"> <hr align="center"/> </td>   </tr>
                          
                           <tr>
                             <td colspan="3" align="center">   
                                <div>       <!-- onclick="getServerTime()" -->
                             
                                    <input type="submit" name="submit"  id="submit" value="  提交  " /> 
                                </div>
                             </td>
                           </tr>
                         </table>
                	</form>
                	
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
