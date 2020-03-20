/*$(function(){
	$.ajax({
		url:"http://localhost:3000/reg",
			type:"post",
			dataType:"json",
			success:function(result){
				console.log(result);
			}
		})
    })*/
var uuuname=false; //验证账号密码格式是否错误的开关
var uuupwd=false;
var chebox=false;
var txtUname = document.getElementById("uname");
var txtUpwd = document.getElementById("upwd");
txtUpwd.onfocus = txtUname.onfocus = function() {
    var span = this.nextElementSibling;
    span.className = "";
    //console.log(1111111111111111)
}   
txtUname.onblur = function() {
    var reg = /^\w{3,8}$/;
    var span = this.nextElementSibling;
    if (reg.test(txtUname.value) == true) {
        span.className = "infor";
        uuuname=true;
        // console.log(1111111111111111)
    } else {
        span.className = "coat";
        uuuname=false;
    }
}  
txtUpwd.onblur = function() {
        var reg = /^\d{6}$/;
    var span = this.nextElementSibling;
    console.log(span)
    if (reg.test(txtUpwd.value) == true) {
        span.className = "infor";
        uuupwd=true;
    } else {
        span.className = "coat";
        uuupwd=false;
    }
}
var chb=document.getElementById("chb");
//console.log(chb);
//绑定事件
chb.onclick=function(){
	var chb=this;
//查找要修改的元素
	var a=document.querySelector(
		"tbody>tr:last-child>td>a"
	)
	//console.log(a);
	//修改元素
	if(chb.checked==true){
        a.className="copen";
        chebox=true;
  }else{
        a.className="cclose";
        chebox=false;
	}
}         
function reg() {
//console.log(uuupwd,uuuname)
   if(   !(uuupwd&&uuuname&&chebox)    ){
        //alert("你的密码/账号不符合要求")
        return; 
    }
    var $uname = uname.value;
    var $upwd = upwd.value;
    //创建异步对象
    var xhr = new XMLHttpRequest();
    //绑定监听
//问题：数据库重复插入数据
    xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var result = xhr.responseText;
                result=JSON.parse(result)
                console.log(typeof result);
                console.log(result.code); 
                //查找触发事件的元素
                if (result.code>0) {
                    localStorage.setItem("uname",$uname);
                    localStorage.setItem("upwd",$upwd);
                    //localStorage.setItem("uid",result.data);
                    window.location.href = "http://127.0.0.1:3000/index.html";
                    //alert("注册成功");
                } else {
                    alert("注册失败");
                }
            }
    }
        //创建请求
    xhr.open("post", "/mypro/v2/reg", true);
    //发送请求	
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    var formdata = "uname=" + $uname + "&upwd=" + $upwd;
    //console.log(formdata)
    xhr.send(formdata);
}