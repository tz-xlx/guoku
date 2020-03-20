const express=require('express');
//创建路由器对象
const pool=require("../pool.js");
var router=express.Router();
//添加路由 
//1，用户注册
//post /register
router.post('/register',function(req,res){
var obj=req.body;
//获取数据
//验证是否为空
if (!obj.uname){
 res.send({code:401,msg:"uname required"});
 return;
}else if(!obj.upwd){
 res.send({code:402,msg:"upwd required"});
 return;
}else if(!obj.phone){
 res.send({code:403,msg:"phone required"});
 return;
}
//执行sql语句
pool.query("INSERT INTO gk_user SET ?",[obj],function(err,result){
if(err) throw err;
if (result.affected>0){
res.send({code:200,msg:"register success"});
}else {
res.send({code:301,msg:"register error"});
}
});
});
//2,用户登录
router.post("/login",function(req,res){
var obj=req.body;
//验证是否为空
if (!obj.uname){
res.send({code:401,msg:"uname required"});
return;
}else if (!obj.upwd){
res.send({code:402,msg:"upwd required"});
return;
}else if (!obj.phone){
res.send({code:403,msg:"phone required"});
return;
}
//执行sql语句
pool.query("SELECT * FROM gk_user WHERE uname=? AND upwd=? AND phone=? ",[obj.uname,obj.upwd,obj.phone],function(err,result){
if(err) throw err;
//判断数据长度是否大于0
if (result.length>0){
res.send({code:200,msg:"login success"});
}else{
res.send({code:301,msg:"login error"});
}
});
});
//3,检索用户
router.get("/detail",function(req,res){
var obj=req.query;
console.log(obj);
//验证是否为空
if (!obj.uid){
res.send({code:401,msg:"uid required"});
return;
}
//执行sql语句
pool.query("SELECT * FROM gk_user WHERE uid=?",[obj.uid],function(err,result){
if(err) throw err;
res.send(result);
});
});
//4,修改用户
router.get("/update",function(req,res){
var obj=req.query;
//验证是否为空
if (!obj.uid){
res.send({code:401,msg:"uid required"});
return;
}else if (!obj.phone){
res.send({code:402,msg:"phone required"});
return;
}
//执行sql语句
pool.query("UPDATE gk_user SET phone=? WHERE uid=?",[obj.phone,obj.uid]),function(err,result){
if(err) throw err;
//判断是否成功
if (result.affected>0){
res.send({code:200,msg:"update success"});
}else {
res.send({code:301,msg:"update error"});
}
};
});
//5，用户列表

//导出路由器
module.exports=router;