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
<title>无标题文档</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="back/fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
	<script type="text/javascript" src="back/fancybox/jquery.fancybox-1.3.1.js"></script>
	<link rel="stylesheet" type="text/css" href="back/fancybox/jquery.fancybox-1.3.1.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="back/fancybox/style.css" />
	<script type="text/javascript">
		
		function fancy(id){
			$("#various"+id).fancybox({
				'width'				: '60%',
				'height'			: '80%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});
		}
		function fancy2(id){
			$("#various2"+id).fancybox({
				'width'				: '60%',
				'height'			: '80%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});
		}
	</script>
</head>

<body>

	<script>location="back/order!GetExpOrders.action";</script>

<form method="post" name="form1" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td width="8" rowspan="3" style="background: url('back/images/shadow.gif');">
    </td>
    <td width="943" height="30" valign="middle" style="background: url('back/images/table_bg001.gif');"> &nbsp;&nbsp; <img src="back/images/b_sing.gif" width="12" height="12" align="middle" />&nbsp;<font color="#999999">&nbsp;&nbsp; 总共：  条数据</font></td>
  </tr> 
   <!-------------------表格标题部分------------------------------>
  <tr>
    <td height="580" valign="top" style="background: url('back/images/table_bg001.gif'); padding: 5px;" >
   <table width="100%" border="0" cellspacing="1" cellpadding="0">
      <tr>
        <td colspan="12"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6%" style="background-image: url('back/images/b_table_header_left.gif');"><img src="back/images/b_table_header_left.gif" width="58" height="31" /></td>
            <td width="92%" style="background-image: url('back/images/b_table_title_bg.gif');">
            	<div style="text-align:center; font:12px; color:#FFF; font-weight:bold;">
                	 订 单 列 表
                </div>
            </td>
            <td width="2%"><img src="back/images/b_table_header_right.gif" width="58" height="31" /></td>
          </tr>
        </table></td>
        </tr>
      <!----------------------表格字段部分------------------------------>
      <tr>
        <td width="3%" background="back/images/b_table_header.gif" height="34" align="center" valign="middle"><strong>ID</strong></td>
        <td width="9%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>订单号码</strong></td>
        <td width="9%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>下单客户</strong></td>
        <td width="20%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>收货地址</strong></td>
        <td width="10%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>订单金额</strong></td>
        <td width="12%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>下单时间</strong></td>
        <td width="7%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>订单状态</strong></td>
        <td width="12%" background="back/images/b_table_header.gif" height="34px" align="center" valign="middle"><strong>备注信息</strong></td>
        <td width="25%" background="back/images/bg_handler.gif" height="34px" align="center" valign="middle"><strong>处理</strong></td>
      </tr>
      <!----------------------动态数据显示部分------------------------------>
      <tr height="30px" bgcolor="#F7F7F7" 
      		onmouseover="this.style.backgroundColor='lavender'; this.style.cursor='pointer';"
            onmouseout="this.style.backgroundColor='#F7F7F7'; this.style.cursor='pointer';">
        <td height="35" align="center" valign="middle">17</td>
        <td align="center" valign="middle">1344640472389</a></td>
        <td align="center" valign="middle">jaker</td>
        <td align="center" valign="middle">上海 上海 黄浦 南京路u </td>
        <td align="center" valign="middle"><font style="color:#F00; font-weight:bold;">￥599.00</font></td>
        <td align="center" valign="middle">2015-2-11 7:14:32</td>
        
        
        <td align="center" valign="middle">秒杀订单</td>
        
        
        <td align="center" valign="middle">ee</td>
        
        
        <td align="center" valign="middle"><a id="various17" href="/back/order!AddExp.action?oid=17" onclick="fancy(17)">新增节点</a>&nbsp;&nbsp;
        								   <a id="various217" href="/back/order!GetExpInfo.action?oid=17" onclick="fancy2(17)">查看物流</a></td>
      </tr>
      
      <!--------------------------分页显示部分---------------------------------->
      <tr height="35px">
        <td height="40" colspan="6" align="left" valign="middle">当前第：  /  页</td>
        <td>&nbsp;</td>
        <td colspan="5" align="right" valign="middle">请选择：第
        
        	页</td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
