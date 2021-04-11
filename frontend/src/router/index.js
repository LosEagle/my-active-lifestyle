import VueRouter from 'vue-router'
import Dashboard from '../components/Dashboard.vue'

const routes = [{
    path: '/',
    name: 'Dashboard',
    component: Dashboard,
}]

const router = new VueRouter({
    routes,
})

export default router
