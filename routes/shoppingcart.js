const express=require("express");
const router=express.Router();
const pool=require("../pool");
//插入购物车的数据
router.get("/",(req,res)=>{
	var user_id=req.query.user_id;
	var product_id=req.query.product_id;
	var count=req.query.count;
	var pic=req.query.pic;
	var title=req.query.title;
	var price=req.query.price;
	var href=req.query.href;
	console.log(user_id,product_id,pic,title,price,href,count)
	var sql="select iid from gk_shoppingcart_item where user_id=? and product_id=?";
	pool.query(sql,[user_id,product_id],(err,result)=>{
		if(err) throw err;
    if(result.length==0){//说明用户没有买过该商品
			var sql=`insert into gk_shoppingcart_item values(null,${user_id},${product_id},'${pic}','${title}',${price},'${href}',${count},null)`;
		}else{
			var sql=`update gk_shoppingcart_item set count=${count} where user_id=${user_id} and product_id=${product_id}`;
		}
		pool.query(sql,(err,result)=>{
			if (err) console.log(err);
			console.log(result);
			//res.send({code:1,msg:"添加成功"})
		})
	})
})
//获取购物车数据
router.post("/",(req,res)=>{
   var user_id=req.body.user_id;
	 //console.log(user_id);
	//console.log(req.query);
		var sql="select * from gk_shoppingcart_item where user_id=?";
		pool.query(sql,[user_id],(err,result)=>{
			//console.log(result);
			if(err) console.log(err);
			if(result.length>0){
				res.send({code:1,data:result})
			}else{
				res.send({code:0})
			}
		})
})
//更新购物车的数据
router.put("/",(req,res)=>{
	var user_id=req.body.user_id;
	var product_id=req.body.pid;
	var count=req.body.n;
	//console.log(count)
	//console.log(user_id,product_id,count)1 1 ...
	var sql="update gk_shoppingcart_item set count=? where user_id=? and product_id=?";
	pool.query(sql,[count,user_id,product_id],(err,result)=>{
		if (err) console.log(err);
		//console.log(result);
		res.send("1");
	})
})
//删除购物车数据  为什么数据库没有删除成功
router.delete("/",(req,res)=>{
	var user_id=req.body.user_id;
	var product_id=req.body.pid
	//console.log(user_id,product_id)//2,1
	if(product_id){
		var sql="delete from gk_shoppingcart_item where user_id=? and product_id=?";
		pool.query(sql,[user_id,product_id],(err,result)=>{
			if (err) console.log(err);
			//console.log(result);
			if(result.affectedRows>0){
				res.send("1");
			}else{
				res.send("0");
			}
		})
	}else{
		var sql="delete from gk_shoppingcart_item where user_id=?";
		pool.query(sql,[user_id],(err,result)=>{
			if (err) console.log(err);
			//console.log(result);
			if(result.affectedRows>0){
				res.send("1");
			}else{
				res.send("0");
			}
		})
	}
})
module.exports=router;

