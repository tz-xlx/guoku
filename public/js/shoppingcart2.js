$(function(){
	var n=localStorage.getItem("uname");
	//console.log(n)//dingding
	//如何存储用户id到浏览器
	//console.log(uid);
	if(n==null){
		alert("请登录");
	}else{
		var user_id=localStorage.getItem("uid");//1
	//	console.log(user_id)
		$.ajax({
			url:"http://127.0.0.1:3000/shoppingcart",
			type:"post",
			data:{user_id},
			dataType:"json",
			success:function(result){
				//console.log(result.data);//{code: 0}
				if(result.code==1){	
					var html="";
					for(var res of result.data){
						html+=`<li id="container_all_li" data-toggle=${res.product_id}>
							<ul class="container_obj clear">
							<li class="ob_inp">
							<input type="checkbox">
							</li>
							<li class="ob_img">
							<a href="${res.href}">
							<img src="${res.pic}" alt="">
							</a>
							</li>
							<li class="ob_name">
							<a href="${res.href}">
							${res.title}
							</a>
							</li>
							<li class="ob_dj">${res.price.toFixed(2)}</li>	
							<li class="ob_dj">${res.price.toFixed(2)}</li>	
							<li class="ob_sl">
								<span class="ob_span">
									<a href="javascript:;">-</a>
									<input type="text" value="${res.count}">
									<a href="javascript:;">+</a>
								</span>
							</li>
							<li class="ob_je">
								12.00
							</li>
							<li class="ob_del">
								<a href="javascript:;">删除</a>
							</li>
							</ul>
							</li>`	
						}	
						$("#container_all").html(html);	
			
				//  获取当前商品的id,用户id,value
					var li=document.getElementById("container_all_li");
					var pid=li.getAttribute("data-toggle");
				//数量
				//触发事件的元素
				var as=document.querySelectorAll("span.ob_span>a");
				//console.log(as);
					//绑定事件处理函数
					for(var a of as){
						a.onclick=function(){
							var a=this;
							//alert("疼");
							//查找修改的元素
							var input=a.parentNode.children[1];
							//	console.log(input);
							var n=parseInt(input.value);
							if(a.innerHTML=="+"){
								n++;
							}else if(n>1){
								n--;
							}
							input.value=n;
							//计算总的数量
							var inpts=document.querySelectorAll("span.ob_span>input");
							//console.log(inpts);
							var span1=document.getElementById("count");
							var scount=0;
							for(var inpt of inpts){
								scount+=parseInt(inpt.value);
							}
							span1.innerHTML=scount;
							//	计算小计
							var li_tot=a.parentNode.parentNode.nextElementSibling;
							//console.log(li_tot);
							var li=a.parentNode.parentNode.previousElementSibling;
							//console.log(li);
							var price=parseFloat(li.innerHTML);
							var tot=price*n;
							li_tot.innerHTML=`${tot.toFixed(2)}`;
							//计算总计
							//获得每个小计
							var li_tots=document.querySelectorAll("ul.container_obj>li.ob_je");
							//console.log(li_tots);
							//获得总计的元素
							var li_total=document.querySelector("ul.container_tf>#total");
							//console.log(li_total);
							var total=0;
							for(var li_tot of li_tots){
								total+=parseFloat(li_tot.innerHTML);
							}
							li_total.innerHTML=`￥${total.toFixed(2)}`;
								//发送ajax
							$.ajax({
								url: "http://127.0.0.1:3000/shoppingcart",
								type: "put",
								data: {n,pid,user_id},
								dataType: "json",
								success: function(result) {
									console.log(result);
								}
							})
						}
					}
					//删除
					//全选框
					//找到上面的全选的元素，当点击上面的，下面的全部选中
					(function(){
						var all=document.getElementById("co_inp");
						//console.log(all);
						var cbAll=all.children[0];
						//console.log(cbAll);
						//找到中间的input
						var cbs=document.querySelectorAll("ul.container_obj>li>input");
						//console.log(cbs);
						//找到最下面的input
						var all2=document.getElementById("ctf_inps");
						//console.log(all2);
						var cbAll1=all2.children[0];
						//console.log(cbAll1);
						//当点击上面的全选的input时，下面的全选中
						cbAll.onclick=function(){
							for(var cb of cbs){
								var cbAll=this;
								cb.checked=cbAll1.checked=cbAll.checked;
							}
						}
						//当点击中间的input时
						for(var cb of cbs){
							cb.onclick=function(){
								var cb=this;
								if(cb.checked==false){
									cbAll.checked=cbAll1.checked=false;
								}else{//否则选中上面的和下面的也不一定选中
								//找到未选中的
									var unchecked=document.querySelector(
									"ul.container_obj>li>input:not(:checked)"
										);
									if(unchecked===null){
									cbAll1.checked=cbAll.checked=true;
									}
								}
							}
						}
						var li=document.getElementById("container_all_li");
						var pid=li.getAttribute("data-toggle");
						console.log(pid);
					//找到每个商品后面的删除按钮
						var a_ds=document.querySelectorAll(
							".ob_del>a");
						//console.log(a_d);
						for(var a of a_ds){
							a.onclick=function(){
								var a=this;
								var inp=a.parentNode.parentNode.children[0].children[0];
								//console.log(inp);
								if(inp.checked==true){
									//console.log(pid,user_id);
									a.parentNode.parentNode.innerHTML="";
									var total=document.getElementById("total");
									var count=document.getElementById("count");
									//console.log(total,count);
									total.innerHTML=`￥${0.00}`;
									count.innerHTML="0";
									$.ajax({
										url: "http://127.0.0.1:3000/shoppingcart",
										type: "delete",
										data: {pid,user_id},
										dataType: "json",
										success: function(result) {
											console.log(result);
										}
									})
								}else{
									return;
								}
							}
						}
						//当点击下面的全选的input时，下面的全选中
						cbAll1.onclick=function(){
							for(var cb of cbs){
								var cbAll1=this;
								cb.checked=cbAll.checked=cbAll1.checked;
							}
						}
						//找到选择全选后的删除按钮
						var de_all=document.getElementById("de_all");
						de_all.onclick=function(){
							if(cbAll.checked==true&&cbAll1.checked==true){
								//获取中间商品整个的内容 找到包裹整个中间商品的元素
								var container_all=document.getElementById("container_all");
								container_all.innerHTML="";
								$.ajax({
										url: "http://127.0.0.1:3000/shoppingcart",
										type: "delete",
										data: {user_id},
										dataType: "json",
										success: function(result) {
											console.log(result);
										}
									})
							}
							else{
								return;
							}
						}
					})();
				}
			}
		})
	}
})