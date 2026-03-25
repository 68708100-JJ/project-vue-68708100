import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const routes = [
  {
    path: '/home',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/contact',
    name: 'contact',
    component: () => import(/* webpackChunkName: "about" */ '../views/Contact.vue')
  },
  {
    path: '/product_api',
    name: 'product_api',
    component: () => import(/* webpackChunkName: "about" */ '../views/Product_api.vue')
  },
    {
    path: '/product_list',
    name: 'product_list',
    component: () => import(/* webpackChunkName: "about" */ '../views/Product_list.vue')
  },
    {
    path: '/gold',
    name: 'gold',
    component: () => import(/* webpackChunkName: "about" */ '../views/Gold.vue')
  },
    {
    path: '/show_customer',
    name: 'show_customer',
    component: () => import(/* webpackChunkName: "about" */ '../views/Show_customer.vue')
  },
    {
    path: '/show_employee',
    name: 'show_employee',
    component: () => import(/* webpackChunkName: "about" */ '../views/Show_employee.vue')
  },
    {
    path: '/register',
    name: 'register',
    component: () => import(/* webpackChunkName: "about" */ '../views/Register.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
