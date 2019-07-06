<template>
    <div id="header">
        <header>
        <div class="h-city">
            <span class="location">
                <img src="../assets/header/loction.png" alt="">北京
            </span>
            <a class="city" href="javascript:;" @click="show">
                切换城市
                <select name="dinner" size="3" multiple v-show="city">
                    <option value="cd">成都</option>
                    <option value="sh">上海</option>
                    <option value="gz">广州</option>
                    <option value="sz" selected>深圳</option>
		        </select>
            </a>
            <ul  class="nav">
                <li><a href="javascript:;" @click="goto1">登录</a> </li>
                <li><a href="javascript:;" @click="goto2">注册</a></li>
                <li><a href="javascript:;">我的订单</a></li>
                <li><a href="javascript:;">手机app</a></li>
            </ul>
        </div>
        <div class="title">
            <h1 id="h1">美食驿站</h1>
            <span class="food">· 美食</span>
                <input type="text" class="h-input" placeholder="请输入您需要搜索的内容">
                <button class="h-btn"></button>
            <ul></ul>
            <br>
            <span class="food-station">Food station</span>
            <ul class="h-types">
                <li><a href="javascript:;" @click="goto3">菜谱</a></li>
                <li><a href="javascript:;">食材</a></li>
                <li><a href="javascript:;">健康</a></li>
                <li><a href="javascript:;">珍选</a></li>
                <li><a href="javascript:;">专题</a></li>
                <li><a href="javascript:;">社区</a></li>
                <li><a href="javascript:;">话题</a></li>
            </ul>
        </div>
</header>
</div>
</template>

<script>
export default {
    data(){
        return{
            city:false,
        }
    },
    methods:{
        goto1(){
            this.$router.push("/login");
        },
        goto2(){
            this.$router.push("/register");
        },
        show(){
            this.city=true;
        },
        goto3(){
            this.$router.push("/details3")
        }
    }
}
</script>

<style>
/*两个城市内容div*/
.h-city{
    width:100%;height:40px;
    background-color:#f8f8f8;
}
/*图标的大小设置*/
.location>img{
    width:12px;height:12px;
    line-height:0px;
}
/*字体大小和位置设置*/
.city,.location{
    text-decoration:none;
    color:#999999;
    font-size:12px;
    line-height:40px;
    position: relative;
    left:350px;
    margin-left:10px;
}
/*设置ul>li*/
.nav,.h-types{
    width:250px;
    display: flex;
    margin-left:1300px;
    margin-top:-30px;
    list-style:none;
    justify-content:space-between;
}
/*input下面类型*/
.h-types{
    width: 375px;
    margin-left:685px;
    margin-top: -80px;
}
/*nav>a字体设置*/
.nav>li>a{
    font-size:12px;
    color:#999999;
    text-decoration:none;
}
/*input下面类型li>a*/
.h-types>li>a{
    text-decoration:none;
    color:#000;
    font-size: 16px;
}
/*设置美食驿站的位置*/
#h1{
    position: relative;
    left:350px;
    top:22px;
    color:orange;
    font-size:35px;
    margin:0;padding:0;
}
/*美食驿站设置*/
.food{
    position: relative;
    left:500px;
    top:-30px;
    font-size:20px;
}
/*设置title下的span标签的相对位置*/
.food-station{
    position: relative;
    left:365px;
    top:-60px;
    font-family:"Lucida Handwriting";
    color:orange;
}
/*设置搜索的input和button*/
.h-input,.h-btn{
    position: relative;
    left:625px;
    top:-32px;
    box-sizing: border-box;
    border:1px solid orange;
    line-height: 0px;
}
/*单独设置搜索栏的h-input*/
.h-input{
    width:470px;
    height:42px;
    border-radius:5px 0px 0px 5px;
}
/*单独设置搜索栏的button*/
.h-btn{
    position: relative;
    width:90px;
    height: 42px;
    top: -17px;
    left: 620px;
    background:orange url(../assets/header/h-search.png) no-repeat center;
    background-size:30px 30px;
    border-radius:0px 5px 5px 0px;
}
#list{
    display: none;
}
</style>
