<template>
    <div id="index">
        <h></h>
        <img src="../assets/index/R1.jpg" alt="" class="b-img1">
        <div class="w-1">
            <ul class="u-img1">
                <li><a href="javascript:;">菜谱大全</a></li>
                <li><a href="javascript:;">食材大全</a></li>
                <li><a href="javascript:;">饮食健康</a></li>
                <li><a href="javascript:;">专题专区</a></li>
            </ul>
        </div>
        <div class="w-2">
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="../assets/index/h1.jpg" alt="">
                    </a>
                </li>
                <li>
                    <a href="javascript:;">清热解暑，让你清爽一下</a>
                </li>
                <li>
                    <a href="javascript:;">夏天感冒发烧吃什么比较好？</a>
                </li>
                <li>
                    <a href="javascript:;">夏季养生，适合吃这些凉拌菜</a>
                </li>
                <li>
                    <a href="javascript:;">夏天太晒，美白吃什么好</a>
                </li>
                <li>
                    <a href="javascript:;">专题|那些美颜实务的神级吃法</a>
                </li>
                <li>
                    <a href="javascript:;">专题|低卡减肥餐，让你受到飞起来</a>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="../assets/index/h2.jpg" alt="">
                    </a>
                </li>
                <li>
                    <a href="javascript:;">这些挑水果小窍门，你知道吗</a>
                </li>
                <li>
                    <a href="javascript:;">网红肉松小贝，在家就能做</a>
                </li>
                <li>
                    <a href="javascript:;">内藏惊喜的彩虹威风蛋糕</a>
                </li>
                <li>
                    <a href="javascript:;">消耗蛋挞皮-简单版红薯素</a>
                </li>
                <li>
                    <a href="javascript:;">菜单|奥利奥的N中百搭吃法</a>
                </li>
                <li>
                    <a href="javascript:;">专题|另类咸香口儿 满足你的味蕾</a>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="javascript:;" @click="goto">
                        <img src="../assets/index/h3.jpg" alt="">
                    </a>
                </li>
                <li>
                    <a href="javascript:;">孩子提高免疫力，健康过春季</a>
                </li>
                <li>
                    <a href="javascript:;">划重点！食物降血脂这些更有效</a>
                </li>
                <li>
                    <a href="javascript:;">粗粮细作：健康能量燕麦甜品</a>
                </li>
                <li>
                    <a href="javascript:;">妈妈派|童趣童味，儿童创意餐点</a>
                </li>
                <li>
                    <a href="javascript:;">免费抽奖|ACA手持电动打蛋器</a>
                </li>
                <li>
                    <a href="javascript:;">免费抽奖|Haier海尔智能烤箱（珍珠白）</a>
                </li>
            </ul>
        </div>
        <h4>新秀菜谱</h4>
            <ul class="recommend">
                <li>
                    <a href="#">
                        <img src="../assets/index/p1.jpg" alt="">
                        <p>四川火锅</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="../assets/index/p2.jpg" alt="">
                        <p>乐山钵钵鸡</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="../assets/index/p3.jpg" alt="">
                        <p>素炒三丁</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="../assets/index/p4.jpg" alt="">
                        <p>玉米饼</p>
                    </a>
                </li>
            </ul>
        <h4>时令食材</h4>
            <ul class="veg">
                <li v-for="(item,index) of list" :key="index">
                    <a title="茭白" href="">
                        <!-- src="../assets/index/s1.jpg" -->
                        <!-- <img :src="'http://127.0.0.1:3000/'+item.img" alt=""><br> -->
                        <img :src="`http://127.0.0.1:3000/${item.img}`" alt="" class="my_img_postion"><br>
                        {{item.fname}}
                    </a>
                    <p class="p_detail">{{item.detail}}</p>
                </li>
            </ul>
        <f></f>
    </div>
</template>

<script>
//引入子组件
import header from "./header.vue"
import footer from "./footer.vue"
export default {
    data(){
        return{
            list:[],
            img:[],
        }
    },
    components:{
        //注册子组件
        "h":header,
        "f":footer,
    },
    methods:{
        goto(){
            this.$router.push("/details")
        },
    },
    created(){
        var url="index";
        this.axios.get(url).then(result=>{
            console.log(result.data);
            this.list=result.data;            
        })        
    }
}
</script>

<style>
/*轮播图位置图片*/
.b-img1{
    width: 890px;
    height: 450px;
    margin-left:300px;
    margin-top:40px;
}
/*设置第一个div*/
.w-1{
    float:left;
    position:relative;
    height:450px;
    width:200px;
    left:500px;
    top:40px;
    margin:0;
    padding:0;
    list-style:none;
    background:rgba(68,68,68,.4);
}
/*设置第一个ul*/
.u-img1{
    list-style:none;
}
.u-img1>li{
    line-height:105px;
    padding:0;
}
/*设置第一个ul>a*/
.u-img1>li>a{
    text-decoration:none;
    font:18px bolder;
    color:orange;
}
h4{
    position: relative;
    left:500px;
    top:7px;
    margin:0;
    padding:0;
}
/*新品菜谱ul*/
.recommend,.veg,.w-2{
    display:flex;
    justify-content:space-between;
    width:990px;
    margin-left:415px;
}
/**/
.w-2>ul>li>a>img{
    width:312px;
    height:124px;
}
.w-2>ul>li{
    line-height:35px;
}
.w-2>ul>li>a{
    color:#000;
}
/*新品菜谱ul下的图片大小*/
.recommend>li>a>img{
    width:230px;
    height:230px;
}
/*设置p标签中的内容*/
.recommend>li>a{
    text-align: center;
    color:#000;
}
.veg>li>a>img{
    width:126px;
    height:126px;
}
.veg>li{
    text-align:center;
}
.veg>li>a{
    color: #000;
}
.p_detail{
    color:#000;
}
a{
    text-decoration:none;
}
ul{
    list-style:none;
}
.my_img_postion{
    transition: transform 1s;
}
.my_img_postion:hover{
    transform:scale(1.1);
}
</style>
