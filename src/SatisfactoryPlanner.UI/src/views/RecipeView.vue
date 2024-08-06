<script setup>

  import { getRecipe } from "../clients/recipe"
  import { ref, watchEffect } from 'vue'

  const props = defineProps({
    id: String
  })

  const recipe = ref()

  watchEffect(
    () => fetchData(props.id)
  )

  async function fetchData(id) {
    recipe.value = await getRecipe(id)
  }

</script>

<template>
    <div>
      <div v-if="recipe">
        <div class="info">
            <div class="name">{{ recipe.name }}</div>
            <div class="madeIn">({{ recipe.madeIn }})</div>
        </div>
        
        <div v-if="recipe.ingredients.length > 0">
            <h2>Ingredients</h2>
            <div>
                <div v-for="ingredient in recipe.ingredients">
                    <div>{{ ingredient.requiredPerMinute }} x {{ ingredient.productionItem.name }}</div>
                </div>
            </div>
        </div>
        <div v-if="recipe.results">
            <h2>Results</h2>
            <div>
                <div v-for="result in recipe.results">
                    <div>{{ result.producedPerMinute }} x {{ result.productionItem.name }}</div>
                </div>
            </div>
        </div>
      </div>
    </div>
</template>
  
<style scoped>
    .info {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .name {
        color: var(--color-heading);
        font-size: 40px;
        font-weight: bold;
    }

    .madeIn {
        font-size: 20px;
        font-weight: bold;
    }
</style>
  