<template>
    <div id="details">
        <h></h> 
        <div class="img-start">
            <img src="../../assets/details/5.jpg" alt="">
        </div>
            <div class="position">
                <span>您的位置：</span>
                <a href="javascript:;" @click="go1">美食驿站</a>
                <span>></span>
                <a href="javascript:;">菜谱</a>
                <span>></span>
                <a href="javascript:;">热菜</a>
                <span>></span>
                <a href="javascript:;">热菜</a>
                <div class="re">
                    <a href="javascript:;" class="recipe">杂烩炖鸡</a>
                    <span class="recipe_">独家</span> 
                </div>
            </div>  
        <div class="photo">
            <a href="javascript:;">
                <img src="../../assets/details/title.jpg" alt="">
            </a>
        </div>
        <div class="mo">
            <h3 id="deails_food">食材明细</h3>
        </div>
        <fieldset class="main">
            <legend>主料</legend>
            <ul>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
            </ul>
        </fieldset>
        <fieldset class="other">
            <legend>辅料</legend>
            <ul>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
            </ul>
        </fieldset>
        <fieldset class="end">
            <legend>辅料</legend>
            <ul>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
                <li>
                    <a href="javascript:;">香菇</a>
                    <p>适量</p>
                </li>
            </ul>
        </fieldset>
        <div class="step">
            <h3 id="stepofh3">杂烩炖鸡的做法步骤</h3>
            <ul>
                <li>
                    <div class="img1">
                        <img src="../../assets/details/step1.jpg" alt="">
                    </div>
                    <div class="p1">
                        <p>步骤一</p>   
                        <p>鸡肉入锅煮几分钟捞出备用</p>   
                    </div>
                </li>
                <li>
                    <div class="img2">
                        <img src="../../assets/details/step1.jpg" alt="">
                    </div>
                    <div class="p2">
                        <p>步骤一</p>   
                        <p>鸡肉入锅煮几分钟捞出备用</p>   
                    </div>
                </li>
                <li>
                    <div class="img3">
                        <img src="../../assets/details/step1.jpg" alt="">
                    </div>
                    <div class="p3">
                        <p>步骤一</p>   
                        <p>鸡肉入锅煮几分钟捞出备用</p>   
                    </div>
                </li>
                <li>
                    <div class="img4">
                        <img src="../../assets/details/step1.jpg" alt="">
                    </div>
                    <div class="p4">
                        <p>步骤一</p>   
                        <p>鸡肉入锅煮几分钟捞出备用</p>   
                    </div>
                </li>
                <li>
                    <div class="img5">
                        <img src="../../assets/details/step1.jpg" alt="">
                    </div>
                    <div class="p5">
                        <p>步骤一</p>   
                        <p>鸡肉入锅煮几分钟捞出备用</p>   
                    </div>
                </li>
            </ul>
        </div>
        <f></f>
    </div>
</template>

<script>
import header from '../header.vue'
import footer from '../footer.vue'
export default {
    data(){
        return{}
    },
   components:{
       "h":header,
       "f":footer,
   },
   methods:{
       go1(){
           this.$router.push("/index");
       }
   }
}
</script>

<style scoped>
.img-start{
    margin:0 auto;
    text-align: center;
}
.position{
    width:990px;
    margin:0 auto;
    margin-top: 20px;
}
.position>a{
    text-decoration: none;
    color: #000; 
}
.position>a:hover{
    color: red;  
}
.recipe{
    font-size:32px;
    text-decoration: none;
    color: #000;
    font-weight:  bolder;
}
.recipe_{
    background: #ff6767;
    vertical-align: middle;
    color: #fff;
    border-radius: 4px;
    padding: 1px 5px;
    display: inline-block;
    height: 18px;
    line-height: 18px;
    margin-top: -12px;
}
.re{
    margin-top: 45px;
    margin-right: 135px;
}
.photo{
    margin:0 auto;
    text-align: center;
    margin-left: -187px;
    margin-top: 20px;
}
.mo,.main,.other,.end,.step{
    margin:0 auto;
    text-align: left;
    width:800px;
    margin-left:445px;
}
.main>h3,.other>h3,.end>h3,.step>h3,.mo>h3{
    color:orange;
}
.main>ul,.other>ul,.end>ul{
    display:flex;
    justify-content: space-between;
    width:500px;
    list-style: none;
    text-align: center;
    margin:0;
}
.main>ul>li>a,.other>ul>li>a,.end>ul>li>a{
    text-decoration: none;
    font-size: 21px;
    color:#000;
}
.main>ul>li>p,.other>ul>li>p,.end>ul>li>p{
    font-size:14px;
    color:#ae9e9e
}
.step>ul>li{
    display:block;
}
.img1,.p1,.img2,.p2,.img3,.p3,.img4,.p4,.img5,.p5{
    width: 320px;
    display: inline-block;
    line-height: 30px;
    position: relative;
    margin:0;
}
.step>ul{
    width:700px;
    margin:0px;
}
.p1,.p2,.p3,.p4,.p5{
    bottom:100px;
    left:40px;
}
fieldset{
    border:2px solid orange;
    border-radius:5px;
}
</style>
