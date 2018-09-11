//                                 验证函数 
/*-----------------------更改性别-------------------------------------------*/
 
function changeGenderMale()
{ 
	var radios=document.getElementsByName("ugender");  
     radios[0].checked=checked;   
     radios[1].checked=unchecked;   
}
function changeGenderFemale()
{ 
	var radios=document.getElementsByName("ugender");  
     radios[1].checked=checked;
     radios[0].checked=unchecked;    
}
/*-------------------------验证函数-----------------------------------------*/ 
//检测真实姓名
function checknickname(){
	if(formRegister.uname.value.length>4 ){   
		document.getElementById("nicknamechk").innerHTML ="<img src='images/register/err.png'>" + " 真实姓名长度过长";   
		return false;
	}
	else if(formRegister.uname.value.length<2)
	{
		document.getElementById("nicknamechk").innerHTML ="<img src='images/register/err.png'>" + " 真实姓名长度过短";   
		return false;
	}
	else{
		document.getElementById("nicknamechk").innerHTML ="<img src='images/register/ok.png'>";   
		return true;
	}
}




	//验证用户名长度 
//验证函数 
function checkUsername(){
	if(formRegister.uaccount.value.length<4 || formRegister.uaccount.value.length>20){  
		document.getElementById("userNameChk").innerHTML ="<img src='images/register/err.png'>" + " 用户名的长度应该为4-20位！  ";   
		return false;
	}else{
		document.getElementById("userNameChk").innerHTML ="<img src='images/register/ok.png'>";  
		return true; 
	}
	 
}


function checkPwd(){
	//验证密码长度
	//密码只有数字英文和下划线  
    var usern = /^[a-zA-Z0-9_]{1,}$/; 
	if(formRegister.upwd.value==""){  
	 	document.getElementById("checkPwd").innerHTML ="<img src='images/register/err.png'>" + "请输入密码";  
		return false; 
	}  
	else if(formRegister.upwd.value.length<6 || formRegister.upwd.value.length>20){ 
		document.getElementById("checkPwd").innerHTML ="<img src='images/register/err.png'>" + "密码的长度应该为6-20位";   
		return false;  
	}
    else if (!formRegister.upwd.value.match(usern)) {  
	 	document.getElementById("checkPwd").innerHTML ="<img src='images/register/err.png'>" + "密码只允许字母、数字和下划线";  
		formRegister.upwd.val ="";   
		return false;  
    } 
	else if(formRegister.upwd.value!=formRegister.rpwd.value && formRegister.rpwd.value !=null){ 
		//验证密码的一致性 
	 	document.getElementById("checkRepeatPwd").innerHTML ="<img src='images/register/err.png'>" + "两次密码不一致";    
	    return false; 
	}  
	else{
		document.getElementById("checkPwd").innerHTML ="<img src='images/register/ok.png'>";  
		document.getElementById("checkRepeatPwd").innerHTML ="<img src='images/register/ok.png'>";  
		return true;
	}
}


//验证重复密码长度 
function checkRepeatPwd(){ 
	if(formRegister.rpwd.value==""){ 
	 	document.getElementById("checkRepeatPwd").innerHTML ="<img src='images/register/err.png'>" + "请重复输入密码";    
		return false;
	} 
	else if(formRegister.upwd.value!=formRegister.rpwd.value){ 
		//验证密码的一致性  
	 	document.getElementById("checkRepeatPwd").innerHTML ="<img src='images/register/err.png'>" + "两次密码不一致";    
	    return false; 
	}
	else{
		document.getElementById("checkPwd").innerHTML ="<img src='images/register/ok.png'>";  
		document.getElementById("checkRepeatPwd").innerHTML ="<img src='images/register/ok.png'>";  
		return true;  
	} 
}


//验证邮件地址
//TODO 改为正则表达式验证
function checkEmail(){  
	

	var email = document.getElementById("uemail").value;  
	var emailPattern=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if(!emailPattern.test(email)) { 
	 	document.getElementById("checkEmail").innerHTML ="<img src='images/register/err.png'>"+"非法的邮件地址"; 
		return false;  
	}  
	else{
		document.getElementById("checkEmail").innerHTML ="<img src='images/register/ok.png'>";    
		return true;
	} 
}



function checkForm(){ 
  
	if( checknickname()&&checkUsername() &&checkPwd() 
		&&checkRepeatPwd() &&checkEmail()&&checkInputAndTheCheckCode&&selectUpask())
	{
		return true;
	}
	else
	{
		return false;
	} 
}

 
 
function checkusertel()
{ 
    var usertelPattern = /^[0-9]{1,}$/; 
	if(formRegister.utel.value==""){  
	 	document.getElementById("checkusertel").innerHTML ="<img src='images/register/err.png'>" + "请输入电话以便送货";  
		return false; 
	}  
	else if(formRegister.utel.value.length !=11){ 
		document.getElementById("checkusertel").innerHTML ="<img src='images/register/err.png'>" + "电话的长度应该为11位";   
		return false;  
	}
    else if (!formRegister.utel.value.match(usertelPattern)) {  
	 	document.getElementById("checkusertel").innerHTML ="<img src='images/register/err.png'>" + "电话只允数字";  
		return false;  
    }   
	else{
		document.getElementById("checkusertel").innerHTML ="<img src='images/register/ok.png'>";    
		return true;
	} 
}
/*------------------------------------------------------------------*/
//通过单选框，实现对提交注册的开关
function block_or_open_submit(){
	if((window.document.getElementById('checkBox').checked)&&checkForm()==true&& checkusertel()==true)
	{
		window.document.getElementById('submit').disabled=false;
	}
	else 
		window.document.getElementById('submit').disabled=true;  
}
 
/*------------------------------------------------------------------*/
 
 
