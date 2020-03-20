//public/js/details.js
$(function() {
    //地址栏：xxx/product_details.html?lid=1
    var lid = location.search.split("=")[1];
    //只有lid是有值时，才执行查找操作
    if (lid !== undefined) {
        //console.log(lid);
        $.ajax({
			url: "http://127.0.0.1:3000/details",
            type: "get",    
            data: { lid },
            dataType: "json",   
            success: function(result) {
                //console.log(result);
                var { product, specs, pics } = result;
                    //将product中的title,price,属性提取出来放到页面指定位置
                    // console.log(product);
                var { title, price, weight, category } = product;
                //console.log(title, price, weight);
                    //console.log(typeof category);
                    //43行
                $("div.ptitle").html(title);
                    //50行
                $("span.pprice").html(`￥${price.toFixed(2)}`);
                    //101
                $("#pweight").html(`净重：${weight}`);
                //console.log(category)
                if (category) {
                    var c_arr = category.split("||");
                        //console.log(c_arr);
                    var html = `<li style="border-color:rgb(204,204,204);">
								<a class="active">${c_arr[0]}</a>
								</li>
								<li style="border-color:rgb(204,204,204);">
									<a>${c_arr[1]}</a>
								</li>
								<li style="border-color:rgb(204,204,204);">
									<a>${c_arr[2]}</a>
								</li>
								<li style="border-color:rgb(204,204,204);">
									<a>${c_arr[3]}</a>
								</li>
								<li style="border-color:rgb(204,204,204);">
									<a>${c_arr[4]}</a>
								</li>`;
                    $("#gd_des_ser_fruit").html(html);
                }
                var as = document.querySelectorAll(
                    "#gd_des_ser_fruit>li>a"
                );
                for(var a of as){
                    a.onclick = function() {
                        var a = this;
                            //alert("疼");
                        if (a.className == "active") {
                            a.className = "";
                        } else {
                            var active = document.querySelector(
                                "#gd_des_ser_fruit>li>a.active"
                            );
                            active !== null && (active.className = "")
                            a.className = "active";
                            }
                        }
                }
                if (lid <= 48) {
                    var specs = specs.slice(0, 6);
                } else {
                    var specs = specs.slice(0, 1);
                }
                // console.log(specs);
                //动态生成多个规格按钮
                //先声明空字符串html等待接收拼接的<li>
                //55行
                var html = "";
                //遍历specs数组中每个规格对象
                for (var sp of specs) {
                    if (sp.spec == null) {
                        sp.spec = "";
                    } //每遍历一个就向html中拼接一个<li>片段
                    html += `<li class="${sp.lid==lid?'active1':''}">
                            <img src="${pics[0].sm}" alt="">
                            <a href="gk.product.details.html?lid=${sp.lid}">${sp.spec}</a>
                            </li>`;
                }
                //	console.log(html);
                $("#gd_des_ser1").html(html);
                /*放大镜效果*/
                //1，小图片加载
                //定义空字符串html
                var html = "";
                for (var p of pics) {
                    //每遍历一个就拼接一个li元素到html中
                    html += `	<li><img src="${p.sm}" data-md="${p.md}" 
                            data-lg="${p.lg}">
                            </li>`
                }
                //32行
                var $ul = $("#ulImgs").html(html)
                    //动态计算ul的宽度:pics.length*84
                    .css("width", pics.length * 84);
                //当单击左右按钮时，让ul左右移动一次
                //定义变量moved保存已经左移的li的个数
                var moved = 0;
                //为两个按钮绑定单击事件
                var $prev = $("a.prev");
                var $next = $("a.next");
                //如果pics的length<=4右边的按钮就禁用
                if (pics.length <= 4) {
                    $next.addClass("disabled");
                }
                $next.click(function(){
                    var $this = $(this);
                    //只有当前按钮不是禁用样式
                    if ($this.is(":not(.disabled)")) {
                        //才能点击
                        //左移的li个数+1
                        moved++;
                        //ul的marginleft永远等于-moved*58
                        $ul.css("margin-left", -84 * moved);
                        //只要右边按钮可以点一次，则左边按钮一定可以点
                        $prev.removeClass("disabled");
                        //如果多余的图片已经移动完
                        if (moved == pics.length - 4) {
                            $this.addClass("disabled")
                        }
                    }
                });
                $prev.click(function() {
                    var $this = $(this);
                    //只有当前按钮不是禁用的
                    if ($this.is(":not(.disabled)")) {
                        //才能点击 左移的个数-1
                        moved--;
                        $ul.css("margin-left", -84 * moved);
                        //只要左边的按钮可以点一次，则右边的一定可以点一次
                        $next.removeClass("disabled");
                        //如果左移的个数为0，说明不能退了
                        if (moved == 0) {
                            $this.addClass("disabled");
                        }
                    }
                });
                //鼠标进入小图片切换中图片
                //先找到中图片<img
                var $mImg = $("#m-img");
                //查找右侧大图，随中图片一同更新
                var $divLg = $("#div-lg");
                //初始化中图片为pics中第一张图片的中图片版本
                $mImg.attr("src", pics[0].md);
                //同时初始化div-lg的背景图片
                $divLg.css("background-image", "url(" + pics[0].lg + ")");
                //事件代理，委托，为ul绑定进入事件，只有鼠标进入li下的img元素才能触发事件
                $ul.on("mouseenter", "li>img",function(){
                            //获得当前的img
                    var $img = $(this);
                            //获得当前img的中图片路径
                    var src = $img.attr("data-md");
                            //将Md赋值给中图片的src属性
                            //24行 
                    $mImg.attr({ src });
                            //再获得大图片路径
                    var src = $img.attr("data-lg");
                            //设置大div的背景图片为src
                    $divLg.css("background-image", "url(" + src + ")");
                    })
                    //鼠标进入中图片，显示半透明遮罩层
                    //先查找半透明遮罩层
                var $mask = $("#mask");
                //获得上层充当保护层的玻璃板div
                var $superMask = $("#super-mask");
                //定义变量保存mask的大小
                var maskSize = 176;
                //事件绑定在上层玻璃板上，不会影响下层元素
                $superMask.mouseenter(function(){
                    $mask.removeClass("d-none");
                    $divLg.removeClass("d-none");
                    })
                    .mouseleave(function() {
                        $mask.addClass("d-none");
                        $divLg.addClass("d-none");
                    })
                        //当鼠标在super-mask上移动时，修改mask的位置
                    .mousemove(function(e) {
                        var left = e.offsetX - maskSize / 2;
                        var top = e.offsetY - maskSize / 2;
                        //如果left<0,就固定在0， 如果left>430-176=254,
                        if (left < 0) {
                            left = 0;
                        } else if (left > 254) {
                            left = 254;
                        }
                        if (top < 0) {
                            top = 0;
                        } else if (top > 254) {
                            top = 254;
                        }
                        $mask.css({ left, top });
                        $divLg.css("background-position", `${-left*9/6}px ${-top*9/6}px`);
                    })
            }
        })
            //商品列表
    }else {
        alert("请提供商品编号?lid=n");
    }
})