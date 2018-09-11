/*--------------------------------------------------*/
function IFrameResize(){ 
 //alert(this.document.body.scrollHeight); //弹出当前页面的高度
 var obj = parent.document.getElementById("main_subFrame");  //取得父页面IFrame对象
 //alert(obj.height); // 弹出父页面中IFrame中设置的高度
 obj.height = this.document.body.scrollHeight+50;  //调整父页面中IFrame的高度为此页面的高 
}

window.onload = function(){ 
	IFrameResize();
}

/*--------------------------------------------------------------------------------------*/
// JavaScript Document
function check_opwd()
{
  var divOldPwd = document.getElementById("div_OldPwd");
  if(form1.oldpwd.value=="")
  {
    divOldPwd.innerHTML = "<img src='images/personal_center_modify_pwd/err.png'> 请输入旧密码！";
	//form1.oldpwd.select();
	return false;
  }
  else
  {
    divOldPwd.innerHTML = "<img src='images/personal_center_modify_pwd/ok.png'>";
	return true;
  }
}

function check_npwd()
{
  var divNewPwd = document.getElementById("div_NewPwd");
  var divOldPwd = document.getElementById("div_OldPwd");
  var usern = /^[a-zA-Z0-9_]{1,}$/; 
  //|| !form1.newupwd.value.length.match(usern)
  
  if(form1.newupwd.value=="" || form1.newupwd.value == form1.oldpwd.value || form1.newupwd.value.length<6 || form1.newupwd.value.length>20 )
  {
     divNewPwd.innerHTML = "<img src='images/personal_center_modify_pwd/err.png'> 新密码不符合要求！";
	 //form1.newupwd.select();
	 return false;
  }
  else
  {
	  divNewPwd.innerHTML = "<img src='images/personal_center_modify_pwd/ok.png'>";
	  return true;
  } 
}
//验证密码一致性
function check_rpwd()
{
  var divrPwd = document.getElementById("div_rNewPwd");
  if(form1.newupwd.value != form1.rupwd.value)
  {
    //divrPwd.innerHTML = "<img src='images/err.png'> 两次密码不一致";
	//form1.rupwd.select();
	return false;
  }
  else
  {
    //divrPwd.innerHTML = "<img src='images/ok.png'>";
	return true;
  }
}
//验证提交
function checkForm()
{
	check_opwd();
	check_npwd();
	check_rpwd();
	if(!check_rpwd())
	{
		alert("两次密码不一致");
		return false;
	}
	if(check_opwd() && check_npwd() && check_rpwd())
	  return true;
	else
	{
	  //alert("WRONG");
	  return false;
	}
}
