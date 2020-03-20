/*一部分*/
var i=0;
var LIWIDTH=1200;
var DURATION=500;
var LICOUNT=4;
var ulImg=document.getElementById("ul-img");
var ulIndex=document.getElementById("ul-index");
var lis=ulIndex.children;
function moveTo(to){
	if(to==undefined){
		to=i+1;
	}
	if(i==0){
		if(to>i){
			ulImg.className="transition";
		}else{
		    ulImg.className="";
			ulImg.style.marginLeft=-LIWIDTH*LICOUNT+"px";
			setTimeout(function(){
				moveTo(LICOUNT-1);
			},100);
			return;
    }
	}
	i=to;
	ulImg.style.marginLeft=-i*LIWIDTH+"px";
	for(var li of lis){
		li.className="";
	}
	//console.log(i);
	if(i==LICOUNT){
		i=0;
		setTimeout(function(){
			ulImg.className="";
			ulImg.style.marginLeft=0;
		},DURATION)
	}
	lis[i].className="active";
}
/*二部分*/
var interval=3000;
var timer=setInterval(function(){
	moveTo()
},3000);
var banner=document.getElementById("banner");
banner.onmouseover=function(){
	clearInterval(timer);
}
banner.onmouseout=function(){
	timer=setInterval(function(){
	moveTo()},3000);
}
/*三部分*/
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
				},DURATION)
			}
		}
	}
}