import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import tuidanxinxi from '@/views/modules/tuidanxinxi/list'
    import jiedanjiesuan from '@/views/modules/jiedanjiesuan/list'
    import yewuleixing from '@/views/modules/yewuleixing/list'
    import yonghu from '@/views/modules/yonghu/list'
    import jiedanxinxi from '@/views/modules/jiedanxinxi/list'
    import jiedanyuan from '@/views/modules/jiedanyuan/list'
    import xiadanxinxi from '@/views/modules/xiadanxinxi/list'
    import messages from '@/views/modules/messages/list'
    import fuwuyewu from '@/views/modules/fuwuyewu/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '校园资讯',
        component: news
      }
          ,{
	path: '/tuidanxinxi',
        name: '退单信息',
        component: tuidanxinxi
      }
          ,{
	path: '/jiedanjiesuan',
        name: '接单结算',
        component: jiedanjiesuan
      }
          ,{
	path: '/yewuleixing',
        name: '业务类型',
        component: yewuleixing
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/jiedanxinxi',
        name: '接单信息',
        component: jiedanxinxi
      }
          ,{
	path: '/jiedanyuan',
        name: '接单员',
        component: jiedanyuan
      }
          ,{
	path: '/xiadanxinxi',
        name: '下单信息',
        component: xiadanxinxi
      }
          ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
          ,{
	path: '/fuwuyewu',
        name: '服务业务',
        component: fuwuyewu
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
