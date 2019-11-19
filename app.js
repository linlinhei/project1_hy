const express=require('express');
const bodyParser=require('body-parser');
const proRouter=require('./routes/pro.js')
let app=express();
app.listen(8080);
//托管静态资源到public目录下
app.use(express.static('./public'));
app.use(express.static('./pro'));
//应用bodyParser中间件
app.use(bodyParser.urlencoded({
  extended:false;
}));
//应用路由器
app.use('/pro',proRouter);
