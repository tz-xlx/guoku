const express = require('express');
//const userRouter=require('./routes/user.js');
//const myproRouter=require("./routes/mypro.js");
const bodyParser = require('body-parser');
//const cors = require("cors");
//使用路由
const index = require('./routes/index');
const details = require('./routes/details');
const mypro = require('./routes/mypro');
const shoppingcart = require('./routes/shoppingcart');
const product = require('./routes/product');
var app = express();
app.listen(3000);
//app.use(cors({
    //origin:"http://127.0.0.1:5501" //不能用*
//})); //从此所有响应，自动带Access-Control-Allow-Origin:http://127.0.0.1:5500
//万一客户端浏览器地址发生变化，只改这里origin一处即可！
//app.listen(8080);
//把静态资源托管到public下
app.use(express.static('public'));
//app.use(express.static('mypro'));
//使用中间件
app.use(bodyParser.urlencoded({
    extended: false
}));
//app.use('/user',userRouter);
//app.use('/mypro',myproRouter);
//使用路由来管理路由
 app.use('/index', index);
 app.use('/details', details);
 app.use('/mypro', mypro);
 app.use('/shoppingcart', shoppingcart);
 app.use('/product',product);
 
