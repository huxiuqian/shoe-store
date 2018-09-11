<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>鞋城网站后台</title>
<script src="back/scripts/SpryTabbedPanels.js" type="text/javascript"></script>
<link href="back/css/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="back/css/index_back.css"/>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="height:45px; background:url(back/images/b_top.gif);">  
    <div style="width:326px; height:49px; position:absolute; margin-top:-18px; margin-left:10px;">
   			<img width="326px;" height="49px;" src="back/login_files/website_logo.gif"/>
    </div>	
    </td>
  </tr>
  <tr>
    <td>    
    <div style="width:100%; height:17px; position:absolute; padding-top:12px; font-size:12px;">
   		<span style="margin-left:10px">
   		超级管理员:  		  
        root欢迎登录，&nbsp;|&nbsp;<a href="admin!Logout.action"><font style="color: #F00;font-weight: bold;">安全退出</font></a>
        </span>
    </div>
    <!-- 后台主界面卡片选项 -->
	<div id="TabbedPanels1" class="TabbedPanels">
  		<ul class="TabbedPanelsTabGroup">
  		
               <li class="TabbedPanelsTab" tabindex="0">交易报表</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">企宣设置</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">商品管理</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">物流合作</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">用户管理</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">积分管理</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">站内信息</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">管理员账号</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">订单管理</li>
  		
               <li class="TabbedPanelsTab" tabindex="0">评价管理</li>
  		
  		</ul>
  		<div class="TabbedPanelsContentGroup">
		 	
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/transactionReport/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="transactionReport" src="back/admins/transactionReport/show.jsp" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/corporateCommunications/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="corporateCommunications" src="back/admins/corporateCommunications/showFlinks.jsp" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/productManagement/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="productManagement" src="showShoes.do" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/logisticsCooperation/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="logisticsCooperation" src="back/admins/logisticsCooperation/orderexp.jsp" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/userManagement/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="userManagement" src="selectUser.do" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/pointsManagement/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="pointsManagement" src="back/admins/pointsManagement/showAllSeckill.jsp" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/siteInformation/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="siteInformation" src="back/admins/siteInformation/mailto.jsp" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/adminAccount/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="adminAccount" src="AdminSelectPage.do" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/orderManagement/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="orderManagement" src="findOrderPage.do" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
		   <div class="TabbedPanelsContent">
           	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
            	  <tr>
            	    <td width="15%" valign="top"><iframe src="back/admins/evaluationManagement/menu.jsp" frameborder="0" width="210px" height="700px"></iframe></td>
            	    <td width="85%" valign="top">
            	       <!-- userManagement -->
            	       <iframe name="evaluationManagement" src="findQuestion.do" frameborder="0" width="99%" height="700px"></iframe>
                    </td>
          	    </tr>
          	  </table>
            </div>
	  
  		</div>
	</div>
	
	<script type="text/javascript">
	  var TabbedPanels1=new Spry.Widget.TabbedPanels("TabbedPanels1");
	</script>
    </td>
  </tr>
 <tr>
   <td style="background-image: url('back/images/b_bottom.gif');height: 40px;color: #FFF;font-size: 12px;font-weight: bold;text-align: right;">
     技术支持：快乐网&nbsp;|&nbsp;地址：济宁市&nbsp;|&nbsp;24小时服务热线：0537-88888888&nbsp;|&nbsp;电子邮件：xxxx@xxx.com&nbsp;|&nbsp;       
   </td>
 </tr>
</table>
</body>
</html>
