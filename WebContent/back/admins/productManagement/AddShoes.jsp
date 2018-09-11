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
<title>AddShoes.jsp</title>
<style type="text/css">
<!--
body {
	background-color: #e6e6e6;
}

body, td, th {
	font-size: 16px;
}

.STYLE1 {
	font-size: 16px
}
-->
</style>
<script type="text/javascript">
	function fillYear() {
		var year = document.getElementById("year");
		for (var i = 1980; i <= 2011; i++)
			year.options.add(new Option(i, i));
		fillMonth();
	}
	function fillMonth() {
		var month = document.getElementById("month");
		for (var i = 1; i <= 12; i++)
			month.options.add(new Option(i, i));
		fillDay();
	}
	function fillDay() {
		var year = document.getElementById("year"); //获取年份下拉列表
		var month = document.getElementById("month"); //获取月份下拉列表
		var day = document.getElementById("day"); //获取日期下拉列表
		day.options.length = 0; //清空下拉框
		var indexOfYear = year.selectedIndex + 1980;
		var indexOfMonth = month.selectedIndex + 1;
		if (indexOfMonth == 1 || indexOfMonth == 3 || indexOfMonth == 5
				|| indexOfMonth == 7 || indexOfMonth == 8 || indexOfMonth == 10
				|| indexOfMonth == 12) {
			for (var i = 1; i <= 31; i++)
				day.options.add(new Option(i, i));

		} else if (indexOfMonth == 4 || indexOfMonth == 6 || indexOfMonth == 9
				|| indexOfMonth == 11) {
			for (var i = 1; i <= 30; i++)
				day.options.add(new Option(i, i));
		} else if ((indexOfYear % 400 == 0)
				|| ((indexOfYear % 4 == 0) && (indexOfYear % 100 != 0))) {
			for (var i = 1; i <= 29; i++)
				day.options.add(new Option(i, i));
		} else {
			for (var i = 1; i <= 28; i++)
				day.options.add(new Option(i, i));
		}
	}
	function checkForm() {
		if (form1.snum.value.length == 0) {
			alert("请输入该鞋的序列号！");
			form1.snum.focus();
			return false;
		}
		if (form1.sname.value.length == 0) {
			alert("请输入该鞋的名称！");
			form1.sname.focus();
			return false;
		}
		if (form1.sprice.value.length == 0) {
			alert("请输入该鞋的价格！");
			form1.sprice.focus();
			return false;
		}
		if (form1.sdiscount.value.length == 0) {
			alert("请输入该鞋的折扣！");
			form1.sdiscount.focus();
			return false;
		}
		if (form1.sproducer.value.length == 0) {
			alert("请输入该鞋的生产商！");
			form1.sproducer.focus();
			return false;
		}
		if (form1.scolor.value.length == 0) {
			alert("请输入该鞋的颜色！");
			form1.scolor.focus();
			return false;
		}
		if (form1.stimessold.value.length == 0) {
			alert("请输入该鞋所卖出的次数！");
			form1.stimessold.focus();
			return false;
		}
		if (form1.sintegral.value.length == 0) {
			alert("请输入该鞋的积分倍数！");
			form1.sintegral.focus();
			return false;
		}
	}
	function saveshoes() {
		var ss = document.getElementById("form2");
		if (confirm("确认添加新鞋信息?")) {
			ss.submit();
		}
	}
	// 复选框全选方法
	function SetChecked(boxname) {
		f = document.form1;
		for (i = 0; i < f.elements.length; i++) {
			if (f.elements[i].name == boxname) {
				f.elements[i].checked = true;
			}
		}
	}
	// 复选框反选方法
	function SetReverseChecked(boxname) {
		f = document.form1;
		for (i = 0; i < f.elements.length; i++) {
			if (f.elements[i].name == boxname) {
				if (f.elements[i].checked == true) {
					f.elements[i].checked = false;
				} else {
					f.elements[i].checked = true;
				}
			}
		}
	}
	function checkCount(sc) {
		var sv = document.getElementById(sc.id + "inp");
		var s = document.getElementById(sc.id);
		if (s.checked == true) {
			sv.style.display = "block";
		} else {
			sv.style.display = "none";
		}
	}
	// 复选框全不选方法
	function SetUnChecked(boxname) {
		f = document.form1;
		for (i = 0; i < f.elements.length; i++) {
			if (f.elements[i].name == boxname) {
				f.elements[i].checked = false;
			}
		}
	}

	window.onload = function() {
		fillYear();
	};
