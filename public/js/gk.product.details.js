//数量加减的js
//找到触发事件的元素
var as=document.querySelectorAll(
	"#gd_des_num>li>a"
);
//绑定事件
for(var a of as){
	a.onclick=function(){
		var a=this;
		//找到要修改的元素
		var input=a.parentNode.children[1];
		//修改元素
		var n=parseInt(input.value);
		if(a.innerHTML=="+"){
			n++;
		}else if(n>1){
			n--;
		}
		input.value=n;
	}
}