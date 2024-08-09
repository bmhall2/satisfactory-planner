<script setup>

  import { getMachine, updateMachine } from "../clients/machine"
  import { searchRecipes } from "../clients/recipe"
  import { ref, watchEffect } from 'vue'

  const props = defineProps({
    id: String
  })

  const machine = ref()
  const recipes = ref()
  const isEdit = ref(false)

  const editRecipeId = defineModel('editRecipeId');
  const editClockSpeed = defineModel('editClockSpeed');

  watchEffect(
    () => fetchData(props.id)
  )

  async function fetchData(id) {
    machine.value = await getMachine(id)
    recipes.value = await searchRecipes(null, machine.value.machineType)
    editRecipeId.value = machine.value.recipeId
    editClockSpeed.value = machine.value.clockSpeed
  }

  async function edit() {
    machine.value = await updateMachine(props.id, editRecipeId.value, editClockSpeed.value)
  }

</script>

<template>
    <div>
        <RouterLink class="factory" :to="{ name: 'Factory', params: { id: machine.factoryId } }">
            <div>Back to Factory</div>
        </RouterLink>
        <div v-if="machine">
            <div class="info">
                <div class="name">{{ machine.machineType }}</div>
            </div>
            <div class="recipe-name"><span>Recipe: </span>{{ machine.recipe.name }}</div>
            <div class="clock-speed"><span>Clockspeed:</span>{{ machine.clockSpeed }}</div>
            <button @click="isEdit = !isEdit">Edit</button>
            
        </div>
        <div v-if="isEdit">
            <select v-model="editRecipeId">
                <option v-for="recipe in recipes" v-bind:value="recipe.id">
                    {{recipe.name}}
                </option>
            </select>
            <input type="text" v-model="editClockSpeed">
            <button @click="edit">Submit</button>
        </div>
    </div>
</template>
  
<style scoped>
    .info {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .name {
        color: var(--color-heading);
        font-size: 40px;
        font-weight: bold;
    }

    .section-name {
        font-size: 30px;
        color: var(--color-heading);
    }
</style>
  