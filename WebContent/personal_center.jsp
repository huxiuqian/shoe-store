<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />  
<title> 您的私人鞋柜</title> 
<link rel="stylesheet" type="text/css" href="css/personal_center.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />
</head>
<!--含有右侧浮动广告 在js里面-->
<SCRIPT language=javascript src="js/floatright_close_v7.js" type=text/javascript></SCRIPT> 

<body>  
  
	
   
     <!--首部 -->
    <div align="center" >
        <div id="header" > 
            <iframe id="main_header" src="header.jsp" width="100%" height="200px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div>
    <!---首部结束-->
    
	<div id="main" >  
    
   		<!--中部-->
        <div align="center">
        	<div style=" width:1000px; background-color:#fdf7ea">
        	  <table width="100%" border="0">
        	    <tr> <td colspan="2" >&nbsp;  </td> </tr>
        	    <tr>
        	      <td width="160px" align="left" style="padding-left:10px; vertical-align:top;">
	                <!--导航条！个人中心的功能列表-->
                  	<div style="vertical-align:top;">
                    	<iframe id="personal_center_menu" src="personal_center_menu.jsp" width="150px" height="600px"  frameborder="0" scrolling="no"  vspace="0">
                        </iframe> 
                    </div> 
                    <!--导航条！个人中心的功能列表结束--> 
				  </td>
        	      <td  style="padding:0 0 0 10px; text-align:left; vertical-align:top;"><br /> 
                  	<div  style = "background:#fefbf1;" > 
                        <iframe id="main_subFrame" name="main_subFrame" src="personal_center_user_info.jsp" height="500px;"width="750px"   frameborder="0" scrolling="no"  vspace="0" style="border:3px #FFE1B0 dotted;">
                        </iframe> 
                    </div> 
                  <br /></td>
      	      </tr>  
      	    </table>
        	  
            
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
