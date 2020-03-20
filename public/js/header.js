
$(function(){
	//请求页头片段
	$.ajax({
		url:"header.html",
		type:"get",
		success:function(result){
			//console.log(result);
			//用片段创建新的<header>元素，替换现有<header id="header">元素
			$(result).replaceAll("#header");
			//并自动添加header.css到页面
			$(`<link rel="stylesheet" href="css/header.css">
			<link rel="stylesheet" href="css/two.css">`).appendTo("head");
				$(`<script src="js/header-gn.js"></script>`).appendTo("body");
      //绑定事件处理函数
			$("#a1").click(function(){
				var id=$(this).prev().val();
				//console.log(id);
				window.location.href=`gk.products.html?wd=${id}`
			})

			var n=localStorage.getItem("uname");
			var plogin=document.getElementById("plogin")
			var login=document.getElementById("login")
			var maskk=document.getElementById("maskk");
			var preg=document.getElementById("preg");
			//console.log(plogin,login,mask,preg);
			if(n!==null){
        plogin.innerHTML=`欢迎回来${n}`;
				preg.innerHTML="";
			}
			else{
				plogin.onclick=function(){
					//获取body
					maskk.style.display="block";
					login.style.display="block";
				}
			}
			var a=document.getElementById("login-tit-a");
      if(a){
				a.onclick=function(){
					login.style.display="none";
					maskk.style.display="none";
				}
			}
		}
	})
})
