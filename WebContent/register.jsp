<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/global.css" type="text/css" rel="stylesheet" />
<link href="css/register.css" type="text/css" rel="stylesheet" />
<title>register</title> 
<!--含有右侧浮动广告 在js里面-->
<SCRIPT language=javascript src="js/jquery.js" type=text/javascript></SCRIPT>
<SCRIPT language=javascript src="js/floatright_close_v7.js" type=text/javascript></SCRIPT>
<SCRIPT language=javascript src="js/register.js" type=text/javascript></SCRIPT>
<!--AJAX验证用户名是否已存在-->
 <script type="text/javascript">
 $(document).ready( function(){  
			$("#uaccount").blur(function(){  
				var params=$("#uaccount").serialize(); 
				$.ajax({  
					url:"users!checkName.action", 
					type:"post",  
					dataType:"text", 
					data:params,   
					success:update_page 
					}); 
					}); 
					})   
	function update_page(info){
	  if(formRegister.uaccount.value.length>=4&&formRegister.uaccount.value.length<=20){
		  if("exist"==info){
		    $("#userNameChk").html("<img src='images/register/err.png'>" + " 用户名已存在！"); 
		  } else{
		    $("#userNameChk").html("<img src='images/register/ok.png'>" + " 用户名可以使用！"); 
		  }
		}
	} 
 </script>
</head>

