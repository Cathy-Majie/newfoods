<template>
    <div id="login">
        <div id="container">
        <div class="black">
            <table>
                <tr>
                    <td colspan="2">
                        <a href="javasript:;" id="login1">登录</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" class="uname" :placeholder="accountPlaceholder" v-model="uname">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="password" class="myinput" placeholder="请输入用户密码" v-model="upass">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="auto">
                        <label for="auto">下次自动登录</label>
                    </td>
                    <td class="algin-right">
                        <a href="javascript:;">忘记密码?</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" value="登录" class="login" @click="login">
                    </td>                    
                </tr>
            </table>
            <div id="app">
                <ul>
                    <li>
                        <a href="javascript:;" id="register" @click="goto">注册</a>
                         <!--<router-link to="/register">1111111</router-link>-->
                    </li>
                    <li>
                        <a href="#">
                            <img src="../assets/login/msc_app.png" alt="" class="myapp">
                            <p class="app-font">扫描二维码下载客户端</p>
                        </a>
                    </li>
                    <li>
                        <a href="" class="icon">
                            <img src="../assets/login/QQ.png" alt="">
                            <img src="../assets/login/weixin.png" alt="">
                            <img src="../assets/login/weibo.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</template>
<script>
export default {
    data(){
        return{
            accountPlaceholder:"请输入用户名",
            uname:"",
            upass:""
        }
    },
    methods:{
        goto(){
            this.$router.push("/register");
        },
        login(){
            //完成用户登录
            //1.获取用户输入用户名  3-10
            //2.获取用户输入密码  3-10
            var n=this.uname;
            var p=this.upass;
            //3.创建两个正则
            var nreg=/^[a-zA-Z0-9]{3,10}$/;
            var preg=/^[a-zA-Z0-9]{3,8}$/;
            // 4.判断用户名格式是否正确
            if(!nreg.test(n)){
                alert("用户名格式不正确");
                return;
                }
            //5.判断密码格式是否正确
            if(!preg.test(p)){
                alert("密码格式不正确");
                return;           
              }
              //6.将用户和密码发送ajax请求
              var url="login";
              var obj={uname:n,upass:p};
              //7.并且获取服务器返回的结果
              this.axios.get(url,{params:obj}).then(result=>{
                  console.log(result);
                  if(result.data.code==1){
                      //9.登录成功
                      alert(result.data.msg);
                      this.$router.push("/index");
                  }else{
                      //8.返回失败，提示
                      alert(result.data.msg);
                  }
              })
        }
    }
}
</script>

<style>
*{margin:0;padding:0px;}
body{
    background-image:url(../assets/login/bg.jpg);
    background-size:100% 100%;
    background-repeat:no-repeat;
    background-attachment: fixed;
}

#container{
    width:1000px;
    height:560px;
    margin:0 auto;
}
.algin-right{
    text-align:right;
}
div.black{
    position: relative;
    top: 250px;
    width: 580px;
    height: 320px;
    margin: 0 auto;
    background-color: rgba(198,97,63,0.5);
    display: flex;
    justify-content: space-between;
}
/*把表格内所有a标签的公用样式提出来*/
div.black table td a{
    color:#fff;
    font-size:12px;
}
div.black table td{
    width:170px;
}
#login1,#register{
    color:#fff;
    margin:20px 0;
    font-size:20px;
}
.algin-right{
    text-align:right;
    color:#fff;
}
input.uname,input.myinput{
    width:100%;height:38px;
    border:0;
    outline:0;
    font-size: 14px;
    box-sizing:border-box;
    padding: 10px 0;
    margin:18px 0;
    padding-left: 15px;
}
label{
    color:#fff;
    font-size:16px;
}
.login{
    /*1.宽高，大体位置*/
    width:100%;height:37px;
    /*2.背景，边框*/
    background-image:linear-gradient(to bottom,#f6277d 0%,#e9f627 100%);
    border:0;
    /*3.文字*/
    color:#fff;
    /*4.微调*/
    margin-top:15px;
    font-size:18px;
}
.myapp{
    width:110px;
    height:110px;
}
.app-font{
    color:#fff;
    font-size:16px;

}
#app>ul{
    list-style: none;
}
#app>ul>li{
    line-height: 35px;
}
#app>ul>li>a{
    text-decoration: none;
}
.icon>img{
    width:35px;
    height:35px;
}
table>tr>td>a{
    text-decoration:none;
}
</style>
