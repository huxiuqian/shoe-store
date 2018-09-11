<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>个人中心——收获地址更改</title>
<link rel="stylesheet" type="text/css" href="css/personal_center_rcvAdd.css" />
<script type="text/javascript" src="js/personal_center_rcvAdd.js"></script>  
 <script type="text/javascript" src="js/area.js" ></script>
<script type="text/javascript" language="javascript">
  function submitRec(){
    var ss=document.getElementById("addreceive");
    var uid=document.getElementById("addold").value;
    if(uid==""){
       if(confirm("确定新增地址吗?")==true){
            ss.submit();
       }
    }else{
       if(confirm("如果删除信息为空默认原先地址信息，确定更新地址吗?")==true){
           ss.submit();
       }
    }
  }
                   //地址id
  function setAddress(recid){
  
  }
</script>
</head>
<body style = "background:#fefbf1;">
  
    
<table width="100%" border="0" cellpadding="10" cellspacing="10">
  <tr>
    <td align="center">收货地址<div> <hr /> </div></td>          
  </tr>
  <tr>
    <td align="center">
    <form name="form1" id="addreceive" action="receiver!AddReceive.action" method="post">
        <input type="hidden" name="old1" id="old1" value="recprovince"/>
    	<input type="hidden" name="old2" id="old2" value="reccity"/>
    	<input type="hidden" name="old3" id="old3" value="recdistrict"/>
    <input type="hidden" name="users.uid" id="addold" value=""/>
        <table width="100%" border="0" cellspacing="8">
          <tr>
            <td width="300" class="text"><div class="text"><span class="STYLE1">新增收货地址</span></div></td>
            <td width="93"align="left" class="grayColor">&nbsp;</td>
            <td width="466" align="left" class="grayColor">电话号码、手机号选填一项，其余均为必填项</td>
          </tr>
          <tr>
            <td class="text">
            	<div class="text">收货人姓名:</div>
            </td>
            <td align="left">
            	<input name="recreceiver" type="text" class="linput" id="recreceiver" onblur="checkrecname()" value=""/>
              </td>
            <td align="left"><div id="recnamechk">请输入正确的收件人信息以防货物无法送达</div></td>
          </tr>
          <tr>
            <td class="text"><div class="text">所在地区:</div></td>
            <td align="left">
              <select name="recprovince" id="recprovince">
              </select>
              省
              <select name="reccity" id="reccity">
              </select>
              市
              <select name="recdistrict" id="recdistrict">
              </select>
              区            </td>
              <script type="text/javascript">_init_area();</script>
            <td align="left">请输选择收获的省，市，区以便工作人员进行送货</td>
          </tr>
          <tr>
            <td class="text"><div class="text">街道地址:</div></td>
            <td align="left">
              <textarea name="recstreet" class="linput" id="recstreet" style="height:50px;" onblur="checkstreet()"></textarea>
            </td>
            <td align="left"><div id="streetchk">请输入详细街道地址，不需重复填写省/市/区</div></td>
          </tr>
          <tr>
            <td class="text"><div class="text">邮政编码:</div></td>
            <td align="left">
              <input name="recpostcode" type="text" id="recpostcode" onblur="checkpostcode()" value=""/>
            </td>
            <td align="left"><div id="postcodechk">请输入您收获地址的邮编号</div></td>
          </tr>
          <tr>
            <td class="text"><div class="text">电话号码:</div></td>
            <td align="left">                                                                          <!--  -->                   
              <input name="districttel" type="text" class="linput" id="districttel" style="width:68px;" onblur="checkphone()" value=""/>
            -             
              <input name="tel" type="text" class="linput" id="tel" style="width:108px;" onblur="checkphone()" value=""/>
             </td>
            <td align="left"><div id="telchk">请输入您的区号-电话号码</div></td>
          </tr>
          <tr>
            <td class="text"><div class="text">手机号码:</div></td>
            <td align="left">
              <input name="recmobile" type="text" class="linput" id="recmobile" style="width:195px" onblur="checkmobile()"value=""/>
            </td>
            <td align="left"><div id="mobilechk">请输入收货人的手机号码</div></td>
          </tr>
          <tr>
            <td class="text"><div class="text">设为默认:</div></td>
            <td align="left">
            
            
            <input type="checkbox" name="recisdefault" id="isdefault" value="1"/>
                          
            </td>
            <td align="left">是否设置为默认收获地址</td>
          </tr>
          <tr>
            <td colspan="3" align="center">
              <input type="button" name="button" onclick="submitRec()" id="button" value=" 保存 " disabled="disabled" />
            </td>
          </tr>
        </table>
      </form></td>
  </tr>
  <tr>
    <td><table width="100%" border="1" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="7"><span class="STYLE1">已保存的有效地址</span></td>
        
        <tr>
          <td align="center">收货人</td>
          <td align="center">所在地区</td>
          <td align="center">街道地址</td>
          <td align="center">邮编</td>
          <td align="center">电话/手机</td>
          <td colspan="2 "align="center">操作</td>
        </tr>

	  
        <tr>
          <td colspan="5" align="left"><span>总共： 条记录</span></td>
          <td align="right">请选择：第
          
      	页</td>          
        </tr>	    
      </table></td>
  </tr>
</table>
</body>
</html>