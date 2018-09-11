/*-------------------------验证函数-----------------------------------------*/ 
var count = 0;
function changeCode(){    	    
	var code = document.getElementById("code");
	//alert("code:"+code);
	code.src="/shoe/ValidateCodeServlet?msg="+(count++);
	/* 
	$.ajax({  
		url:"/shoe/ValidateCodeServlet?msg="+(count++), 
		type:"get",  
		async:false,
		success:function(data){
			code.src= data;
		 
			$.ajax({  
				url:"/shoe/ValidateCodeServlet", 
				type:"post",  
				dataType:"text",  
				success:function(res){
					$("#codeText").attr("value",res);
					} 
				}); 
			}
		}); 
	*/
}

function checkForm(){  
	//验证用户名长度 
	if(form_login.uaccount.value.length<4 || form_login.uaccount.value.length>20){ 
		alert("用户名的长度应该为4-20位"); 
		form_login.uaccount.select(); 
		return false;  
	}
	
	//验证密码不为空
	if(form_login.upwd.value==""){ 
		alert("请输入密码"); 
		return false; 
	}
	//密码为6~20位
	if(form_login.upwd.value.length<6 || form_login.upwd.value.length>20){ 
		alert("密码的长度应该为6-20位"); 
		form_login.upwd.select(); 
		return false;  
	}
	//密码只有数字英文和下划线  
    var usern = /^[a-zA-Z0-9_]{1,}$/; 
    if (!form_login.upwd.value.match(usern)) {  
		alert("密码只允许字母、数字和下划线");  
		form_login.upwd.val ="";  
		form_login.upwd.focus();  
		return false;  
    }    

	if(document.getElementById("inputCheckCode").value == null ||document.getElementById("inputCheckCode").length == 0){
	   alert("验证码不能为空！");
	   return false;
	}
  }


   
