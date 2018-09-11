 /*----------------------------------------------------------------------*/
function IFrameResize(){ 
 //alert(this.document.body.scrollHeight); //弹出当前页面的高度
 var obj = parent.document.getElementById("main_subFrame");  //取得父页面IFrame对象
 //alert(obj.height); // 弹出父页面中IFrame中设置的高度
 obj.height = this.document.body.scrollHeight+20;  //调整父页面中IFrame的高度为此页面的高 
}
 
window.onload = function(){ 
	IFrameResize();
}

/*-------------------------------*/