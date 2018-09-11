<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 


<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title></title>
<link href="css/header.css" type="text/css" rel="stylesheet" />
<link href="css/global.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/script.js" ></script>
<script type="text/javascript" src="js/header_mouseover_tips.js"></script>
<style type="text/css">
</style> 
</head>
<body style="margin:0; padding:0; border:0 ">
 
<div id="menu_bar" align="center">
  <div  style="width:1000px;">
    <div  id="top_bar">
      <ul> 
  
  
       
	     <li class="firstitem">欢迎${user.uaccount }来到网上鞋城</li>
	        <li><a href="login.jsp" target="_parent">立即登录</a></li>
	        <li><a href="register.jsp" target="_parent">免费注册</a></li>
	     
     
        <li>
          <ul class="topnav">
            <li><a href="personal_center.jsp" target="_parent">个人中心</a>
              <ul class="subnav">
                <li><a href="cart.jsp" target="_parent">&nbsp;我的购物车</a></li>
                <li><a href="personal_center.jsp" target="_parent">&nbsp;我的订单</a></li> 
              </ul>
            </li>
          </ul>
        </li>
        <li><a target="_parent" href="join_us.jsp">联盟商家</a></li>
        <li><a target="_parent" href="index.jsp">返回首页</a></li>
      </ul>
    </div>
    <div style="width:1000px; background-image:url(images/header/top_menu_bg.png); background-repeat:no-repeat; background-position:center;">
      <table width="100%"  border="0px;" >
        <tr >
          <td align="left" width=" auto;" height="auto;"><a href="index.jsp" target="_parent"> 
          <img class="tip" src="images/header/website_logo.gif" alt="logo" width="487" height="119" />
            <div id="logotip0" class="logotip">
              <p>&nbsp;&nbsp;&nbsp;&nbsp;欢迎光临<br />
                &nbsp;&nbsp;&nbsp;&nbsp;感谢您的支持</p>
            </div>
            </a></td>
          <td style=" width:470px; height:120px; text-align:left">
                  <table>
                    <tr>
                      <td >
                        <img  class="tip" src="images/header/top_menu_adv1.gif" width="128" height="36" alt="正品保障" /> 
                        <img class="tip" src="images/header/top_menu_adv2.gif" width="143" height="36" alt="免费配送" /> 
                        <img class="tip" src="images/header/top_menu_adv3.gif" width="123" height="36" alt="闪电发货" />
                        <div id="sunflowamedia1" class="tooltip">
                          <p> 郑重承诺:所售商品都是正品行货，可以享受生产厂家的全国联保服务。</p>
                        </div>
                        <div id="sunflowamedia2" class="tooltip">
                          <p>服务范围：在本鞋城可达的范围内，我们将为您免费配送！</p>
                        </div>
                        <div id="sunflowamedia3" class="tooltip">
                          <p>服务承诺：在您下达订单后十分钟内，若有库存，我们将安排发货，每日10:00与17:00开始配送。 </p>
                        </div></td>
                    </tr>
                    <tr height="60px" >
                      <td  id="search_container"   ><div id="searchBar"> 
          				<form id="form1" name="form1" method="post" action="shoes!FuzzySearch.action" target="_parent">
                            <input name="nameKeyWord" type="text" id="nameKeyWord" class="search_condition" maxlength="38" 
                                          />
                            <select name="sgender" id="search_type">
                              <option value="男" selected="selected">男款</option>
                              <option value="女">女款</option>
                            </select>
                            <input name="button" type="submit" id="btn" value=""   /> 
                          </form> 
                          </div>
                        </td>
                    </tr>
                  </table> 
            </td>
        </tr>
      </table>
    </div>
  </div>
  <div align="center"  width="100%" style=" height:49px;background-image:url(images/header/top_menu_btmBar.gif); background-position:center; background-repeat:no-repeat;"> </div>
</div>
</body>
</html>
