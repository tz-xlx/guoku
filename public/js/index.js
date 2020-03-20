(function(){//向服务器接口localhost:3000/index发送ajax请求，获得返回的数组对象
	ajax({
		url:"http://127.0.0.1:3000/index",
		type:"get",
		dataType:"json"//让ajax自动将json字符串转为对象，可直接使用
	})//当ajax请求完成后
	.then(function(result){
		//console.log(result);
	//第一层楼
	// var p1=result[0];
	// var p2=result[1];
	// var p3=result[2];
	// var p4=result[3];
	// var p5=result[4];
	// var p6=result[5];
	var html="";
	for(var i=0;i<6;i++){
		html+=`<div class="produ-box">
		<div class="produ-box-content">
			<a class="produ-img" href="${result[i].href}">
				<img src="${result[i].pic}" alt="">
				<div></div>
			</a>
			<span class="produ-info">${result[i].title}</span>
			<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
			<span class="produ-buy-now"></span>
				<div>
					<p>
						<a class="buy-now-button" href="${result[i].href}">立即查询</a>
					</p>
				</div>
		</div>
		</div>`;
	}
//将填好的html片段追加到页面指定的父元素下
	document.getElementById("ul1").innerHTML=html;
		//dom4步
		//1,查找触发事件的元素	
		 var as=document.querySelectorAll(
				"#tab>li>[data-toggle=tab]"
		 ); 	//2,绑定事件处理函数
			var i=10;//累积zIndex
		 for(var a of as){
			 a.onmouseover=function(){
				 //3,查找要修改的元素 			
				 var id=this.getAttribute("data-target");
				 var div=document.getElementById(id);
					//修改元素
					div.style.zIndex=i++;
				}
			}
	// var p7=result[6];
	// var p8=result[7];
	// var p9=result[8];
	// var p10=result[9];
	// var p11=result[10];
	// var p12=result[11];
		//将商品的各个属性填充到html片段中
		var html="";
		for(var i=6;i<12;i++){
			html+=`<div class="produ-box">
			<div class="produ-box-content">
				<a class="produ-img" href="${result[i].href}">
					<img src="${result[i].pic}" alt="">
					<div></div>
				</a>
				<span class="produ-info">${result[i].title}</span>
				<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
				<span class="produ-buy-now"></span>
					<div>
						<p>
							<a class="buy-now-button" href="${result[i].href}">立即查询</a>
						</p>
					</div>
			</div>
			</div>`;
		}
//将填好的html片段追加到页面指定的父元素下
		document.getElementById("ul2").innerHTML=html;
		// var p13=result[12];
		// var p14=result[13];
		// var p15=result[14];
		// var p16=result[15];
		// var p17=result[16];
		// var p18=result[17];
		//将商品的各个属性填充到html片段中
		var html="";
		for(var i=12;i<18;i++){
			html+=`<div class="produ-box">
			<div class="produ-box-content">
				<a class="produ-img" href="${result[i].href}">
					<img src="${result[i].pic}" alt="">
					<div></div>
				</a>
				<span class="produ-info">${result[i].title}</span>
				<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
				<span class="produ-buy-now"></span>
					<div>
						<p>
							<a class="buy-now-button" href="${result[i].href}">立即查询</a>
						</p>
					</div>
			</div>
			</div>`;
		}
//将填好的html片段追加到页面指定的父元素下
		document.getElementById("ul3").innerHTML=html;
		// var p19=result[18];
		// var p20=result[19];
		// var p21=result[20];
		// var p22=result[21];
		// var p23=result[22];
		// var p24=result[23];
		//将商品的各个属性填充到html片段中
		var html="";
		for(var i=18;i<24;i++){
			html+=`<div class="produ-box">
			<div class="produ-box-content">
				<a class="produ-img" href="${result[i].href}">
					<img src="${result[i].pic}" alt="">
					<div></div>
				</a>
				<span class="produ-info">${result[i].title}</span>
				<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
				<span class="produ-buy-now"></span>
					<div>
						<p>
							<a class="buy-now-button" href="${result[i].href}">立即查询</a>
						</p>
					</div>
			</div>
			</div>`;
		}
//将填好的html片段追加到页面指定的父元素下
		document.getElementById("ul4").innerHTML=html;
		// var p25=result[24];
		// var p26=result[25];
		// var p27=result[26];
		// var p28=result[27];
		// var p29=result[28];
		// var p30=result[29];
		//将商品的各个属性填充到html片段中
		var html="";
		for(var i=24;i<30;i++){
			html+=`<div class="produ-box">
			<div class="produ-box-content">
				<a class="produ-img" href="${result[i].href}">
					<img src="${result[i].pic}" alt="">
					<div></div>
				</a>
				<span class="produ-info">${result[i].title}</span>
				<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
				<span class="produ-buy-now"></span>
					<div>
						<p>
							<a class="buy-now-button" href="${result[i].href}">立即查询</a>
						</p>
					</div>
			</div>
			</div>`;
		}
//将填好的html片段追加到页面指定的父元素下
	document.getElementById("ul5").innerHTML=html;
 			//第二层楼
 			// var p31=result[30];
 			// var p32=result[31];
			// var p33=result[32];
 			// var p34=result[33];
 			// var p35=result[34];
 			// var p36=result[35];
			//第二个
  (function(){
 	//dom4步
 	//1,查找触发事件的元素	
 	var as=document.querySelectorAll(
 			"#tab1>li>[data-toggle=tab1]"
 	);
		//2,绑定事件处理函数 	var i=10;//累积zIndex
	for(var a of as){
		a.onmouseover=function(){
			//3,查找要修改的元素
 		 var id=this.getAttribute("data-target");
 			var div=document.getElementById(id);
 			//修改元素
 			div.style.zIndex=i++;
		}
 	}
 	})();
 			//将商品的各个属性填充到html片段中
 			var html="";
			for(var i=30;i<36;i++){
				html+=`<div class="produ-box">
 				<div class="produ-box-content">
 					<a class="produ-img" href="${result[i].href}">
 						<img src="${result[i].pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${result[i].title}</span>
 					<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
 								<a class="buy-now-button" href="${result[i].href}">立即查询</a>
 							</p>
 						</div>
 				</div>
 				</div>`;
 			}
 	//将填好的html片段追加到页面指定的父元素下
 			document.getElementById("ul6").innerHTML=html;
 			// var p37=result[36];
 			// var p38=result[37];
 			// var p39=result[38];
 			// var p40=result[39];
			// var p41=result[40];
			// var p42=result[41];
 			//将商品的各个属性填充到html片段中
 			var html="";
 			for(var i=36;i<42;i++){
 				html+=`<div class="produ-box">
 				<div class="produ-box-content">
 					<a class="produ-img" href="${result[i].href}">
						<img src="${result[i].pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${result[i].title}</span>
					<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
 					<span class="produ-buy-now"></span>
 						<div>
 							<p>
 								<a class="buy-now-button" href="${result[i].href}">立即查询</a>
 							</p>
 						</div>
 				</div>
 				</div>`;
 			}
 	//将填好的html片段追加到页面指定的父元素下
 			document.getElementById("ul7").innerHTML=html;
 			// var p43=result[42];
 			// var p44=result[43];
 			// var p45=result[44];
 			// var p46=result[45];
 			// var p47=result[46];
		// var p48=result[47];
 			//将商品的各个属性填充到html片段中
 			var html="";
 			for(var i=42;i<48;i++){
 				html+=`<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${result[i].href}">
 						<img src="${result[i].pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${result[i].title}</span>
 					<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
 					<span class="produ-buy-now"></span>
 						<div>
 							<p>
 								<a class="buy-now-button" href="${result[i].href}">立即查询</a>
 							</p>
 						</div>
 				</div>
 				</div>`;
 			}
 	//将填好的html片段追加到页面指定的父元素下
 			document.getElementById("ul8").innerHTML=html;
	
 			// var p49=result[48];
 			// var p50=result[49];
			// var p51=result[50];
 			// var p52=result[51];
			// var p53=result[52];
 			// var p54=result[53];
 			//将商品的各个属性填充到html片段中
 			var html="";
 			for(var i=48;i<54;i++){
 				html+=`<div class="produ-box">
 				<div class="produ-box-content">
 					<a class="produ-img" href="${result[i].href}">
 						<img src="${result[i].pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${result[i].title}</span>
 					<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
 					<span class="produ-buy-now"></span>
						<div>
 							<p>
 								<a class="buy-now-button" href="${result[i].href}">立即查询</a>
							</p>
 						</div>
 				</div>
 				</div>`;
 			}
 	//将填好的html片段追加到页面指定的父元素下
 			document.getElementById("ul9").innerHTML=html;
	
 			// var p55=result[54];
 			// var p56=result[55];
 			// var p57=result[56];
 			// var p58=result[57];
 			// var p59=result[58];
 			// var p60=result[59];
			//将商品的各个属性填充到html片段中
			var html="";
			for(var i=54;i<60;i++){
 				html+=`<div class="produ-box">
 				<div class="produ-box-content">
 					<a class="produ-img" href="${result[i].href}">
 						<img src="${result[i].pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${result[i].title}</span>
				<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
					<div>
 							<p>
 								<a class="buy-now-button" href="${result[i].href}">立即查询</a>
 							</p>
 						</div>
 				</div>
 				</div>`;
 			}
 	//将填好的html片段追加到页面指定的父元素下
 			document.getElementById("ul10").innerHTML=html;

 				//第三层楼
 				// var p61=result[60];
 				// var p62=result[61];
 				// var p63=result[62];
 				// var p64=result[63];
 				// var p65=result[64];
 				// var p66=result[65];
 					//第三个
  (function(){
 	//dom4步
 	//1,查找触发事件的元素	
  var as=document.querySelectorAll(
 	 "#tab2>li>[data-toggle=tab2]"
 	);
		//2,绑定事件处理函数
 	var i=10;//累积zIndex
 	for(var a of as){
 	 a.onmouseover=function(){
 			//3,查找要修改的元素
 			var id=this.getAttribute("data-target");
 		 var div=document.getElementById(id);
 		 //修改元素
 		 div.style.zIndex=i++;
 		}
 	}
 })();

 				//将商品的各个属性填充到html片段中
 				var html="";
 				for(var i=60;i<66;i++){
 					html+=`<div class="produ-box">
 					<div class="produ-box-content">
 						<a class="produ-img" href="${result[i].href}">
 							<img src="${result[i].pic}" alt="">
 							<div></div>
 						</a>
 						<span class="produ-info">${result[i].title}</span>
 						<span class="produ-price-info">￥${result[i].price.toFixed(2)}</span>
 						<span class="produ-buy-now"></span>
 							<div>
 								<p>
 									<a class="buy-now-button" href="${result[i].href}">立即查询</a>
 								</p>
 							</div>
 					</div>
 					</div>`;
 				}
 		//将填好的html片段追加到页面指定的父元素下
 				document.getElementById("ul11").innerHTML=html;
		
				var p67=result[66];
 				var p68=result[67];
 				var p69=result[68];
 				//将商品的各个属性填充到html片段中
 				var html=`<div class="produ-box">
 				<div class="produ-box-content">
 					<a class="produ-img" href="${p67.href}">
 						<img src="${p67.pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${p67.title}</span>
 					<span class="produ-price-info">￥${p67.price.toFixed(2)}</span>
				<span class="produ-buy-now"></span>
 						<div>
							<p>
 								<a class="buy-now-button" href="${p67.href}">立即查询</a>
 							</p>
 						</div>
 				</div>
 			</div>
 			<div class="produ-box">
 				<div class="produ-box-content">
 					<a class="produ-img" href="${p68.href}">
 						<img src="${p68.pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${p68.title}</span>
 					<span class="produ-price-info">￥${p68.price.toFixed(2)}</span>
 					<span class="produ-buy-now"></span>
 						<div>
 							<p>
 								<a class="buy-now-button" href="${p68.href}">立即查询</a>
 							</p>
						</div>
 				</div>
 			</div>
			<div class="produ-box">
				 <div class="produ-box-content">
				 	<a class="produ-img" href="${p69.href}">
 						<img src="${p69.pic}" alt="">
 						<div></div>
 					</a>
 					<span class="produ-info">${p69.title}</span>
 					<span class="produ-price-info">￥${p69.price.toFixed(2)}</span>
 					<span class="produ-buy-now"></span>
 						<div>
 							<p>
 								<a class="buy-now-button" href="${p69.href}">立即查询</a>
							</p>
					</div>
 				</div>
 			</div> 
 			<div class="produ-box">
 			<div class="produ-box-content">
 				<a class="produ-img" href="${p68.href}">
 					<img src="${p68.pic}" alt="">
					 <div></div>				
				</a>
 				<span class="produ-info">${p68.title}</span>
 				<span class="produ-price-info">￥${p68.price.toFixed(2)}</span>
 				<span class="produ-buy-now"></span>
 					<div>
						<p>
							<a class="buy-now-button" href="${p68.href}">立即查询</a>
					</p>
 					</div>
			</div>
		</div>
		<div class="produ-box">
		<div class="produ-box-content">
			<a class="produ-img" href="${p68.href}">
				<img src="${p68.pic}" alt="">
				<div></div>
			</a>
			<span class="produ-info">${p68.title}</span>
			<span class="produ-price-info">￥${p68.price.toFixed(2)}</span>
			<span class="produ-buy-now"></span>
				<div>
					<p>
						<a class="buy-now-button" href="${p68.href}">立即查询</a>
					</p>
				</div>
		</div>
	</div>`;
 		//将填好的html片段追加到页面指定的父元素下
				document.getElementById("ul12").innerHTML=html;
		
				var p70=result[69];
				var p71=result[70];
				//将商品的各个属性填充到html片段中
				var html=`<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p70.href}">
						<img src="${p70.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p70.title}</span>
					<span class="produ-price-info">￥${p70.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p70.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p71.href}">
						<img src="${p71.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p71.title}</span>
					<span class="produ-price-info">￥${p71.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p71.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div> 
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p71.href}">
						<img src="${p71.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p71.title}</span>
					<span class="produ-price-info">￥${p71.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p71.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p71.href}">
						<img src="${p71.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p71.title}</span>
					<span class="produ-price-info">￥${p71.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p71.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p71.href}">
						<img src="${p71.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p71.title}</span>
					<span class="produ-price-info">￥${p71.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p71.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p71.href}">
						<img src="${p71.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p71.title}</span>
					<span class="produ-price-info">￥${p71.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p71.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>`;
		//将填好的html片段追加到页面指定的父元素下
				document.getElementById("ul13").innerHTML=html;
		
				var p72=result[71];
				//将商品的各个属性填充到html片段中
				var html=`<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p72.href}">
						<img src="${p72.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p72.title}</span>
					<span class="produ-price-info">￥${p72.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p72.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p72.href}">
						<img src="${p72.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p72.title}</span>
					<span class="produ-price-info">￥${p72.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p72.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p72.href}">
						<img src="${p72.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p72.title}</span>
					<span class="produ-price-info">￥${p72.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p72.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p72.href}">
						<img src="${p72.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p72.title}</span>
					<span class="produ-price-info">￥${p72.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p72.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p72.href}">
						<img src="${p72.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p72.title}</span>
					<span class="produ-price-info">￥${p72.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p72.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p72.href}">
						<img src="${p72.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p72.title}</span>
					<span class="produ-price-info">￥${p72.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p72.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div> `;
		//将填好的html片段追加到页面指定的父元素下
				document.getElementById("ul14").innerHTML=html;
		
				var p73=result[72];
				var p74=result[73];
				var p75=result[74];
				//将商品的各个属性填充到html片段中
				var html=`<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p73.href}">
						<img src="${p73.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p73.title}</span>
					<span class="produ-price-info">￥${p73.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p73.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p74.href}">
						<img src="${p74.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p74.title}</span>
					<span class="produ-price-info">￥${p74.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p74.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p75.href}">
						<img src="${p75.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p75.title}</span>
					<span class="produ-price-info">￥${p75.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p75.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p74.href}">
						<img src="${p74.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p74.title}</span>
					<span class="produ-price-info">￥${p74.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p74.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p75.href}">
						<img src="${p75.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p75.title}</span>
					<span class="produ-price-info">￥${p75.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p75.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p74.href}">
						<img src="${p74.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p74.title}</span>
					<span class="produ-price-info">￥${p74.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p74.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div> `;
		//将填好的html片段追加到页面指定的父元素下
				document.getElementById("ul15").innerHTML=html;

					//第四层楼
					var p76=result[75];
					var p77=result[76];
					var p78=result[77];
					var p79=result[78];
					//将商品的各个属性填充到html片段中
					 		//第四个
(function(){
	//dom4步
	//1,查找触发事件的元素	
	var as=document.querySelectorAll(
		"#tab3>li>[data-toggle=tab3]"
	);
		//2,绑定事件处理函数
	var i=10;//累积zIndex
	for(var a of as){
		a.onmouseover=function(){
			//3,查找要修改的元素 			
			var id=this.getAttribute("data-target");
			var div=document.getElementById(id);
			//修改元素
			div.style.zIndex=i++;
	 }
	}
})();
					var html=`<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p76.href}">
							<img src="${p76.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p76.title}</span>
						<span class="produ-price-info">￥${p76.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p76.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p77.href}">
							<img src="${p77.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p77.title}</span>
						<span class="produ-price-info">￥${p77.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p77.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p78.href}">
							<img src="${p78.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p78.title}</span>
						<span class="produ-price-info">￥${p78.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p78.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p79.href}">
							<img src="${p79.pic}" alt="">
								<div></div>
						</a>
						<span class="produ-info">${p79.title}</span>
						<span class="produ-price-info">￥${p79.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
										<a class="buy-now-button" href="${p79.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p76.href}">
							<img src="${p76.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p76.title}</span>
						<span class="produ-price-info">￥${p76.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p76.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p77.href}">
							<img src="${p77.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p77.title}</span>
						<span class="produ-price-info">￥${p77.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
										<div>
										<p>
										<a class="buy-now-button" href="${p77.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div> `;
			//将填好的html片段追加到页面指定的父元素下
					document.getElementById("ul16").innerHTML=html;
			
					//将商品的各个属性填充到html片段中
					var html=`<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p76.href}">
							<img src="${p76.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p76.title}</span>
						<span class="produ-price-info">￥${p76.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p76.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p78.href}">
							<img src="${p78.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p78.title}</span>
						<span class="produ-price-info">￥${p78.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p78.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p79.href}">
							<img src="${p79.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p79.title}</span>
						<span class="produ-price-info">￥${p79.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p79.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div> 
				<div class="produ-box">
				<div class="produ-box-content">
					<a class="produ-img" href="${p78.href}">
						<img src="${p78.pic}" alt="">
						<div></div>
					</a>
					<span class="produ-info">${p78.title}</span>
					<span class="produ-price-info">￥${p78.price.toFixed(2)}</span>
					<span class="produ-buy-now"></span>
						<div>
							<p>
								<a class="buy-now-button" href="${p78.href}">立即查询</a>
							</p>
						</div>
				</div>
			</div>
			<div class="produ-box">
			<div class="produ-box-content">
				<a class="produ-img" href="${p79.href}">
					<img src="${p79.pic}" alt="">
					<div></div>
				</a>
				<span class="produ-info">${p79.title}</span>
				<span class="produ-price-info">￥${p79.price.toFixed(2)}</span>
				<span class="produ-buy-now"></span>
					<div>
						<p>
							<a class="buy-now-button" href="${p79.href}">立即查询</a>
						</p>
					</div>
			</div>
		</div>`;
			//将填好的html片段追加到页面指定的父元素下
					document.getElementById("ul17").innerHTML=html;
			
					//将商品的各个属性填充到html片段中
					var html=`<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p76.href}">
							<img src="${p76.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p76.title}</span>
						<span class="produ-price-info">￥${p76.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p76.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p78.href}">
							<img src="${p78.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p78.title}</span>
						<span class="produ-price-info">￥${p78.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p78.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div> 
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p76.href}">
							<img src="${p76.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p76.title}</span>
						<span class="produ-price-info">￥${p76.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p76.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p78.href}">
							<img src="${p78.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p78.title}</span>
						<span class="produ-price-info">￥${p78.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p78.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p76.href}">
							<img src="${p76.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p76.title}</span>
						<span class="produ-price-info">￥${p76.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p76.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p78.href}">
							<img src="${p78.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p78.title}</span>
						<span class="produ-price-info">￥${p78.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p78.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>`;
			//将填好的html片段追加到页面指定的父元素下
					document.getElementById("ul18").innerHTML=html;
					
					var p87=result[86];
					//将商品的各个属性填充到html片段中
					var html=`<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p87.href}">
							<img src="${p87.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p87.title}</span>
						<span class="produ-price-info">￥${p87.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p87.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p87.href}">
							<img src="${p87.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p87.title}</span>
						<span class="produ-price-info">￥${p87.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p87.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p87.href}">
							<img src="${p87.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p87.title}</span>
						<span class="produ-price-info">￥${p87.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p87.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p87.href}">
							<img src="${p87.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p87.title}</span>
						<span class="produ-price-info">￥${p87.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p87.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p87.href}">
							<img src="${p87.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p87.title}</span>
						<span class="produ-price-info">￥${p87.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p87.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p87.href}">
							<img src="${p87.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p87.title}</span>
						<span class="produ-price-info">￥${p87.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p87.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div> `;
			//将填好的html片段追加到页面指定的父元素下
					document.getElementById("ul19").innerHTML=html;
			
					var p85=result[84];
					var p86=result[85];
					//将商品的各个属性填充到html片段中
					var html=`<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p85.href}">
							<img src="${p85.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p85.title}</span>
						<span class="produ-price-info">￥${p85.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p85.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p86.href}">
							<img src="${p86.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p86.title}</span>
						<span class="produ-price-info">￥${p86.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p86.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p85.href}">
							<img src="${p85.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p85.title}</span>
						<span class="produ-price-info">￥${p85.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p85.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p86.href}">
							<img src="${p86.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p86.title}</span>
						<span class="produ-price-info">￥${p86.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p86.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p85.href}">
							<img src="${p85.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p85.title}</span>
						<span class="produ-price-info">￥${p85.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p85.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div>
				<div class="produ-box">
					<div class="produ-box-content">
						<a class="produ-img" href="${p86.href}">
							<img src="${p86.pic}" alt="">
							<div></div>
						</a>
						<span class="produ-info">${p86.title}</span>
						<span class="produ-price-info">￥${p86.price.toFixed(2)}</span>
						<span class="produ-buy-now"></span>
							<div>
								<p>
									<a class="buy-now-button" href="${p86.href}">立即查询</a>
								</p>
							</div>
					</div>
				</div> `;
			//将填好的html片段追加到页面指定的父元素下
		document.getElementById("ul20").innerHTML=html;
	})
})()