<template>
    <div id="recommend">
        <h></h>
        <img src="../assets/recommend/r1.png" alt="">
        <div id="re">
            <p id="p_1">
                高考越来越近了，考生的压力非常大，不仅需要体力更需要脑力，因此家长要做好孩<br>
                子的后勤工作，在饮食方面要做好调理工作，让孩子多吃一些补脑健脑、增强记忆力<br>
                的食物，那么，高三学生吃什么补脑呢？
            </p>
            <ul id="ul_1">
                <li>
                    <a href="#">
                        <img src="../assets/recommend/coll.png" alt="">
                    </a>
                    <br>
                    <span>130</span>人收藏
                </li>
                <li>
                    <a href="#">
                        <img src="../assets/recommend/coll.png" alt="">
                    </a>
                    <br>
                    <span>130</span>人收藏
                </li>
                <li>
                    <a href="#">
                        <img src="../assets/recommend/coll.png" alt="">
                    </a>
                    <br>
                    <span>130</span>人收藏 
                </li>
                <li>
                    <a href="#">
                        <img src="../assets/recommend/coll.png" alt="">
                    </a>
                    <br>
                    <span>130</span>人收藏        
                </li>
            </ul>
            <div id="d3"></div>
         </div>
        <f></f>
    </div>
</template>

<script>
import header from './header.vue'
import footer from './footer.vue'
export default {
    data(){
        return{}
    },
    components:{
        "h":header,
        "f":footer,
    }

}
</script>

<style>
.re>img{
    width:100%;
    height:300px;
}
#re{
    width:1200px;
    margin:0 auto;
    text-align: center;
}
#re>ul>li>p{
    color:black;
}
#re>ul{
    display:flex;
    width:400px;
    justify-content: space-between;
    list-style: none;
}
#re>ul>li>a>img{
    width:30px;
    height:30px;
}
#p_1,#ul_1{
    float: left;
}
#d3{
    clear:both;
}
</style>
