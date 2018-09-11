<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-EN">
<meta http-equiv="Content-Type" content="text/html; charset=gbk" /> 
<link rel="stylesheet" type="text/css" href="css/personal_center_menu.css" />  
<head>
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/personal_center_menu.js" type="text/javascript"></script>
   
	<title>list</title>
	<!--[if lt IE 8]>
   <style type="text/css">
   li a {display:inline-block;}
   li a {display:block;}
   </style>
   <![endif]-->
</head>
<body class="menu_body" >
	<div id="personal_center_menu_top"><a href="#">个人中心</a></div>
	<ul id="menu">
		<li>
			<a href="###">个人信息</a>
			<ul>                                 <!-- /front/recAdd!findByPage.action -->
				<li><a target="main_subFrame" href="personal_center_rcvAdd.jsp" >收货地址</a></li>
				<li><a target="main_subFrame" href="personal_center_user_info.jsp">个人信息</a></li>
				<li><a target="main_subFrame" href="personal_center_modify_pwd.jsp">信息修改</a></li>
			</ul>
		</li>
		
		<li>
			<a href="###" >我的购物车 </a>
			<ul>
				 <li><a target="main_subFrame" href="cart_table.jsp" >我的购物车 </a></li>
			</ul>
		</li>
		  
		<li>
			<a href="###">我的订单</a>
			<ul>
				<li><a target="main_subFrame" href="order!ShowOrder.action?ordertype=1">下单成功</a></li>
				<li><a target="main_subFrame" href="order!ShowOrder.action?ordertype=7">秒杀的订单</a></li> 
				<li><a target="main_subFrame" href="order!ShowOrder.action?ordertype=2">发货途中</a></li> 
				<li><a target="main_subFrame" href="order!ShowOrder.action?ordertype=3">交易成功 </a></li> 
				<li><a target="main_subFrame" href="order!ShowOrder.action?ordertype=4">退货中的订单</a></li>  
		  		<li><a target="main_subFrame" href="order!ShowOrder.action?ordertype=5">已退货订单</a></li>
		  </ul>
		</li>
	</ul>
</body>
</html>