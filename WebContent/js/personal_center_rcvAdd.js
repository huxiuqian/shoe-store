
/*----------------------------------------------------------------------------------------------------------------------------*/
//收获地址管理页面的的JS
	condition4=true;
//验证函数
function checkrecname(){
	//验证昵称长度
	if(form1.recreceiver.value.length==0){
		document.getElementById("recnamechk").innerHTML ="<img src='images/personal_center_rcvAdd/err.png'>" + " 请输入正确的收件人姓名";
		ondition1=false;
	}
	else{
		document.getElementById("recnamechk").innerHTML ="<img src='images/personal_center_rcvAdd/ok.png'>";
		condition1=true;
	}
	checkall();
}
function checkstreet(){
	//验证用户名长度
	if(form1.recstreet.value.length==0){
		document.getElementById("streetchk").innerHTML ="<img src='images/personal_center_rcvAdd/err.png'>" + " 请输入正确的收货地址";
		condition2=false;
	}
	else{
		document.getElementById("streetchk").innerHTML ="<img src='images/personal_center_rcvAdd/ok.png'>";
		condition2=true;
	}
	checkall();
}
function checkpostcode(){
	//验证密码的长度
	var recpostcodePattern = /^[0-9]{1,}$/;   
	if(form1.recpostcode.value.length!=6 || !form1.recpostcode.value.match(recpostcodePattern)){
		document.getElementById("postcodechk").innerHTML ="<img src='images/personal_center_rcvAdd/err.png'>" + " 请输入6位正确的邮编号码";
		condition3=false;
	}
	else{
		document.getElementById("postcodechk").innerHTML ="<img src='images/personal_center_rcvAdd/ok.png'>";
		condition3=true;
	}
	checkall();
}
function checkphone(){

	var formPattern = /^[0-9]{1,}$/;   
	if(form1.districttel.value.length >4 || form1.districttel.value.length<3 || form1.tel.value.length<7 || form1.tel.value.length>8 ||!form1.districttel.value.match(formPattern) ||!form1.tel.value.match(formPattern))
	{
		document.getElementById("telchk").innerHTML ="<img src='images/personal_center_rcvAdd/err.png'>" + " 请输入正确的区号和电话号码";
		condition4=false;
	}
	else if(form1.districttel.value.length!=0&&form1.tel.value.length!=0) {
		document.getElementById("telchk").innerHTML ="<img src='images/personal_center_rcvAdd/ok.png'>";
		condition4=true;
	}
	checkall();
}
function checkmobile(){
	
	
	var usertelPattern = /^[0-9]{1,}$/;  
		if(form1.recmobile.value.length!=11 || !form1.recmobile.value.match(usertelPattern)){
		document.getElementById("mobilechk").innerHTML ="<img src='images/personal_center_rcvAdd/err.png'>" + " 请输入11位正确的手机号码";
		condition5=false;
	}
	else{
		document.getElementById("mobilechk").innerHTML ="<img src='images/personal_center_rcvAdd/ok.png'>";
		condition5=true;
	}
	checkall();
}
function checkall(){
	//检查所有条件
	form1.button.disabled=true;
	if(condition1 && condition2 && condition3 && condition4 && condition5)
		form1.button.disabled=false;
}

//省份级联