</script>
</head>


<!--replace checkbox_name with the name of checkbox you want to select -->


<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="8" rowspan="3" background="back/images/shadow.gif"><br></td>
			<td width="943" height="30" valign="middle"
				background="back/images/table_bg001.gif">&nbsp;&nbsp; <img
				src="back/images/b_sing.gif" width="12" height="12"
				align="absmiddle" />&nbsp;<font color="#999999">&nbsp;&nbsp;
					提示信息及功能说明:添加一种新的鞋</font></td>
		</tr>
		<!----------------------表格标题部分------------------------------>
		<tr>
			<td height="580" valign="top"
				background="back/images/table_bg001.gif" style="padding: 5px;">
				<table width="100%" border="0" cellspacing="1" cellpadding="0"
					align="center">
					<tr>
						<td colspan="5"><table width="100%" border="0"
								cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%"><img
										src="back/images/b_table_header_left.gif" width="58"
										height="31" /></td>
									<td width="92%" background="back/images/b_table_title_bg.gif">
										<div
											style="text-align: center; font: 12px; color: #FFF; font-weight: bold;">
											添加一种新的鞋</div>
									</td>
									<td width="2%"><img
										src="back/images/b_table_header_right.gif" width="58"
										height="31" /></td>
								</tr>
							</table></td>
					</tr>
					<tr>
						<td align="center"><br /> <br /> <br />
							<form id="form2" name="form1"
								action="addShoes.do" method="post"
								enctype="multipart/form-data" onSubmit="return checkForm();">
								<table class="wwFormTable">
									<table width="500" border="0" align="center" cellpadding="0"
										cellspacing="1">
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">鞋子类型：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<select name="tid" id="tid">

													<option value="1">高跟鞋</option>

													<option value="2">篮球鞋</option>

													<option value="3">网球鞋</option>

													<option value="4">足球鞋</option>

													<option value="5">跑步鞋</option>

													<option value="6">板鞋</option>

													<option value="7">凉鞋</option>

													<option value="8">拖鞋</option>

											</select>
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">鞋子品牌：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<select name="bid" id="bid">

													<option value="1">耐克</option>

													<option value="2">阿迪达斯</option>

													<option value="3">匡威</option>

													<option value="4">李宁</option>

													<option value="5">鸿星尔克</option>

													<option value="6">彪马</option>

													<option value="7">美津浓</option>

													<option value="8">361°</option>

													<option value="9">安踏</option>

													<option value="10">达芙妮</option>

													<option value="11">卡佛儿</option>

													<option value="12">千百度</option>

													<option value="13">巴迪</option>

													<option value="14">百丽</option>

											</select>
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">序列号：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="snum" id="snum" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">鞋子名称：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="sname" id="sname" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">鞋子价格：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="sprices" id="sprices" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30" height="30"
												background="back/images/b_table_header.gif">现价：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="sdiscount" id="sdiscount" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">生产商：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="sproducer" id="sproducer" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">男女款式：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="radio" name="sgender" id="sgender1" value="女"
												checked="checked">女 <input type="radio"
												name="sgender" id="sgender2" value="男">男
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">颜色：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="scolor" id="scolor" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">相关信息：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="sinfo" id="sinfo" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">卖出次数：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="stimessold" id="stimessold" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">详细信息：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="sdetail" id="sdetail" />
											</td>
										</tr>
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">积分：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="text" name="sintegral" id="sintegral" />
											</td>
										</tr><!-- 
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">状态：</td>
											<td height="30" background="back/images/b_table_header.gif">
												<input type="checkbox" name="sdelete" id="sdelete"
												checked="checked" value="0" />
											</td>
										</tr> -->
										<tr>
											<td align="right" height="30"
												background="back/images/b_table_header.gif">选择尺寸:<br />
												<p>&nbsp;</p> <a href="javascript:;"
												onclick="SetChecked('chk');return false;"><font
													color="black">全选</font></a>&nbsp;&nbsp;<br />
												<p>&nbsp;</p> <a href="javascript:;"
												onclick="SetReverseChecked('chk');return false;"><font
													color="black">反选</font></a>&nbsp;&nbsp;<br />
												<p>&nbsp;</p> <a href="javascript:;"
												onclick="SetUnChecked('chk');return false;"><font
													color="black">清空</font></a>&nbsp;&nbsp;
											</td>
											<td height="30" background="back/images/b_table_header.gif">

												<input type="checkbox" name="chk" id="1"
												onclick="checkCount(this)" value="1" />&nbsp;35.0 &nbsp;num:
												<input name="inp" id="1inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="2"
												onclick="checkCount(this)" value="2" />&nbsp;36.0 &nbsp;num:
												<input name="inp" id="2inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="3"
												onclick="checkCount(this)" value="3" />&nbsp;37.0 &nbsp;num:
												<input name="inp" id="3inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="4"
												onclick="checkCount(this)" value="4" />&nbsp;38.0 &nbsp;num:
												<input name="inp" id="4inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="5"
												onclick="checkCount(this)" value="5" />&nbsp;39.0 &nbsp;num:
												<input name="inp" id="5inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="6"
												onclick="checkCount(this)" value="6" />&nbsp;40.0 &nbsp;num:
												<input name="inp" id="6inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="7"
												onclick="checkCount(this)" value="7" />&nbsp;41.0 &nbsp;num:
												<input name="inp" id="7inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="8"
												onclick="checkCount(this)" value="8" />&nbsp;42.0 &nbsp;num:
												<input name="inp" id="8inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="9"
												onclick="checkCount(this)" value="9" />&nbsp;43.0 &nbsp;num:
												<input name="inp" id="9inp" value="0" style="display: none;" /><br />

												<input type="checkbox" name="chk" id="10"
												onclick="checkCount(this)" value="10" />&nbsp;44.0
												&nbsp;num: <input name="inp" id="10inp" value="0"
												style="display: none;" /><br /> <input type="checkbox"
												name="chk" id="11" onclick="checkCount(this)" value="11" />&nbsp;45.0
												&nbsp;num: <input name="inp" id="11inp" value="0"
												style="display: none;" /><br /> <input type="checkbox"
												name="chk" id="12" onclick="checkCount(this)" value="12" />&nbsp;46.0
												&nbsp;num: <input name="inp" id="12inp" value="0"
												style="display: none;" /><br /> <input type="checkbox"
												name="chk" id="13" onclick="checkCount(this)" value="13" />&nbsp;47.0
												&nbsp;num: <input name="inp" id="13inp" value="0"
												style="display: none;" /><br /> <input type="checkbox"
												name="chk" id="14" onclick="checkCount(this)" value="14" />&nbsp;48.0
												&nbsp;num: <input name="inp" id="14inp" value="0"
												style="display: none;" /><br />

											</td>
										</tr>
										<tr>
										<tr>
											<td class="tdLabel"><label for="uploadImage"
												class="label">上传图片:</label></td>
											<td><input type="file" name="uploadImage" value=""
												id="uploadImage" /></td>
										</tr>

										</tr>
										<tr>
											<td height="30" colspan="2"
												background="back/images/b_table_header.gif"><input
												value="确认添加" type="button" onclick="saveshoes()" /></td>
										</tr>
									</table>
								</table>
							</form></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>