<body> 


     <!--首部-->
    <div align="center" >
        <div id="header" > 
            <iframe id="main_header" src="header.jsp" width="100%" height="200px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div>
    <!---首部结束-->
    
	<div id="main" >  
    
   		<!--中部-->
        <div align="center">
        	<div style=" width:1000px; background-color:#fdf7ea"> 
                <form id="formRegister" name="formRegister" method="post" action="register.do"  onSubmit="return checkForm()" > 
                  <div align="center">
                    <table  id="regist_table"  style=" border:0;  cellSpacing:0; cellPadding:0;  border:0px; text-align:left;"> 
                      <tr align="left">
                        <td  colspan="2" > 
                           <h1><img src="images/register/reg_Title.gif" alt="新用户注册...Register" />           </h1> 
                        </td> 
                         <td  align="right" valign="bottom"> 
                            <span class="span"> 已有账号？ >> </span>
                        	<a class="a" href="login.jsp" target="_parent"  > 立即登陆</a>
                        </td> 
                      </tr>
                      
                      <tr> <td  colspan="3"> <hr align="center"/> </td>   </tr>
                    
                       <tr>
                         <td  colspan="3">
                            <span >本页所有项目为必填项，请认真填写:</span>
                         </td>
                       </tr>
                      
                       <tr>
                         <td class="grayColor"><span >用 户&nbsp; 名:</span></td>
                         <td>
                         	<input type="text" name="uaccount" id="uaccount" class=linput   maxlength="20"
                            onblur="checkUsername()" value="${user.uaccount }" />
                         </td>
                         <td>
                         	<span class="BrownColor" id="userNameChk">
                            	*4-20个字符（仅限数字、大小写字母和下划线），注册后不可修改
                            </span>
                          </td>
                       </tr>
                       <tr> 
                       	<td></td>
                       	<td colspan="2">
                       		<span class="BrownColor" id="userNameChk">
                            	${err }
                            </span>
                       	</td>
                       </tr>
                       <tr>
                         <td width="76" class="grayColor" ><span >真实姓名:</span></td>
                         <td width="204" >
                         	<input type="text" name="uname" id="uname" class=linput
                             maxlength="20" onblur="checknickname()" value="${user.uname }"/>    
						</td>
                         <td >
                         	<span class="BrownColor" id="nicknamechk">	
                            	*一旦注册不可修改
                             </span>
                         </td>
                      </tr>
                      
                       <tr>
                         <td class="grayColor"><span >输入密码:</span></td>
                         <td>
                         	<input type="password" name="upwd" id="upwd" class=linput maxlength="20"
                             onblur="checkPwd()" />
                         </td>
                         <td><span class="BrownColor" id="checkPwd">*6-20个字符</span></td>
                       </tr>
                       <tr>
                         <td class="grayColor"><span >重复密码:</span></td>
                         <td>
                         	<input type="password" name="rpwd" id="rpwd" class=linput   maxlength="20"
                            onblur="checkRepeatPwd()" />
                         </td>
                         <td><span class="BrownColor" id="checkRepeatPwd">*重新输一遍上面的密码</span></td>
                       </tr>
                       <tr>
                         <td class="grayColor"><span >电子邮件:</span></td>
                         <td>
                         	<input type="text" name="uemail" id="uemail" class=linput   onblur="checkEmail()" value="${user.uemail }"/>
                         </td>
                         <td><span class="BrownColor" id="checkEmail">*请正确填写你的常用电子邮件地址 </span></td>
                      </tr> 
                      
                      
                       <tr>
                         <td class="grayColor"><span >用户电话:</span></td>
                         <td>
                         	<input type="text" name="utel" id="utel" class=linput 
                              maxlength="20" onblur="checkusertel()" value="${user.utel }"/>
                         </td>
                         <td><span class="BrownColor" id="checkusertel">*请正确填写你常用联系电话 </span></td>
                      </tr> 
                      
                      
                       <tr>
                         <td class="grayColor"><span >性 &nbsp; &nbsp; &nbsp; 别:</span></td>
                         <td>       
                           <input type="radio" name="ugender" id="male" value="男" checked="checked" onclick="changeGenderMale()"/>
                           	               男     
                           <input type="radio" name="ugender" id="female" value="女" checked="checked" onclick="changeGenderFemale()"/> 
								 女       
						 </td>
                         <td>&nbsp;</td>
                       </tr> 
                       
                     <!--   
                       <tr>
                         <td class="grayColor"><strong><span>验 &nbsp;证 &nbsp;码:</span></strong></td>
                         <td>
                         	<input name="inputCheckCode" type="text" id="inputCheckCode"  
                             class=linput   maxlength="10" onblur="checkInputAndTheCheckCode()"/>
                         </td> 
                         <td> 
                         	<span class="BrownColor">
                             	<img id="code"  src="/shoe/ValidateCodeServlet"  align="center"/>
	                            <a href="javascript:changeCode();"class="BrownColor" style="vertical-align:bottom;"> 
	                            	>点击此处更换验证码<
	                            </a>
	                       </span>     
                      	 </td>
                       </tr> 
                        
                      -->   
                            
                       <tr>
                         <td colspan="3" align="center" >  
                             <br/>
                            <input name="checkBox" type="checkbox" id="checkBox"  onclick="block_or_open_submit()" /> 
                            <span class="grayColor"> 已经详细阅读以下本站服务协议 </span> 
                         </td>
                       </tr> 
                         
                       <tr>
                        <td  colspan="3"> 
                            <DIV class=logingrid>
                                <TEXTAREA style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; 
                                    WIDTH: 100%; HEIGHT: 280px; BORDER-TOP: #dddddd 1px solid; BORDER-RIGHT: #dddddd 1px solid" name=content1>
                                   
                                  欢迎您注册成为网上鞋城用户！
                                 请仔细阅读下面的协议，只有接受协议才能继续进行注册。 
                                
                                 1、 服务条款的确认和接纳
                                
                                　　网上鞋城用户服务的所有权和运作权归网上鞋城拥有。网上鞋城所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击&ldquo;我同意&rdquo; 按钮，即表示用户与网上鞋城达成协议并接受所有的服务条款。
                                
                                 2、 网上鞋城服务简介
                                
                                　　网上鞋城通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。
                                　　 
                                 3、 服务条款的修改
                                
                                　　网上鞋城会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击&ldquo;我同意&rdquo;按钮。 如果您不接受，则及时取消您的用户使用服务资格。
                                
                                 4、 用户隐私制度
                                
                                　　尊重用户个人隐私是网上鞋城的 基本政策。网上鞋城不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或网上鞋城在诚信的基础上认为透露这些信息在以下三种情况是必要的： 
                                　　1)遵守有关法律规定，遵从合法服务程序。 
                                　　2)保持维护网上鞋城的商标所有权。 
                                　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 
                                　　4)符合其他相关的要求。 
                                
                                 5、 用户的帐号，密码和安全性
                                
                                　　一旦注册成功成为网上鞋城用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知网上鞋城。
                                
                                 6、 免责条款
                                
                                　　用户明确同意网站服务的使用由用户个人承担风险。 　　 
                                　　网上鞋城不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过网上鞋城服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 
                                 
                                 7、有限责任
                                
                                　　网上鞋城对任何直接、间接、偶然、特殊及继起的损害不负责任。
                                 
                                 8、用户责任 
                                
                                　　用户单独承担传输内容的责任。用户必须遵循： 
                                　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 
                                　　2)使用网站服务不作非法用途。 
                                　　3)不干扰或混乱网络服务。 
                                　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 
                                　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。
                                　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。
                                　　7)不得利用本站制作、复制和传播下列信息： 
                                　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；
                                　　　2、煽动颠覆国家政权，推翻社会主义制度的；
                                　　　3、煽动分裂国家、破坏国家统一的；
                                　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；
                                　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；
                                　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；
                                　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；
                                　　　8、损害国家机关信誉的；
                                　　　9、其他违反宪法和法律行政法规的；
                                　　　10、进行商业广告行为的。
                                　　 
                                　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，网上鞋城将取消用户服务帐号。
                                
                                 9、解释权
                                
                                　　本注册协议的解释权归网上鞋城所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。
                                </TEXTAREA>  
                             </DIV> 
                        </td>
                       </tr>
                       <tr>
                         <td colspan="3" align="center">   
                            <p align="center"> 
                                <input type="checkbox"  name="userCookie" value="true" />自动跳转主页，并2周内自动登录&nbsp;&nbsp;
                                <input type="submit" name="submit" id="submit" value=" 同意并注册"/> 
                            </p>     
                         </td>
                       </tr>
                     </table>
                  </div> 
                </form>
        	  
            
        	</div> 
        </div> 
    </div>
 
    
    <!--底部 --> 
    <div align="center" >
        <div id="footer" > 
            <iframe id="main_footer" src="footer.jsp" width="100%" height="580px" frameborder="0" scrolling="no"  vspace="0">
            </iframe>  
        </div> 
    </div> 
    <!--底部 结束-->
    
</body>
</html>

 