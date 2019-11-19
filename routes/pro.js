const pool=require(../pool.js);
const express=require("express");
let router=express.Router();
router.get('/v1/login/:uname&:upwd',(req,res)=>{
  var $uname=req.params.uname;
  var $upwd=req.params.upwd;
  var sql="select * from hd_user where uname=? and upwd=?";
  pool.query(sql,[$uname,$upwd],(err,result)=>{
    if(err) throw err;
	if(result.length>0){
	  res.send("1");
	}else{
	  res.send("0");
	}
  });
});
router.post('/v1/regUser',(req,res)=>{
  var $uname=req.body.uname;
  var $upwd=req.body.upwd;
  var $email=req.body.email;
  var $phone=req.body.phone;
  var sql="insert into hd_user values ?,?,?,?,?,?,?,?";
  pool.query(sql,[null,$uname,$upwd,$email,$phone,null,null,null],(err,result)=>{
    if(err) throw err;
	if(result.affectedRows>0){
	  res.send("1");
	}else{
	  res.send("0");
	}
  });
});








module.exports=router;

