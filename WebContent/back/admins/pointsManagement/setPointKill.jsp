<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>积分抽奖</title>
<style type="text/css">
<!--
body {
	background-color: #e6e6e6;
}
body, td, th {
	font-size: 12px;
}
table {
	cellspacing="0" ;
	cellpadding="0";
	border-collapse:collapse;
	border:0px;
}
td {
	word-break:break-all;
	text-align:left;
	border:0px;
}
-->
</style>
<script>
function SetChecked(boxname) {
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].id==boxname) {
		f.elements[i].checked=true;
		}
	}
}
function SetResverseChecked(boxname) {
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].id==boxname) {
			if(f.elements[i].checked==true){
				f.elements[i].checked=false;
			}else{
				f.elements[i].checked=true;
			}
		}
	}
}
function SetUnChecked(boxname) {
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].id==boxname) {
		f.elements[i].checked=false;
		}
	}
}

function checkForm(){
	f=document.form1;
	for( i=0 ; i<f.elements.length ; i++) {
		if (f.elements[i].name=="chk") {
			if(f.elements[i].checked==true){
				if(confirm("确定批量删除这些数据吗？")){
					return true;
				}else{
					return false;
				}
			}
		}
	}
	alert("至少选中一条数据……");
	return false;
}
</script>


</head>

<body>
 


  <div>
    <span>总共：33 条记录</span> 请选择：第
      
         [1]&nbsp;  
        
      
         
         <a href="back/kill!FindShoesByPage.action?currentPage=2">[2]</a>&nbsp; 
      
         
         <a href="back/kill!FindShoesByPage.action?currentPage=3">[3]</a>&nbsp; 
      
         
         <a href="back/kill!FindShoesByPage.action?currentPage=4">[4]</a>&nbsp; 
      
         
         <a href="back/kill!FindShoesByPage.action?currentPage=5">[5]</a>&nbsp; 
      
         
         <a href="back/kill!FindShoesByPage.action?currentPage=6">[6]</a>&nbsp; 
      
         
         <a href="back/kill!FindShoesByPage.action?currentPage=7">[7]</a>&nbsp; 
      
      	页
      
  </div> 
  
<table width="100%"  >
<tr>
  <td width="8" rowspan="2" background="images/shadow.gif"></td>
  <td width="953" height="26" valign="middle" background="back/images/table_bg001.gif">&nbsp;&nbsp; <img src="back/images/b_sing.gif" width="12" height="12" align="absmiddle" />&nbsp;<font color="#999999">&nbsp;&nbsp;请选择设置为积分抽奖的商品</font></td>
