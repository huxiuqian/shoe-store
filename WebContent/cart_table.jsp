<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />  
<link href="css/global.css" type="text/css" rel="stylesheet" /> 
<link href="css/cart_table.css" type="text/css" rel="stylesheet" /> 
<SCRIPT language=javascript src="js/cart_IframeSize.js" type=text/javascript></SCRIPT>
<title> 您的私人鞋柜——购物车</title> 
<script type="text/javascript">
    //购物车提交 ''
    function cartsubmit(types){
        alert("购物车操作");
        var ss=document.getElementById("form_cart");//获取form表单对象
        var type=document.getElementById("typed").value;//获取普通购物车标志value
        ss.target="_parent";
        if(types=="on"&&type==1){
           ss.action="/shoe/order!ContinueShopping.action"; 
           ss.submit();
        }else if(type==1&&types=="del"){        
           ss.action="/shoe/order!deleteCart.action";
           if(confirm("确定要清空购物车?")){
              ss.submit();
           }            
        }else if(type==1&&types=="null"){
           //提交购买
           ss.action="/shoe/order.action";
           ss.submit();
        }
    }
    //删除商品，实质删除一行tr，随之总价格、积分变化，如果只剩一行继续删除提示和不止一行不同
	function delectrow(){
	   var conprice=document.getElementsByName("totalsprices");//单个商品总价格隐藏域对象
	   var subinteg=document.getElementsByName("subinteger");//单个商品总积分隐藏域对象
	   var count=0;//总价格变量
	   var countinte=0;//总积分变量	
	   var totalprice=document.getElementById("totalprice"); //所有购买商品总价格，获取隐藏域对象
	   var totalprices=document.getElementById("total_prices");//所有购买商品总价格，获取显示框对象
	   var totali=document.getElementById("totalinte"); //所有购买商品总积分，获取隐藏域对象
	   var totalinteger=document.getElementById("totalIntegral");//所有购买商品总积分，获取显示框对象
	   if(conprice.length<=1){
	       if(confirm("确定删除整个购物车商品?")){
	         var ss=document.getElementById("form_cart");//获取form表单对象
		     ss.target="_parent";	
	         ss.action="/shoe/order!deleteCart.action";
	         ss.submit();          
	       }else{
	           return ;
	       }
	   }else if(confirm("确定删除此商品?")){
	       var obj=event.srcElement;
	       while(obj.tagName!="TR"){
	          obj=obj.parentElement;
	       }
	       var tb=obj.parentElement;
	       tb.removeChild(obj);
	       if(conprice.length>0){
	          for(var s=0;s<conprice.length;s++){
		          count=count+parseFloat(conprice[s].value);
		          countinte=countinte+parseFloat(subinteg[s].value);
		      }
	       }
	        //显示总价格隐藏域及显示HTML
		    totalprice.value=count;//总价格显示
		    totalprices.innerHTML="<label id='total_price'>￥"+count+".00</label>";//总价格合计显示赋值HTML
		    totali.value=countinte;//总积分显示
		    totalinteger.innerHTML="<label id='total_score'>"+countinte+"</label>";//总积分合计显示赋值HTML
	   }
	}
                  //   鞋子di，鞋子数量，鞋子类型
	function singleProChg(sid, quantity, type){
		if(isNaN(quantity)){
			alert("请输入数字");
			location="cart_table.jsp";
		}
		else if(quantity <= 0){
			alert("商品数目至少为一件");
			location="cart_table.jsp";
		} else{
			var price=document.getElementById("span"+sid); //单个商品价格 获取隐藏域对象
			var pprice=document.getElementById("con"+sid);//单个商品合计价格 获取隐藏域对象
			var pi=document.getElementById("con1"+sid);//单个商品价格合计显示对象
			var conprice=document.getElementsByName("totalsprices");//单个商品总价格隐藏域对象
			var subinteg=document.getElementsByName("subinteger");//单个商品总积分隐藏域对象
			var count=0;//总价格变量
			var countinte=0;//总积分变量			
			var totalprice=document.getElementById("totalprice"); //所有购买商品总价格，获取隐藏域对象
			var totalprices=document.getElementById("total_prices");//所有购买商品总价格，获取显示框对象
			var totali=document.getElementById("totalinte"); //所有购买商品总积分，获取隐藏域对象
			var totalinteger=document.getElementById("totalIntegral");//所有购买商品总积分，获取显示框对象
			//单个商品总价格管理
			var ppr=parseFloat(price.value);//计算单个商品价格
			var pprices=ppr*parseInt(quantity);//单个商品总价格
		    pprice.value=pprices;//单个商品总价格隐藏域赋值value
		    pi.innerHTML="￥"+parseFloat(pprices)+".00";//单个商品价格合计显示赋值HTML
		    //积分管理
		    var subint=document.getElementById("subs"+sid);//单个商品积分隐藏域对象
		    var subint1=document.getElementById("sub"+sid);//单个商品积分合计隐藏域对象
		    var subi=document.getElementById("subinteger"+sid);//单个商品积分合计 显示对象
		    var subints=parseFloat(subint.value);//单个商品积分计算
		    subint1.value=quantity*subints;//单个商品总积分隐藏域赋值value
		    subi.innerHTML=quantity*subints+".00";//单个商品积分合计显示赋值HTML
		    //总价格、积分管理		    
		    //循环遍历不同商品合计价格和积分
		    if(conprice.length>0){
		       for(var s=0;s<conprice.length;s++){
		          count=count+parseFloat(conprice[s].value);
		          countinte=countinte+parseFloat(subinteg[s].value);
		       }
		    }		    
		    //显示总价格隐藏域及显示HTML
		    totalprice.value=count;//总价格显示
		    totalprices.innerHTML="<label id='total_price'>￥"+count+".00</label>";//总价格合计显示赋值HTML
		    totali.value=countinte;//总积分显示
		    totalinteger.innerHTML="<label id='total_score'>"+countinte+"</label>";//总积分合计显示赋值HTML		

    		
		}
	}
	//数量+1. 参数：商品id
	function jia(obj){
	   var inde=document.getElementById("input"+obj);//获取数量表单对象
	   if(isNaN(inde.value)){
	      alert("请输入数字!");
	      return ;
	   } else{
	      var count=parseInt(inde.value)+1;//数量+1 
	      document.getElementById("input"+obj).value=count;//输入框数量显示
	      //执行其他总价格、积分等变化显示
	      singleProChg(obj, count, 1);
	   }
	}
	//数量-1. 参数：商品id
	function jian(obj){
	   var inde=document.getElementById("input"+obj);//获取数量表单对象
	   if(isNaN(inde.value)){
	      alert("请输入数字!");
	      return ;
	   }else if(parseInt(inde.value)==1){
	      alert("至少数量为1件!");
	      return ;
	   } else{
	      var count=parseInt(inde.value)-1;//数量-1 
	      document.getElementById("input"+obj).value=count;//输入框数量显示
	      //执行其他总价格、积分等变化显示
	      singleProChg(obj, count, 1);
	   }
	}
	
