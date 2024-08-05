import { createRouter, createWebHistory } from 'vue-router'
import PlannerView from '../views/PlannerView.vue'
import RecipesView from '@/views/RecipesView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'planner',
      component: PlannerView
    },
    {
      path: '/recipes',
      name: 'recipes',
      component: RecipesView
    }
  ]
})

export default router