</tr>
<tr>
  <td height="640" valign="top" background="back/images/table_bg001.gif"><div align="center" >
    <div  width="100%">
    <tabl border="0" cellspacing="0" cellpadding="0">
    <div align="center" >
  <div align="left">
    <input name="selectAll" type="button" value="批量设置" />
    <a href="javascript:SetChecked('chk');">全选</a> 
    <a href="javascript:SetResverseChecked('chk');">反选</a>
    <a href="javascript:SetUnChecked('chk');">全不选</a>
    <hr color="#CCCCCC" />
  </div>
  
  <form  name="form1" method="post" action="back/kill!BatchAddSecondKills.action?shoesid="  onSubmit="" >
  <table width="90%" border="1" style="margin:10px auto; border-bottom:0px;"  > 
     	
      <tr>
        <td></td>
        <td>缩略一览</td>
        <td>编号:16922297 </td>  
        <td>鞋名:</td>
        <td> ?????</td>
        <td>生产商:</td>
        <td> ????</td>
        <td>原价/现价</td>
        <td>1299.00
          /
          1128831.00</td>
      </tr>
      <tr>
        <td rowspan="2" align="center" valign="middle">
        	<input name="choseLottery"  id="chk" type="checkbox" />
          &nbsp;</td>
        <td rowspan="2">
        	
			 
        		<img src="back/upload/img/113651596339758.jpg"  style="max-width:50px; max-height:50px;"/>
        	 
        </td>
        <td><br /></td> 
        <td>性别:</td>
        <td>
        	
          	</td>
        <td>品 牌：</td>
        <td> 阿迪达斯</td>
        <td>上市时间</td>
        <td> 2010-09-01 00:00:00.0</td>
      </tr>
      <tr >
        <td > 
          <a href="back/kill!AddSecondKills.action?shoesid=101">设此为秒杀商品</a>
        </td>
        <td>颜色:</td>
        <td> ?</td>
        <td>类 型：</td>
        <td>跑步鞋</td>
        <td>购买热度</td>
        <td>12(人次)</td>
      </tr> 
      <tr> <td colspan="3"><br/> <br/> </td> </tr>
	
     	
      <tr>
        <td></td>
        <td>缩略一览</td>
        <td>编号:16932184 </td>  
        <td>鞋名:</td>
        <td> ?????</td>
        <td>生产商:</td>
        <td> ????</td>
        <td>原价/现价</td>
        <td>1299.00
          /
          1167801.00</td>
      </tr>
      <tr>
        <td rowspan="2" align="center" valign="middle">
        	<input name="choseLottery"  id="chk" type="checkbox" />
          &nbsp;</td>
        <td rowspan="2">
        	
			 
        		<img src="back/upload/img/114096388212747.jpg"  style="max-width:50px; max-height:50px;"/>
        	 
        </td>
        <td><br /></td> 
        <td>性别:</td>
        <td>
        	
          	</td>
        <td>品 牌：</td>
        <td> 阿迪达斯</td>
        <td>上市时间</td>
        <td> 2008-09-01 00:00:00.0</td>
      </tr>
      <tr >
        <td > 
          <a href="back/kill!AddSecondKills.action?shoesid=102">设此为秒杀商品</a>
        </td>
        <td>颜色:</td>
        <td> ?</td>
        <td>类 型：</td>
        <td>网球鞋</td>
        <td>购买热度</td>
        <td>7(人次)</td>
      </tr> 
      <tr> <td colspan="3"><br/> <br/> </td> </tr>
	
     	
      <tr>
        <td></td>
        <td>缩略一览</td>
        <td>编号:16922563 </td>  
        <td>鞋名:</td>
        <td> ?????</td>
        <td>生产商:</td>
        <td> ????</td>
        <td>原价/现价</td>
        <td>1299.00
          /
          1167801.00</td>
      </tr>
      <tr>
        <td rowspan="2" align="center" valign="middle">
        	<input name="choseLottery"  id="chk" type="checkbox" />
          &nbsp;</td>
        <td rowspan="2">
        	
			 
        		<img src="back/upload/img/114375924382288.jpg"  style="max-width:50px; max-height:50px;"/>
        	 
        </td>
        <td><br /></td> 
        <td>性别:</td>
        <td>
        	
          	</td>
        <td>品 牌：</td>
        <td> 百丽</td>
        <td>上市时间</td>
        <td> 2008-06-16 00:00:00.0</td>
      </tr>
      <tr >
        <td > 
          <a href="back/kill!AddSecondKills.action?shoesid=103">设此为秒杀商品</a>
        </td>
        <td>颜色:</td>
        <td> ??</td>
        <td>类 型：</td>
        <td>??</td>
        <td>购买热度</td>
        <td>12(人次)</td>
      </tr> 
      <tr> <td colspan="3"><br/> <br/> </td> </tr>
	
     	
      <tr>
        <td></td>
        <td>缩略一览</td>
        <td>编号:16921925 </td>  
        <td>鞋名:</td>
        <td> ?????</td>
        <td>生产商:</td>
        <td> ????</td>
        <td>原价/现价</td>
        <td>679.00
          /
          338821.00</td>
      </tr>
      <tr>
        <td rowspan="2" align="center" valign="middle">
        	<input name="choseLottery"  id="chk" type="checkbox" />
          &nbsp;</td>
        <td rowspan="2">
        	
			 
        		<img src="back/upload/img/121791015891684.jpg"  style="max-width:50px; max-height:50px;"/>
        	 
        </td>
        <td><br /></td> 
        <td>性别:</td>
        <td>
        	
          	</td>
        <td>品 牌：</td>
        <td> 巴迪</td>
        <td>上市时间</td>
        <td> 2008-11-19 00:00:00.0</td>
      </tr>
      <tr >
        <td > 
          <a href="back/kill!AddSecondKills.action?shoesid=104">设此为秒杀商品</a>
        </td>
        <td>颜色:</td>
        <td> ??</td>
        <td>类 型：</td>
        <td>凉鞋</td>
        <td>购买热度</td>
        <td>5(人次)</td>
      </tr> 
      <tr> <td colspan="3"><br/> <br/> </td> </tr>
	
     	
      <tr>
        <td></td>
        <td>缩略一览</td>
        <td>编号:16915114 </td>  
        <td>鞋名:</td>
        <td> ?????</td>
        <td>生产商:</td>
        <td> ????</td>
        <td>原价/现价</td>
        <td>599.00
          /
          262961.00</td>
      </tr>
      <tr>
        <td rowspan="2" align="center" valign="middle">
        	<input name="choseLottery"  id="chk" type="checkbox" />
          &nbsp;</td>
        <td rowspan="2">
        	
			 
        		<img src="back/upload/img/122478546858329.jpg"  style="max-width:50px; max-height:50px;"/>
        	 
        </td>
        <td><br /></td> 
        <td>性别:</td>
        <td>
        	
          	</td>
        <td>品 牌：</td>
        <td> 千百度</td>
        <td>上市时间</td>
        <td> 2008-06-29 00:00:00.0</td>
      </tr>
      <tr >
        <td > 
          <a href="back/kill!AddSecondKills.action?shoesid=105">设此为秒杀商品</a>
        </td>
        <td>颜色:</td>
        <td> ??</td>
        <td>类 型：</td>
        <td>板鞋</td>
        <td>购买热度</td>
        <td>4(人次)</td>
      </tr> 
      <tr> <td colspan="3"><br/> <br/> </td> </tr>
	
    
  </table>
</form>
  <!----------------------表格标题部分------------------------------>
</body>
</html>
