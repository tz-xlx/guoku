//第一部分左右移动
var i=0;
var LIWIDTH=900;
var LICOUNT=6;
var DURATION=500;
//获得ul
var ulImgs=document.getElementById("ul-imgs");
//获得包含小圆点的ul
var ulIndex=document.getElementById("ul-index");
//获得小圆点所在列表的元素
var lis=ulIndex.children;
//定义函数
function moveTo(to){
	//如果用户未定义
	if(to==undefined){
		to=i+1;
	}
	//如果滚动重新从0开始
	if(i==0){
		if(to>i){//向左移动
		ulImgs.className="transition";
		}else{//向右移动
			ulImgs.className="";	
			ulImgs.style.marginLeft=-LIWIDTH*LICOUNT+"px";
			setTimeout(function(){
				moveTo(LICOUNT-1);
			},100);
			return;
		}
	}
	//将表示第几张图片的下标i代表目标位置
	i=to;
	ulImgs.style.marginLeft=-i*LIWIDTH+"px";
	//清除li的class
	for(var li of lis){
		li.className="";
	}
	if(i==LICOUNT){
		i=0;
		setTimeout(function(){
			ulImgs.className="";	
			ulImgs.style.marginLeft=0;
		},DURATION);
	}
	lis[i].className="active";
}
//第二部分 左右按钮
var btnLeft=document.getElementById("btn-left");
var btnRight=document.getElementById("btn-right");
var canClick=true;
btnRight.onclick=function(){
	move(1);
}
function move(n){
	if(canClick){
		moveTo(i+n);
		canClick=false;
		setTimeout(function(){
			canClick=true;
		},DURATION+100);
	}
}
btnLeft.onclick=function(){
	move(-1);
}
//三部分，定时器
var interval=3000;
var timer=setInterval(function(){
		moveTo();
},3000);
var banner=document.getElementById("banner");
banner.onmouseover=function(){
	clearInterval(timer);
}
banner.onmouseout=function(){
	timer=setInterval(function(){
		moveTo();
	},3000);
}
//点击小圆点左右移动
var ulIndex=document.getElementById("ul-index");
var canClick=true;
ulIndex.onclick=function(e){
	if(canClick){
		var li=e.target;
		if(li.nodeName=="LI"){
			if(li.className!=="active"){
				for(var i=0;i<lis.length;i++){
					if(lis[i]==li){
							break;
					}
				}
				moveTo(i);
				setTimeout(function(){
					canClick=true;
				},DURATION);
			}
		}
	}
}