$(function(){
  var name=location.search.split("?")[1].split("=")[0]
  var id=decodeURI(decodeURI(location.search.split("?")[1].split("=")[1]));
  var pno=1;//定义页数
  // var cid=location.search.split("=")[1];
  //console.log(location.search);//?cid=1
  if(name!==undefined){
    function show(){
      $.ajax({
        url:"http://127.0.0.1:3000/product",
        type:"get",
        data:{name,id,pno},
        dataType:"json",
        success:function(result){
          //console.log(result);
          if(result.code==1&&id!==""){
            var html = "";
              for (var aa of result.data) {
                  html += `<div class="artb-al">
                          <div class="artb-al-img">
                          <a href="${aa.href}">
                          <img src="${aa.pic}" alt="">
                          </a>
                          </div>
                          <div class="artb-al-pric">
                          <span>￥${aa.price.toFixed(2)}</span>
                          <a href="javascript:;"></a>
                          </div>
                          <div class="artb-al-text">
                          <a class="clicka" href="${aa.href}">${aa.title}</a>
                          <div class="artb-al-pic">规格：${aa.weight}</div>
                          </div>
                          <div class="artb-al-count">
                          <ul class="clear">
                          <li >
                          <a class="artb-al-count-a" href="javascript:;">-</a>
                          <input type="text" value="1">
                          <a class="artb-al-count-a"
                              href="javascript:;">+</a>
                          </li>
                          <li class="count-li" data-lid="${aa.lid}">
                          <a class="count-li-a1" href="javascript:;"></a>
                          <a class="count-li-a2"  href="javascript:;">加入购物车</a>
                          </li>
                          </ul>	
                          </div>
                          <div class="artb-al-no"></div>
                          </div>`;
              }
              $("#all-right-bottom2").html(html);
              //分页查询
              $("#some").html(`共有${result.page}页`)
            document.getElementById("pno").onclick=function(){
                pno=this.parentNode.previousElementSibling.previousElementSibling.children[0].value;
                show();
              }
              var all=document.getElementById("all-right-bottom2");
              //console.log(all);
              //找到触发事件的元素
              var as=all.getElementsByClassName("artb-al-count-a");
              //console.log(as);
              //为事件绑定处理函数
              //遍历as中的每一个a
              for(var a of as){
                a.onclick=function(){
                  var a=this;
                  // alert("疼");
                  //找到要修改的元素
                  var input=a.parentNode.children[1];
                  //console.log(input);
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
              var getGwcs=document.getElementsByClassName("count-li-a2");
              //console.log(getGwcs);
              var user_id=localStorage.getItem("uid");
                for(var getGwc of getGwcs){
                  getGwc.onclick=function(){
                    if(user_id){
                    var product_id=this.parentNode.dataset.lid;
                    var input=this.parentNode.previousElementSibling.children[1];
                    var count=parseInt(input.value);
                    var href=this.parentNode.parentNode.parentNode.previousElementSibling.children[0].href;
                    var title=this.parentNode.parentNode.parentNode.previousElementSibling.children[0].innerHTML;
                    var price=parseFloat(this.parentNode.parentNode.parentNode.previousElementSibling.previousElementSibling.children[0].innerHTML.slice(1));
                    var pic=this.parentNode.parentNode.parentNode.parentNode.children[0].children[0].children[0].src;
                    //console.log(product_id);
                    $.ajax({
                      url:"http://127.0.0.1:3000/shoppingcart",
                      type:"get",
                      data:{user_id,product_id,pic,title,price,href,count},
                      dataType:"json",
                      success:function(result){
                        console.log(result);
                      }
                    })
                  }else{
                    alert("请登录");
                  }
                }
              }
          }else{
            var html=`<img src="img/timg.jpg"></img>`;
            $("#all-right-bottom2").html(html);
          }
        }
      })
    }
    show();
  }
})