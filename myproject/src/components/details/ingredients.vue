<template>
    <div>
        <h></h>
        <div class="in1">
             <img src="../../assets/ingredient/ingredient.jpg" alt="">
        </div>
        <div>
            <div class="category">
                <h3>时令与热门</h3>
                <ul>
                    <li v-for="(item,index) of list" :key="index">
                        <a href="javascript:;">{{item.iname}}</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <h3>肉禽类</h3>
                <ul>
                    <li v-for="(item,index) of list1" :key="index">
                        <a href="javascript:;">{{item.iname1}}</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <h3>水产品类</h3>
                <ul>
                    <li v-for="(item,index) of list2" :key="index">
                        <a href="javascript:;">{{item.iname2}}</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <h3>蔬菜类</h3>
                <ul>
                    <li v-for="(item,index) of list3" :key="index">
                        <a href="javascript:;">{{item.iname3}}</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <h3>果品类</h3>
                <ul>
                    <li v-for="(item,index) of list4" :key="index">
                        <a href="javascript:;">{{item.iname4}}</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <h3>米面豆乳</h3>
                <ul>
                    <li v-for="(item,index) of list5" :key="index">
                        <a href="javascript:;">{{item.iname5}}</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <h3>调味品</h3>
                <ul>
                    <li v-for="(item,index) of list6" :key="index">
                        <a href="javascript:;">{{item.iname6}}</a>
                    </li>
                </ul>
            </div>
            <div class="category">
                <h3>肉禽类</h3>
                <ul>
                    <li v-for="(item,index) of list7" :key="index">
                        <a href="javascript:;">{{item.iname7}}</a>
                    </li>
                </ul>
            </div>
        </div>
        <f></f>
    </div>
</template>

<script>
import header from "../header.vue"
import footer from "../footer.vue"
    export default{
        data(){
            return{
                list:[],
                list1:[],
                list2:[],
                list3:[],
                list4:[],
                list5:[],
                list6:[],
                list7:[],
            }
        },
        components:{
            //注册子组件
            "h":header,
            "f":footer, 
        },
        created(){
            var url="ingredients";
            this.axios.get(url).then(result=>{
                console.log(result.data);
                this.list=result.data;   
         });
            var url1="ingredients1";
            this.axios.get(url1).then(result=>{
                console.log(result.data);
                this.list1=result.data;
            });  
            var url2="ingredients2";
            this.axios.get(url2).then(result=>{
                console.log(result.data);
                this.list2=result.data;
            });  
            var url3="ingredients3";
            this.axios.get(url3).then(result=>{
                console.log(result.data);
                this.list3=result.data;
            });  
            var url4="ingredients4";
            this.axios.get(url4).then(result=>{
                console.log(result.data);
                this.list4=result.data;
            });  
            var url5="ingredients5";
            this.axios.get(url5).then(result=>{
                console.log(result.data);
                this.list5=result.data;
            });  
            var url6="ingredients6";
            this.axios.get(url6).then(result=>{
                console.log(result.data);
                this.list6=result.data;
            });  
            var url7="ingredients7";
            this.axios.get(url7).then(result=>{
                console.log(result.data);
                this.list7=result.data;
            });  
        },
    }
</script>

<style>
.in1{
    margin:0 auto;
    text-align: center;
    margin-bottom: 30px;
}
.category{
    display:flex;
    width:990px;
    margin: 0 auto;
    margin-bottom:30px;
}
.cate{
    width:990px;
    height:2561px;
    margin: 0 auto;
}
.category>h3{
    width:186px;
    background-color:#f8f8f8;
    text-align: center;
    line-height:14;
    margin:0px;
    border-right:red;
    border-right:1px solid #eeeeee;
}
.category>ul{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    padding: 0px;
    background-color:#f8f8f8;
    margin:0px;
    width:804px;
    text-align: center;
    line-height:47px;
}
.category>ul>li{
    list-style: none;
    margin-top:10px;
    width:16%;
    border-right:1px solid #eeeeee;
    border-bottom:1px solid #eeeeee;
}
.category>ul>li>a{
    text-decoration: none;
    color:#000;
}
</style>
