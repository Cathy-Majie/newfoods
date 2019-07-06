<template>
    <div>  
  <ul>  
    <li v-for="(item,index) in nav" :key="index"
        :class="{active: index == tab_nav.ul1}" 
        @click="tab_nav_fn('ul1',index)"> {{item}}</li>  
  </ul>  
  <ol>
    <li v-for="(item,index) in list" v-show="index == tab_nav.ul1" :key="index">{{item}}</li>
  </ol>
</div> 
</template>
<script>
export default{
        data(){  
          return{
            nav: ['苹果','香蕉','桃子'],
            list:[
                '苹果苹果苹果苹果苹果苹果苹果苹果苹果苹果',
                '香蕉香蕉香蕉香蕉香蕉香蕉香蕉香蕉香蕉香蕉',
                '桃子桃子桃子桃子桃子桃子桃子桃子桃子桃子'
            ],
            //列表  
            tab_nav: {
                ul1: '0'
            }
          }
        },  
        methods: {  
            tab_nav_fn(key,index){
                this.tab_nav["ul1"] = index;
                console.log(key)
            }
        }  
    }
</script>

<style>
ul li.active{color:red;}
ul li{cursor:pointer;}
</style>
