<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>  
<title>商品列表</title>
<script language="javascript">
	function IFrameResize(){ 
	 //alert(this.document.body.scrollHeight); //弹出当前页面的高度
	 var obj = parent.document.getElementById("left_menu");  //取得父页面IFrame对象
	 //alert(obj.height); // 弹出父页面中IFrame中设置的高度
	 obj.height = this.document.body.scrollHeight+50;  //调整父页面中IFrame的高度为此页面的高 
	} 
</script>
 
 
<link href="css/left_menu.css" rel="stylesheet" type="text/css" />
</head> 
<body onload="IFrameResize()">  

 
      <ul  id="category" >  
      <table  > 
      		<div class="td_tobTitle"><span> &nbsp; &nbsp;商品分类 </span></div> 
                <tr>
                	<td  colspan="2" class="td_title" >
                    	<img src="images/left_menu/index_left_menu_title1.png" alt="women:" style="max-height:48px;max-width:148px"/> 
 					</td>  
        		</tr>
            	<tr>
               	  <td  style="float:left;">
               
              
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=阿迪达斯" target="_parent">
			              <span>阿迪达斯</span>
			             </a>
			           </li>
           
            
              
            
              
            
              
            
              
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=美津浓" target="_parent">
			              <span>美津浓</span>
			             </a>
			           </li>
           
            
              
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=安踏" target="_parent">
			              <span>安踏</span>
			             </a>
			           </li>
           
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=达芙妮" target="_parent">
			              <span>达芙妮</span>
			             </a>
			           </li>
           
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=卡佛儿" target="_parent">
			              <span>卡佛儿</span>
			             </a>
			           </li>
           
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=千百度" target="_parent">
			              <span>千百度</span>
			             </a>
			           </li>
           
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=巴迪" target="_parent">
			              <span>巴迪</span>
			             </a>
			           </li>
           
            
              	  
                        <li>
			             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=1&nameKeyWord=百丽" target="_parent">
			              <span>百丽</span>
			             </a>
			           </li>
           
           
                          </td>  
                </tr> 
                <tr>
                	<td  colspan="2" class="td_title" >
                	<img src="images/left_menu/index_left_menu_title2.png" alt="men"style="max-height:48px;max-width:148px"/>   
	                 </td>  
       			</tr>
            	<tr>
               	  	<td  style="float:left;">
                    
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=耐克" target="_parent">
		              <span>耐克</span>
		             </a>
		           </li>
		           
                   
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=阿迪达斯" target="_parent">
		              <span>阿迪达斯</span>
		             </a>
		           </li>
		           
                   
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=匡威" target="_parent">
		              <span>匡威</span>
		             </a>
		           </li>
		           
                   
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=李宁" target="_parent">
		              <span>李宁</span>
		             </a>
		           </li>
		           
                   
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=鸿星尔克" target="_parent">
		              <span>鸿星尔克</span>
		             </a>
		           </li>
		           
                   
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=彪马" target="_parent">
		              <span>彪马</span>
		             </a>
		           </li>
		           
                   
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=美津浓" target="_parent">
		              <span>美津浓</span>
		             </a>
		           </li>
		           
                   
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=361°" target="_parent">
		              <span>361°</span>
		             </a>
		           </li>
		              	               	  	
		                        <li>
		             <a href="/shoe/shoes!SearchShoesByGenderBrand.action?gender=0&nameKeyWord=巴迪" target="_parent">
		              <span>巴迪</span>
		             </a>
		           </li>
		           
                   
		              
                        
                    </td>  
                </tr>
                
                <tr>
                	<td  colspan="2" class="td_title" >
                    <img src="images/left_menu/index_left_menu_title4.png" alt="秒杀"  style="max-height:48px;max-width:148px"/></td>  
       	 		</tr>
            	<tr>
               	  	<td  style="float:left;">
                         
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=高跟鞋" target="_parent">
              <span>高跟鞋</span>
             </a>
           </li>
               	  	  
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=篮球鞋" target="_parent">
              <span>篮球鞋</span>
             </a>
           </li>
               	  	  
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=网球鞋" target="_parent">
              <span>网球鞋</span>
             </a>
           </li>
               	  	  
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=足球鞋" target="_parent">
              <span>足球鞋</span>
             </a>
           </li>
               	  	  
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=跑步鞋" target="_parent">
              <span>跑步鞋</span>
             </a>
           </li>
               	  	  
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=板鞋" target="_parent">
              <span>板鞋</span>
             </a>
           </li>
               	  	  
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=凉鞋" target="_parent">
              <span>凉鞋</span>
             </a>
           </li>
               	  	  
               	  	  <li>
             <a href="/shoe/shoes!SearchShoesByTypes.action?nameKeyWord=拖鞋" target="_parent">
              <span>拖鞋</span>
             </a>
           </li>
               	  	  
                        
           
           
               	     </td>  
                </tr>
                
                 
                <tr>
                	<td  colspan="2" class="td_title" >
                    <img src="images/left_menu/specify.gif" alt="所有种类"  style="max-height:48px;max-width:148px"/></td>  
       	 		</tr>
            	<tr>
               	  	<td >
                      <li>
                      	<a href="/shoe/specify_shoes_homepage.jsp"  target="_parent" style="text-decoration:none;text-align:center;">
                      		 进入专业定制首页
                        </a>
                      </li>
               	    </td>  
                </tr>
               <tr><td> <br/></td></tr>
        </table>
      </ul> 
</body>
</html>

   
