const express = require("express")
const router = express.Router();
const pool = require("../pool")
//根据cid查询
router.get("/",(req,res)=>{
  // var output={
  //   pnoo:{
  //   }
  // }
  var name=req.query.name;//fid   :  cid 
  var id=req.query.id     // id 
  var pS=req.query.pageSize;//每页商品的数量
    var p=req.query.pno;//第几页
    if(!p){p=1}
    if(!pS){pS=12}
    var offset=(p-1)*pS;//从几开始
    pS=parseFloat(pS);
    //console.log(p,pS);
 // var page=req.query.page
  //console.log(name);
  //console.log(id)
  if(name!==undefined&&name=="fid"){
      var sql="select count(*) from gk_fruit where family_id=?";
      pool.query(sql,[id],(err,result)=>{
        if(err) console.log(err)
        var pSs=result[0][Object.keys(result[0])[0]];
        //output.pnoo=Math.ceil(pSs/pS)
        //2 console.log(output.pno);
        var sql="select title,price,href,spec,weight,pic,lid from gk_fruit where family_id=? limit ?,?";
        pool.query(sql,[id,offset,pS],(err,result)=>{
          if(err) console.log(err);
          //console.log(result)
          if(result.length>0){
            res.send({code:1,data:result,page:Math.ceil(pSs/pS)});
          }else{
            res.send(result);
          }
        })
      })
  }else if(name!==undefined&&name=="cid"){
    var sql="select * from  gk_fruit where children_id=?";
      pool.query(sql,[id],(err,result)=>{
        if(err) console.log(result);
      //console.log(result)
        if(result.length>0){
          res.send({code:1,data:result});
        }else{
          res.send(result);
        }
      })
  }
  else if(name!==undefined&&name=="wd"){ 
    var sql=`select count(*) from gk_fruit where title like '%${id}%'`;
    pool.query(sql,[id],(err,result)=>{
      if(err) console.log(err) 
      var pSs=result[0][Object.keys(result[0])[0]];
      var sql=`select * from gk_fruit where title like '%${id}%' limit ${offset},${pS}`;
      pool.query(sql,[id,offset,pS],(err,result)=>{
        if(err) console.log(err);
        //console.log(result);
        if(result.length>0){
          res.send({code:1,data:result,page:Math.ceil(pSs/pS)})
        }else{
          res.send(result)
        }
     })
    })
  }
})
  //先第一个对象接住所有的值   data
  // 数据库中的总数量   
  // 数据库查询的结果
  // 总共有多少页码  = 向上取整 (总数量/12 ) 
  // 分页条件 
  //   ↓
  // if (page==undefined){page=12}

  // if(name!==undefined&&id!==undefined){
  //   var sql=`select * from  gk_fruit where ${name}=${id}`;
  //   pool.query(sql,(err,result)=>{
  //     if(err) console.log(result);
  //     //console.log(result)
  //     if(result.length>0){
  //       res.send({code:1,data:result});
  //     }else{
  //       res.send(result);
  //     }
  //   })
  // }
module.exports = router;