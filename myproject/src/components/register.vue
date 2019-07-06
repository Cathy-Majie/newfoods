<template>
    <div id="register">
            <div class="container">
                <div class="title">
                <a href="javascript:;">
                    <span  class="register">注册</span>
                </a>
                <a href="http://127.0.0.1:8080/#/login" class="login"  @click="goto"> 
                    登录
                    <img src="../assets/register/msc_app.png" alt="">
                </a>
            </div>
            <ul class="box">
                <li>
                    <a href="javascript:;">
                        <img src="../assets/register/QQ.png" alt="">
                        <p>QQ</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../assets/register/weixin.png" alt="">
                        <p>微信</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="../assets/register/weibo.png" alt="">
                        <p>微博</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{}
    },
    methods:{
        goto(){
            this.$router.push("/login");
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
.container{
    position: relative;
    top: 250px;
    width: 580px;
    height: 320px;
    margin: 0 auto;
    background-color: rgba(198,97,63,0.5);
}
.login>img,.login{
    float: right;
    text-align:center;
    margin-top: 20px;
}
.login>img{
    width:110px;
    height:110px;
    margin-top: 60px;
    margin-right: 42px;
}
ul>li>a>img{
    width:35px;
    height:35px;
}
.box{
    display: flex;
    justify-content:space-around;
    margin-top: 60px;
    margin-left: -18px;
}
a{
    color:#fff;
    font-size:18px;
}
.register{
    position: relative;
    left: 36px;
    top: 20px;
}
a{
    text-decoration:none;
}
ul{
    list-style:none;
}
</style>
