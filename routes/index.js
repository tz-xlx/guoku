const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/",(req,res)=>{
	var sql="select * from gk_index_product";
	pool.query(sql,[],(err,result)=>{
		if(err) console.log(err);
		res.send(result);
	})

})
module.exports=router;




