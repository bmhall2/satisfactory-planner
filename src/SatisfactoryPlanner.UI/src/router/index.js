import { createRouter, createWebHistory } from 'vue-router'
import PlannerView from '../views/PlannerView.vue'
import RecipesView from '@/views/RecipesView.vue'
import RecipeView from '@/views/RecipeView.vue'
import FactoryView from '@/views/FactoryView.vue'
import MachineView from '@/views/MachineView.vue'
import NewMachine from '@/views/NewMachine.vue'

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
    },
    {
      path: '/recipe/:id',
      name: 'Recipe',
      component: RecipeView,
      props: true
    },
    {
      path: '/factory/:id',
      name: 'Factory',
      component: FactoryView,
      props: true
    },
    {
      path: '/machine/:id',
      name: 'Machine',
      component: MachineView,
      props: true
    },
    {
      path: '/machine/new/:factoryId',
      name: 'NewMachine',
      component: NewMachine,
      props: true
    }
  ]
})

export default router
