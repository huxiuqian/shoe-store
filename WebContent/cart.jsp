<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" /> 
<link rel="stylesheet" type="text/css" href="css/global.css" /> 
<link rel="stylesheet" type="text/css" href="css/cart.css" /> 
<title> 您的私人鞋柜——购物车</title>  
</head>
<!--含有右侧浮动广告 在js里面-->
<SCRIPT language=javascript src="js/floatright_close_v7.js" type=text/javascript></SCRIPT>
 
<body > 
  
     
 
     <!--首部-->
    <div align="center" >
        <div id="header" > 
            <iframe id="main_header" src="header.jsp" width="100%" height="200px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div>
    <!---首部结束-->
    
	<div id="main"> <div align="center" > 
   			  <!------从此处开始为购物车的内容，包括购物车标题 内容的表格------>
              <div  id="cart_container" align="center" style="width:1000px; background-color:#fdf7ea;">    
   			  <!------ 现在的位置------>
                  <div align="left">
                    <img src="images/now_position.png" width="328" height="36" />
                  </div> 
                 <iframe id="main_subFrame"  width="900px" height="300px"  src="cart_table.jsp"  frameborder="0" scrolling="no"  vspace="0" style="border:#dbc391 2px  dotted;"> 
                 </iframe>
                  <!----过渡花纹----->
                  <div id="guodu" style="background-image:url(images/cart/bg.gif);"  ></div> 
              </div>                
    </div> </div>
    <!--底部 --> 
    <div align="center" >
        <div id="footer" > 
            <iframe id="main_footer" src="footer.jsp" width="100%" height="580px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div>
    <!---首部结束-->
    <!--底部 结束-->
</body>
</html>