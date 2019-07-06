//app.js node.js 服务器
//1.第三方模块 
//express web服务器
//fs 文件操作（内置）
//cors 跨域
//express-session session
//body-parser 处理post数据
//multer 上传文件
//mysql mysql驱动模块 
//下载指令:联网 
//npm i express-session body-parser multer mysql express cors

//1.引入两个模块 express mysql
const express=require("express");
const mysql=require("mysql");
//2.创建连接池
var pool=mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    port:3306,
    database:"food",
    connectionLimit:15
})
//3.创建express对象
var server=express();
//4:指定静态资源目录
server.use(express.static("public"));
//5.处理跨域请求
//之所以用跨域请求是因为脚手架是8080 监听端口是3000
const cors=require("cors");
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}));
//6.添加session功能
//session：在服务端保存专有数据对象，比如：uid
const session=require("express-session");
    server.use(session({
    secret:"128字符串",//自定义字符串
    resave:true,//每次请求数据
    saveUninitialized:true//保存初始化数据
    }));
//4.绑定监听端口
server.listen(3000);
//10.接收用户登录请求
//1.检查数据库t_login
//2.启动数据库   启动nodejs
//3.地址栏访问
//功能一：登录请求页
server.get("/login",(req,res)=>{
//1.接收脚手架参数uname upass
var uname=req.query.uname;
var upass=req.query.upass;
//2.sql
var sql="SELECT id FROM t_login WHERE uname=?AND upass=md5(?)";
//3.返回结果
pool.query(sql,[uname,upass],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
        res.send({code:-1,msg:"用户名或密码有误"});
    }else{
        //result=[{id:1}]
        req.session.uid=result[0].id
        res.send({code:1,msg:"登陆成功"});
        }
    });
});
//功能二：加载
server.get("/index",(req,res)=>{
    var sql="SELECT id,img,fname,detail FROM index1";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
//功能三：加载ingredient页面的数据
// 表格0
server.get("/ingredients",(req,res)=>{
    var sql="SELECT id,iname FROM foods";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
// 表格1
server.get("/ingredients1",(req,res)=>{
    var sql="SELECT id,iname1 FROM foods1";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
// 表格2
server.get("/ingredients2",(req,res)=>{
    var sql="SELECT id,iname2 FROM foods2";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
// 表格3
server.get("/ingredients3",(req,res)=>{
    var sql="SELECT id,iname3 FROM foods3";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
// 表格4
server.get("/ingredients4",(req,res)=>{
    var sql="SELECT id,iname4 FROM foods4";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
// 表格5
server.get("/ingredients5",(req,res)=>{
    var sql="SELECT id,iname5 FROM foods5";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
// 表格6
server.get("/ingredients6",(req,res)=>{
    var sql="SELECT id,iname6 FROM foods6";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})
// 表格7
server.get("/ingredients7",(req,res)=>{
    var sql="SELECT id,iname7 FROM foods7";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})