//省数组
var arrrecprovince = new Array("北市","天津","上海","安徽","江西","辽宁","吉林","黑龙江","河北","山西","河南","山东");
//市数组存放地区
var arrreccity = new Array(
	new Array("北京"),
	new Array("天津"),
	new Array("上海"),
	new Array("合肥","芜湖","蚌埠","淮南","马鞍山","淮北","铜陵","安庆","黄山","滁州","阜阳","宿州","巢湖","六安","亳州","池州","宣城"),
	new Array("南昌","萍乡","九江","新余","鹰市","赣州","吉安","宜春","抚州","上饶"), 
	new Array("沈阳","大连","鞍山","抚市","本溪","丹东","锦州","葫芦岛","营口","盘锦","阜新","辽阳","铁岭","朝阳","凌源","北票"),
	new Array("长春","吉林","四平","辽源","通化","白山","延边朝鲜族自治州","白城","松原"),
	new Array("哈尔滨","齐齐哈市","鹤岗","双鸭山","鸡西","大庆","伊春","牡丹江","佳木","七台河","黑河","绥化"),
	new Array("石家庄","唐山","秦皇岛","邯郸","邢台","保定","张家口","承德","廊坊","衡水","沧州"),
	new Array("太原","大同","阳泉","长治","晋城","朔州","晋中","运城","忻州","临汾","吕梁地区"),
	new Array("郑州","开封","洛阳","平顶山","焦作","鹤壁","新乡","安阳","濮阳","许昌","漯河","三门峡","南阳","商丘"),
	new Array("济南市","青岛市","淄博","枣庄","东营","潍坊","烟台","威海","济宁","泰安","日照","临沂","菏泽")
);
//区数组
var arrrecdistrict = new Array(
	new Array("海淀","朝阳","宣武"),
	new Array("南开","河西","河东","河北"),
	new Array("黄浦","闵行","浦东","新区","普陀","长宁","奉贤","松江","嘉定","静安"),
	new Array("包河区","包河区","包河区","包河区","包河区"),
	new Array("包河区","芜湖市","蚌埠市","淮南市","马鞍山市","淮北市","铜陵市","安庆市","黄山市","滁州市","阜阳市","宿州市","巢湖市","六安市","亳州市","池州市","宣城市"),
	new Array(" 南昌市","萍乡市","九江市","新余市","鹰潭市","赣州市","吉安市","宜春市","抚州市","上饶市"), 
	new Array("沈阳市","大连市","鞍山市","抚顺市","本溪市","丹东市","锦州市","葫芦岛市","营口市","盘锦市","阜新市","辽阳市","铁岭市","朝阳市","凌源市","北票市"),
	new Array("长春市","吉林市","四平市","辽源市","通化市","白山市","延边朝鲜族自治州","白城市","松原市"),
	new Array("哈尔滨市","齐齐哈尔市","鹤岗市","双鸭山市","鸡西市","大庆市","伊春市","牡丹江市","佳木斯市","七台河市","黑河市","绥化市"),
	new Array("石家庄市","唐山市","秦皇岛市","邯郸市","邢台市","保定市","张家口市","承德市","廊坊市","衡水市","沧州市"),
	new Array("太原市","大同市","阳泉市","长治市","晋城市","朔州市","晋中市","运城市","忻州市","临汾市","吕梁地区"),
	new Array("郑州","开封","洛阳","平顶山","焦作","鹤壁","新乡","安阳","濮阳","许昌","漯河","三门峡","南阳","商丘"),
	new Array("济南市","青岛市","淄博","枣庄","东营","潍坊","烟台","威海","济宁","泰安","日照","临沂","菏泽")
);

//填充省
function fillProvince(){
	var recprovince = document.getElementById("recprovince");  //获取省市的下拉列表
	for(var i=0; i<arrrecprovince.length; i++){
		recprovince.options.add(new Option(arrrecprovince[i],arrrecprovince[i]));  //循环添加项目
	}
	fillCity();
}
//填充地区
function fillCity(){
	var recprovince = document.getElementById("recprovince");  //获取省的下拉列表
	var reccity = document.getElementById("reccity");  //获取地区的下拉列表
	reccity.options.length = 0;  //清空下拉框
	var n = recprovince.selectedIndex;
	for(var i=0; i<arrreccity[n].length; i++){
		reccity.options.add(new Option(arrreccity[n][i],arrreccity[n][i]));
	}
	fillDistrict();
}
function fillDistrict(){
	
	var recprovince = document.getElementById("recprovince");
	var reccity = document.getElementById("reccity");
	var recdistrict = document.getElementById("recdistrict");
	
	recdistrict.options.length=0;
	var n = recprovince.selectedIndex;
	var m = reccity.selectedIndex;
	var pos = countpos(n,m);
	for(var i=0; i<arrrecdistrict[m].length; i++){
		recdistrict.options.add(new Option(arrrecdistrict[pos][i],arrrecdistrict[pos][i]));
	}
	
}
function countpos(n,m){
	pos = 0;
	for(var i = 0; i < 	n; i++){
		pos += arrreccity[i].length;
	}
	pos += m;
	return pos;
}

/*-------------------------------------------------------------------------------------------------------------------------*/
function IFrameResize(){ 
 //alert(this.document.body.scrollHeight); //弹出当前页面的高度
 var obj = parent.document.getElementById("main_subFrame");  //取得父页面IFrame对象
 //alert(obj.height); // 弹出父页面中IFrame中设置的高度
 obj.height = this.document.body.scrollHeight+50;  //调整父页面中IFrame的高度为此页面的高 
}

/*-----------------------------------------------------------------------------------------------------------------------*/
window.onload = function(){
	fillProvince();
	IFrameResize();
	
	var recprovince = document.getElementById("recprovince");
	var reccity = document.getElementById("reccity");
	var recdistrict = document.getElementById("recdistrict");
	var old1 = document.getElementById("old1").value;
	var old2 = document.getElementById("old2").value;
	var old3 = document.getElementById("old3").value;
	
	for(var i=0; i<recprovince.options.length;i++){
		
		if(old1==recprovince.options[i].value){
			recprovince.options[i].selected = "selected";
			fillCity();
			break;
		}
	}
	for(var i=0; i<reccity.options.length;i++){
		if(old2==reccity.options[i].value){
			reccity.options[i].selected = "selected";
			fillDistrict();
			break;
		}
	}
	for(var i=0; i<recdistrict.options.length;i++){
		if(old3==recdistrict.options[i].value){
			recdistrict.options[i].selected = "selected";
			fillDistrict();
			
			return;
		}
	}
};