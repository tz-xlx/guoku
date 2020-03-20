  const express = require('express');
  const pool = require('../pool.js');
  var router = express.Router();
 //添加路由
  //1，用户注册
  router.post("/v2/reg", (req, res) => {
      var $uname = req.body;
      var $upwd = req.body;
      console.log($uname, $upwd);
      //判断是否为空
      /*if(!$upwd){res.send("$upwd 未接收到");return;}*/
      var sql = "insert into gk_user set ?";
      //执行sql语句
      pool.query(sql, [$uname, $upwd], (err, result) => {
            if(result.affectedRows>0){
                res.send({code:1,msg:"注册成功"})
            }  else{
                res.send({code:-1,msg:"注册失败"})
            }
      });
  });
  //http://127.0.0.1:3000/mypro/reg
 //2,用户登陆
 router.get(("/v2/login"),(req,res)=>{
    var $uname = req.query.uname;
    var $upwd = req.query.upwd;
    //console.log($uname)//dingding
   
    //console.log($upwd)// 123456
    if(!$uname){res.send("用户名为空");return;}
    if(!$upwd){res.send("密码为空");return;}
    //查询数据库
    var sql="select * from gk_user where uname=? and upwd=?";
    pool.query(sql,[$uname,$upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            console.log(result[0].uid);
            res.send({code:1,data:result[0].uid});
        }else{
            res.send({code:0});
        }
    })
 })
  //restful风格的get方法
//   router.get(("/v2/login/:uname&:upwd"), (req, res) => {
//      //获取参数
//       var $uname = req.params.uname;
//       var $upwd = req.params.upwd;
//       console.log($uname)
//       console.log($upwd)
//       //查询用户名是否在数据库里
//       var sql="select uname from  gk_user where uname=?";
//       pool.query(sql, [$uname], (err, result) => {
//           if (err) throw err;
//           if (result.length > 0) {//如果存在用户名就执行下面的
//             var sql = "select * from gk_user where uname=? and upwd=?";
//             pool.query(sql,[ $uname, $upwd],(err,result)=>{
//                  if(err) throw err;
//                  if(result.length>0){
//                     res.send("1");
//                  } else{
//                     res.send("-1");
//                  }
//              })
//             }
//             else{
//             console.log("没有找到")
//             res.send("0");}
//        });
//   });
  //3,用户列表
  router.get("/v2/list", (req, res) => {
      var sql = "select * from gk_user";
      pool.query(sql, (err, result) => {
          if (err) throw err;
          res.send(result);
      });
  });
  //4,删除用户
  router.delete("/v2/deluser/:uid", (req, res) => {
      var $uid = req.params.uid;
      var sql = "delete from gk_user where uid=?";
      pool.query(sql, [$uid], (err, result) => {
          if (err) throw err;
          res.send("1");
      });
  });
  //5,根据Id查询用户
  router.get("/v2/query/:uid", (req, res) => {
      var $uid = req.params.uid;
      var sql = "select * from gk_user where uid=?";
      pool.query(sql, [$uid], (err, result) => {
          if (err) throw err;
          if (result.length > 0) {
              res.send(result);
          } else {
              res.send("0");
          }
      });
  }); //为什么查询时不能将数据传过来 问问同学
  //6修改用户
  router.put("/v2/update", (req, res) => {
      //获取参数
      var $uid = req.body.uid;
      var $uname = req.body.uname;
      var $email = req.body.email;
      var $phone = req.body.phone;
      var $user_name = req.body.user_name;
      var $gender = req.body.gender;
      //验证是否为空
      if (!$uid) { res.send("uid 未接收到"); }
      if (!$uname) { res.send("uname 未接收到"); }
      if (!$email) { res.send("email 未接收到"); }
      if (!$phone) { res.send("phone 未接收到"); }
      if (!$user_name) { res.send("user_name 未接收到"); }
      if (!$gender) { res.send("gender 未接收到"); }
      var sql = "update gk_user set uname=?,email=?,phone=?,user_name=?,gender=? where uid=?";
      pool.query(sql, [$uname, $emai, $phone, $user_name, $gender, $uid], (err, result) => {
          if (err) throw err;
          res.send("1");
      });
  });
  //导出路由器
  module.exports = router;