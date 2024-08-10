import { createRouter, createWebHistory } from 'vue-router'
import PlannerView from '../views/PlannerView.vue'
import RecipesView from '@/views/RecipesView.vue'
import RecipeView from '@/views/RecipeView.vue'
import FactoryView from '@/views/FactoryView.vue'
import MachineView from '@/views/MachineView.vue'
import NewMachine from '@/views/NewMachine.vue'
import ExtractorView from '@/views/ExtractorView.vue'
import NewExtractorView from '@/views/NewExtractorView.vue'

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
      path: '/factory/:factoryId/machine/:id',
      name: 'Machine',
      component: MachineView,
      props: true
    },
    {
      path: '/factory/:factoryId/machine/new/',
      name: 'NewMachine',
      component: NewMachine,
      props: true
    },
    {
      path: '/factory/:factoryId/extractor/:id',
      name: 'Extractor',
      component: ExtractorView,
      props: true
    },
    {
      path: '/factory/:factoryId/extractor/new/',
      name: 'NewExtractor',
      component: NewExtractorView,
      props: true
    }
  ]
})

export default router
