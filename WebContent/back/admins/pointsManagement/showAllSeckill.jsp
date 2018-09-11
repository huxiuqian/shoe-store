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
    <title>查看所有积分秒杀商品</title>  
  <style type="text/css">
  body
  {
	font-size: 13px;
}
  .left {
	font-family: "幼圆"; 
	color: #603F00;
	width:80px;
	text-align:left;
	padding-left:10px;
}
  .right {
	font-family: "幼圆";
	color: #111C00;
	text-decoration: none;
	width:120px;
}

table {
	cellspacing:0px;  
	cellpadding:0px;
	border-collapse:collapse;
}
td
{border-bottom:1px dotted;}
a
{text-decoration:none;
color:#f90;}

.title
{ 
	height:20px;
	font-size:16px; 
	padding-bottom:10px;
	font-family: "幼圆";
	text-align:center;
	
}
  </style>
</head>
  
  <body>
  
 


  <div>
    <span>总共：6 条记录</span> 请选择：第
      
         [1]&nbsp;  
        
      
         
         <a href="back/kill.action?currentPage=2">2</a>&nbsp; 
      
      	页     
  </div> 
  
    <table  border="0" style="margin:10px auto; border-bottom:0px;"  >   
      <tr >
        <td align="center"  class="title">操作</td> 
        <td colspan="4"  class="title" >秒杀信息</td> 
        <td colspan="5" class="title">鞋款详细参数</td>  
      </tr>  
      
      
 
      <tr>
        <td  align="center" valign="top" width="80px; "  bgcolor="#F9FFF0">
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        	<a href="ModifySecondKills.do?skid=1" target="pointsManagement">点击<br/>修改</a> 
        </td>
        <td  align="center">?????</td>
        <td class="left" rowspan="2" >开始时间：<br/><br/><br/>结束时间：</td>
        <td class="right"  rowspan="2" >2015-03-23 00:00:00.0<br/><br/> 2015-03-30 14:23:27.0</td> 
        <td  width="10px" rowspan="5" style="border-left:1px dotted;border-right:1px dotted;"></td>   
        <td class="left">编号:</td>
        <td class="right">16921925 </td>
        <td class="left">生产商:</td>
        <td class="right"> ????</td>
      </tr>
      <tr>
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        <td  rowspan="4" align="center" width="30px;" style="border-right:1px dashed;">
        	<a href="ModifySecondKills.do?skid=1" target="pointsManagement">1</a> 
        </td>
        <td rowspan="4" style="width:200px;height:200px;"> 
			
			 
        		<img src="back/upload/img/121791015891684.jpg"  style="max-width:200px; max-height:200px;"/>
			
        </td> 
        <td class="left">性别:</td>
        <td class="right">
          </td>
        <td class="left">原价/现价</td>
        <td class="right">679.00
          /
          338821.00</td>
      </tr>
      <tr >
        <td class="left" >耗费积分：</td>
        <td class="right" >100.0<br /></td>
        <td class="left">颜色:</td>
        <td class="right"> ??</td>
        <td rowspan="2" class="left">上市时间</td>
        <td rowspan="2" class="right"> 2008-11-19 00:00:00.0</td>
      </tr>
      <tr >
        <td class="left" >秒杀数量：</td>
        <td class="right" >20</td>
        <td class="left">品 牌：</td>
        <td class="right"> 巴迪</td>
      </tr>
      <tr >
        <td class="left" >秒杀状态：</td>
        <td class="right" >
	         
	         无效   
        </td>
        <td class="left">类 型：</td>
        <td class="right">凉鞋</td>
        <td class="left">购买热度</td>
        <td class="right">5(人次)</td>
      </tr>
      
      
      <tr  style="border:0px">
        <td colspan="9"  style="border:0px; height:10px;"><hr/></td>
      </tr>
 
      <tr>
        <td  align="center" valign="top" width="80px; "  bgcolor="#F9FFF0">
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        	<a href="ModifySecondKills.do?skid=2" target="pointsManagement">点击<br/>修改</a> 
        </td>
        <td  align="center">?????</td>
        <td class="left" rowspan="2" >开始时间：<br/><br/><br/>结束时间：</td>
        <td class="right"  rowspan="2" >2015-03-23 11:18:48.0<br/><br/> 2015-03-30 11:18:48.0</td> 
        <td  width="10px" rowspan="5" style="border-left:1px dotted;border-right:1px dotted;"></td>   
        <td class="left">编号:</td>
        <td class="right">16915114 </td>
        <td class="left">生产商:</td>
        <td class="right"> ????</td>
      </tr>
      <tr>
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        <td  rowspan="4" align="center" width="30px;" style="border-right:1px dashed;">
        	<a href="ModifySecondKills.do?skid=2" target="pointsManagement">2</a> 
        </td>
        <td rowspan="4" style="width:200px;height:200px;"> 
			
			 
        		<img src="back/upload/img/122478546858329.jpg"  style="max-width:200px; max-height:200px;"/>
			
        </td> 
        <td class="left">性别:</td>
        <td class="right">
          </td>
        <td class="left">原价/现价</td>
        <td class="right">599.00
          /
          262961.00</td>
      </tr>
      <tr >
        <td class="left" >耗费积分：</td>
        <td class="right" >150.0<br /></td>
        <td class="left">颜色:</td>
        <td class="right"> ??</td>
        <td rowspan="2" class="left">上市时间</td>
        <td rowspan="2" class="right"> 2008-06-29 00:00:00.0</td>
      </tr>
      <tr >
        <td class="left" >秒杀数量：</td>
        <td class="right" >15</td>
        <td class="left">品 牌：</td>
        <td class="right"> 千百度</td>
      </tr>
      <tr >
        <td class="left" >秒杀状态：</td>
        <td class="right" >
	         
	         无效   
        </td>
        <td class="left">类 型：</td>
        <td class="right">板鞋</td>
        <td class="left">购买热度</td>
        <td class="right">4(人次)</td>
      </tr>
      
      
      <tr  style="border:0px">
        <td colspan="9"  style="border:0px; height:10px;"><hr/></td>
      </tr>
 
      <tr>
        <td  align="center" valign="top" width="80px; "  bgcolor="#F9FFF0">
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        	<a href="ModifySecondKills.do?skid=3" target="pointsManagement">点击<br/>修改</a> 
        </td>
        <td  align="center">?????</td>
        <td class="left" rowspan="2" >开始时间：<br/><br/><br/>结束时间：</td>
        <td class="right"  rowspan="2" >2015-03-23 11:19:17.0<br/><br/> 2015-03-30 11:19:17.0</td> 
        <td  width="10px" rowspan="5" style="border-left:1px dotted;border-right:1px dotted;"></td>   
        <td class="left">编号:</td>
        <td class="right">16922017 </td>
        <td class="left">生产商:</td>
        <td class="right"> ????</td>
      </tr>
      <tr>
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        <td  rowspan="4" align="center" width="30px;" style="border-right:1px dashed;">
        	<a href="ModifySecondKills.do?skid=3" target="pointsManagement">3</a> 
        </td>
        <td rowspan="4" style="width:200px;height:200px;"> 
			
			 
        		<img src="back/upload/img/122842762417849.jpg"  style="max-width:200px; max-height:200px;"/>
			
        </td> 
        <td class="left">性别:</td>
        <td class="right">
          </td>
        <td class="left">原价/现价</td>
        <td class="right">769.00
          /
          460631.00</td>
      </tr>
      <tr >
        <td class="left" >耗费积分：</td>
        <td class="right" >200.0<br /></td>
        <td class="left">颜色:</td>
        <td class="right"> ??</td>
        <td rowspan="2" class="left">上市时间</td>
        <td rowspan="2" class="right"> 2011-03-29 00:00:00.0</td>
      </tr>
      <tr >
        <td class="left" >秒杀数量：</td>
        <td class="right" >22</td>
        <td class="left">品 牌：</td>
        <td class="right"> 卡佛儿</td>
      </tr>
      <tr >
        <td class="left" >秒杀状态：</td>
        <td class="right" >
	         
	         无效   
        </td>
        <td class="left">类 型：</td>
        <td class="right">跑步鞋</td>
        <td class="left">购买热度</td>
        <td class="right">5(人次)</td>
      </tr>
      
      
      <tr  style="border:0px">
        <td colspan="9"  style="border:0px; height:10px;"><hr/></td>
      </tr>
 
      <tr>
        <td  align="center" valign="top" width="80px; "  bgcolor="#F9FFF0">
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        	<a href="ModifySecondKills.do?skid=4" target="pointsManagement">点击<br/>修改</a> 
        </td>
        <td  align="center">????</td>
        <td class="left" rowspan="2" >开始时间：<br/><br/><br/>结束时间：</td>
        <td class="right"  rowspan="2" >2017-10-18 01:19:00.0<br/><br/> 2017-10-18 01:19:00.0</td> 
        <td  width="10px" rowspan="5" style="border-left:1px dotted;border-right:1px dotted;"></td>   
        <td class="left">编号:</td>
        <td class="right">16922611 </td>
        <td class="left">生产商:</td>
        <td class="right"> ??</td>
      </tr>
      <tr>
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        <td  rowspan="4" align="center" width="30px;" style="border-right:1px dashed;">
        	<a href="ModifySecondKills.do?skid=4" target="pointsManagement">4</a> 
        </td>
        <td rowspan="4" style="width:200px;height:200px;"> 
			
			 
        		<img src="back/upload/img/122987518518135.jpg"  style="max-width:200px; max-height:200px;"/>
			
        </td> 
        <td class="left">性别:</td>
        <td class="right">
          </td>
        <td class="left">原价/现价</td>
        <td class="right">580.00
          /
          248820.00</td>
      </tr>
      <tr >
        <td class="left" >耗费积分：</td>
        <td class="right" >300.0<br /></td>
        <td class="left">颜色:</td>
        <td class="right"> ??</td>
        <td rowspan="2" class="left">上市时间</td>
        <td rowspan="2" class="right"> 2011-01-01 00:00:00.0</td>
      </tr>
      <tr >
        <td class="left" >秒杀数量：</td>
        <td class="right" >2</td>
        <td class="left">品 牌：</td>
        <td class="right"> 达芙妮</td>
      </tr>
      <tr >
        <td class="left" >秒杀状态：</td>
        <td class="right" >
	         
	         无效   
        </td>
        <td class="left">类 型：</td>
        <td class="right">足球鞋</td>
        <td class="left">购买热度</td>
        <td class="right">4(人次)</td>
      </tr>
      
      
      <tr  style="border:0px">
        <td colspan="9"  style="border:0px; height:10px;"><hr/></td>
      </tr>
 
      <tr>
        <td  align="center" valign="top" width="80px; "  bgcolor="#F9FFF0">
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        	<a href="ModifySecondKills.do?skid=5" target="pointsManagement">点击<br/>修改</a> 
        </td>
        <td  align="center">?????</td>
        <td class="left" rowspan="2" >开始时间：<br/><br/><br/>结束时间：</td>
        <td class="right"  rowspan="2" >2015-03-24 11:20:29.0<br/><br/> 2015-03-26 11:20:29.0</td> 
        <td  width="10px" rowspan="5" style="border-left:1px dotted;border-right:1px dotted;"></td>   
        <td class="left">编号:</td>
        <td class="right">16922327 </td>
        <td class="left">生产商:</td>
        <td class="right"> ????</td>
      </tr>
      <tr>
<!-- ---------------------------这里和点击修改连接到同一个地方 -------------->
        <td  rowspan="4" align="center" width="30px;" style="border-right:1px dashed;">
        	<a href="ModifySecondKills.do?skid=5" target="pointsManagement">5</a> 
        </td>
        <td rowspan="4" style="width:200px;height:200px;"> 
			
			 
        		<img src="back/upload/img/123175733469197.jpg"  style="max-width:200px; max-height:200px;"/>
			
        </td> 
        <td class="left">性别:</td>
        <td class="right">
          </td>
        <td class="left">原价/现价</td>
        <td class="right">969.00
          /
          619191.00</td>
      </tr>
      <tr >
        <td class="left" >耗费积分：</td>
        <td class="right" >150.0<br /></td>
        <td class="left">颜色:</td>
        <td class="right"> ??</td>
        <td rowspan="2" class="left">上市时间</td>
        <td rowspan="2" class="right"> 2007-04-29 00:00:00.0</td>
      </tr>
      <tr >
        <td class="left" >秒杀数量：</td>
        <td class="right" >15</td>
        <td class="left">品 牌：</td>
        <td class="right"> 安踏</td>
      </tr>
      <tr >
        <td class="left" >秒杀状态：</td>
        <td class="right" >
	         
	         无效   
        </td>
        <td class="left">类 型：</td>
        <td class="right">网球鞋</td>
        <td class="left">购买热度</td>
        <td class="right">8(人次)</td>
      </tr>
      
      
      <tr  style="border:0px">
        <td colspan="9"  style="border:0px; height:10px;"><hr/></td>
      </tr>

  </table>
  </body>
</html>
