import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import footer from './components/footer.vue'
import header from './components/header.vue'
import login from './components/login.vue'
import register from './components/register.vue'
import index from './components/index.vue'
import details3 from './components/details/details3.vue'
import ingredients from './components/details/ingredients.vue'
import recommend from './components/recommend.vue'
import login1 from './components/login1.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',redirect:"index"},
    {path:'/footer',component:footer},
    {path:'/header',component:header},
    {path:'/login',component:login},
    {path:'/register',component:register},
    {path:'/index',component:index},
    {path:'/details3',component:details3},
    {path:'/ingredients',component:ingredients},
    {path:'/recommend',component:recommend},
    {path:'/recommend',component:recommend},
    {path:'/login1',component:login1},
  ]
})
