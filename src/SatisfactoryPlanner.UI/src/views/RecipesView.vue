<script setup>

import { searchRecipes } from "../clients/recipe"
import { ref, watchEffect } from 'vue'

const recipes = ref()

const recipeSearchTerm = defineModel('recipeSearchTerm', { default: ""});

watchEffect(
  () => fetchData()
)

async function fetchData() {
  recipes.value = await searchRecipes()
}

</script>

<template>
  <div>
    <div v-if="recipes">
      <h1>Recipes</h1>
      <div class="machine-property">
        <div>Search:</div>
        <input type="text" v-model="recipeSearchTerm">
      </div>
      <div class="recipes">
        <div v-for="recipe in recipes.filter((r) => r.name.toLowerCase().includes(recipeSearchTerm.toLowerCase()))">
          <RouterLink class="recipe" :to="{ name: 'Recipe', params: { id: recipe.id } }">
            <div>{{ recipe.name }}</div>
            <img class="recipe-image" v-if="recipe.results[0]"
              :src="`/src/assets/images/production-items/${recipe.results[0].productionItem.name}.png`" />
          </RouterLink>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
h1 {
  color: var(--color-heading);
}

.recipes {
  display: flex;
  flex-flow: row wrap;
}

.recipe {
  border: 1px solid var(--vt-c-ghost);
  border-radius: 10px;
  height: 200px;
  width: 200px;
  margin: 5px 5px;

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.recipe-image {
  max-width: 90%
}
</style>