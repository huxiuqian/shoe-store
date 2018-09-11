<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" /> 
<title>您的私人鞋柜</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />

<!--含有右侧浮动广告 在js里面-->
<SCRIPT language=javascript src="js/floatright_close_v7.js" type=text/javascript></SCRIPT>
</head>

<body>



<!--首部-->
<div align="center" >
  <div id="header" >
    <iframe id="main_header" src="header.jsp" width="100%" height="200px" frameborder="0" scrolling="no"  vspace="0"> </iframe>
  </div>
</div>
<!---首部结束-->
<div id="main"> 
  <!--左侧种类列表-->
  <div style="height:2px; width:100%"></div>
  <table width="100%" border="1">
    <tr>
      <td width="170" style="vertical-align:top; text-align:center">
        <div align="center">
          <iframe id="left_menu" src="left_menu.jsp" width="170px" height="350px" frameborder="0" scrolling="no" vspace="0"> </iframe>
        </div>
     </td>
      
      <!--右侧主要的展示幻灯片-->
      <td align="center"><div id="main_clip_container"  class="clip_container">
          <div id="main_clip_div" class="clip_div">
            <iframe id="main_slid1" src="index_slid1.jsp" width="780px" height="310px" frameborder="0" scrolling="no" vspace="0"> </iframe>
          </div>
        </div>
        
        <!--品牌活动-->
        
        <div id="brand_act_title" class="brand_act_title"> </div>
        <div id="brand_act_container" class="brand_act_container">
          <div id="brand_act_div" class="brand_act_div"> 
          	<a href="kills.action" target="_parent">
          	<img src="images/index/test_index_clip2.gif" width="780" height="250" /> 
          	</a>
          </div>
        </div></td>
    </tr>
  </table>
  
  
  <!--中部展示--> 
  <div align="left" > 　
    <iframe id="index_list_product" name ="index_list_product " src="index_list_product.jsp" width="1000px" height="900px;" frameborder="0" scrolling="no" vspace="0"> </iframe>
  </div>
  
</div>
  </div>
</div>
 



<!--底部 -->
<div align="center" width="100%" >
  <div id="footer" >
    <iframe id="main_footer" src="footer.jsp" width="100%" height="580px" frameborder="0" scrolling="no"  vspace="0"> </iframe>
  </div>
</div>
<!--底部 结束-->

</body>
</html> 