function login(){
	var $uname=uname.value;
  var $upwd=upwd.value
	var txtName=document.getElementById("uname");
	var txtPwd=document.getElementById("upwd");
	var div1=txtName.nextElementSibling;
	var div2=txtPwd.nextElementSibling;
	//创建异步对象
	var xhr=new XMLHttpRequest();
	//绑定监听
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200){
			var result=xhr.responseText;
			var result=JSON.parse(result);
			console.log(result);
			if(result.code==1){
				localStorage.setItem("uname",$uname);
				localStorage.setItem("uid",result.data);
				window.location.href="http://127.0.0.1:3000/index.html";
				alert("登录成功");
			}else if(result.code==0){
				div1.className="vali_fail";
				div2.className="vali_fail";
				//alert("用户名或密码错误");
			}else{
					div1.className="vali_fail";
					div2.className="vali_fail";
			}
    }
  }
	//创建请求
	xhr.open("get","/mypro/v2/login?uname="+$uname+"&upwd="+$upwd,true);
	//发送请求
	xhr.send();
}
