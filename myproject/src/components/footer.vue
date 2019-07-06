<template>
    <div id="footer">
        <footer>
        <h1>中国美食</h1>
        <span class="f-food">ChineseFood.com</span>
        <ul class="pics">
            <li>
                <a href="">
                    <img src="../assets/footer/wechat.png" alt="">
                </a>
            </li>
            <li>
                <a href="">
                    <img src="../assets/footer/weibo.png" alt="">
                </a>
            </li>
            <li>
                <a href="">
                    <img src="../assets/footer/phone.png" alt="">
                </a>
            </li>
        </ul>
        <div class="details">
            <ul>
                <li><a href="" class="a-title">关于中国美食</a></li>
                <li><a href="">团队介绍</a></li>
                <li><a href="">美食专家</a></li>
                <li><a href="">加入我们</a></li>
            </ul>
            <ul>
                <li><a href="" class="a-title">产品服务</a></li>
                <li><a href="">美食生活书刊</a></li>
                <li><a href="">品质优选</a></li>
            </ul>
            <ul>
                <li><a href="" class="a-title">联系我们</a></li>
                <li><a href="">投稿</a></li>
                <li><a href="">商务合作</a></li>
            </ul>
            <ul>
                <li>
                    <img src="../assets/footer/app.png" alt="" class="myapp">
                    <p>手机客户端</p>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="../assets/footer/wechat_app.png" alt="" class="mywechat">
                    <p>微信客户端</p>
                </li>
            </ul>
        </div>
        <div class="copy">
            版权所有 © 2004-2019 美食驿站 保留所有权利<br>
            京公网安备 1234567890号 / 京ICP证090244号 / 京ICP备10020153号
        </div>
    </footer>
    </div>
</template>

<script>
export default {
    data(){
        return{}
    }
}
</script>

<style>
    body{
    margin:0;padding:0;
}
/*设置footer的背景颜色等*/
footer{
    background:orange;
    opacity:0.8;
    height:340px;
}
/*设置英文样式*/
.f-food{
    color:#fff;
    font-size:10px;display:inline-block;
    font-family:"Lucida Handwriting";
    padding:0;
    position: relative;
    left: 504px;top: 60px;
}
/*设置中国美食样式*/
h1{
    color:#fff;
    position: relative;
    left:500px;top:60px;
    margin:0;padding:0;
}
/*几个图标的ul*/
.pics{
    list-style: none;
    display:flex;padding:0;
    margin-left: 502px;margin-top: 120px;
}
/*设置ul>li>a*/
.pics>li>a>img{
    width:30px;height:30px;
    margin-left:10px;
}
/*details*/
.details{
    display: flex;width: 800px;
    justify-content: space-around;
    margin-left: 800px;margin-top: -195px;
}
/*div>ul*/
.details>ul{
    list-style:none;
}
.details>ul>li>a{
    text-decoration:none;
    color:#fff;
}
ul>li{
    text-align: center;
    line-height:37px;
}
/*a-title*/
.a-title{
    font-weight:bolder;
    font-size:22px;
}
.myapp,.mywechat{
    height:100px;
    width:100px;
}
ul>li>p{
    color:#fff;
}
.copy{
    color:#fff;
    text-align: center;
}
</style>