</script> 
</head>  
<body >  
 
     
 
      <!------从此处开始为购物车的内容，包括购物车标题 内容的表格------>
      <div  id="cart_container" align="center">    
            <div align="left">
                <img src="images/cart/cart_logo.png" alt="购物车"width="190" height="50"/>
        </div>
      <!----由于背景色的缘故，在这里过渡一下----->
            <div style="background-image:url(images/cart/bg.gif); background-repeat:repeat-x; height:8px;"></div> 
            <form id="form_cart" name="form_cart" method="post" action=""> 
              <table id="cart_table_title" >
              	<tr>
                  <td align="left" >
                <a target="_parent" href="javascript:cartsubmit('del');"><img  id="cleanCart"  

src="images/cart/cleanCart.png"  alt="清空购物车" /> </a> 
                <a target="_parent" href="javascript:cartsubmit('on');"><img  id="goonShooping" 

src="images/cart/goonShopping.png"  alt="继续购物" /> </a>
                  </td>
                  <td align="right">
					
                	
                		 <img  id="buyNow"  src="images/cart/emptyCar.png" alt="空购物车" />  
                	
                  </td>
                </tr>
              </table>
              <table id="cart_detail_table" class="cart_detail_table">
              
                 <div >
	                	<span style="font-size:15px;">您的 购物车为空，请返回购物</span>
	                	<br/>
	                	<br/>
	                	<br/>
	                	<img src="images/cart/emptyCart_mainPic.png" style="max-width:300px;" alt="您的 购物车为

空"/>
                	</div>
                           
                
	            

              
              购物车暂时没有任何商品！
                             
                <tr> <td colspan="9" height="5px;" > <hr /></td> </tr>
                <tr>
                  <td colspan="8">&nbsp; 
                 </td> 
                </tr> 
              </table>
              <div align="right">
                <strong>----可得积分</strong>: 
                    <span class="style_total_price" id="totalIntegral">
                        <label id="total_score"></label>
                    </span>
                    <input type="hidden" id="totalinte" name="totalInteg" value="" />
                     分  
                  <strong>----商品总价</strong>:
                    <span class="style_total_price" id="total_prices">
                        <label id="total_price">￥0</label>
                    </span>
                    <input type="hidden" id="totalprice" name="total_prices" value="" />
                    元 
              </div> 
              <div>
                <div align="right">
                	
                	
                	
                		 <img  id="buyNow"  src="images/cart/emptyCar.png" alt="空购物车" />  
                	              	  
                </div>
              </div> 
            </form>           
	</div>
      </div>     
</body>
</html>