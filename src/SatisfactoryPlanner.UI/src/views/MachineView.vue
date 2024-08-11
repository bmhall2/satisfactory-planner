<script setup>

  import { getMachine, updateMachine, deleteMachine } from "../clients/machine"
  import { searchRecipes } from "../clients/recipe"
  import { ref, watchEffect } from 'vue'

  const props = defineProps({
    factoryId: String,
    id: String
  })

  const machine = ref()
  const recipes = ref()
  const isEdit = ref(false)
  const isDelete = ref(false);

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
    isEdit.value = false;
  }

  async function remove() {
    await deleteMachine(props.id);
    machine.value = null;
    isDelete.value = true;
  }

</script>

<template>
    <div>
        <RouterLink class="factory" :to="{ name: 'Factory', params: { id: props.factoryId } }">
            <div>Back to Factory</div>
        </RouterLink>

        <div v-if="machine">

            <div class="info">
                <div class="name">{{ machine.machineType }}</div>
                <button class="action-button" @click="isEdit = !isEdit">Edit</button>
                <button class="action-button" @click="remove()">Delete</button>
            </div>

            <div v-if="!isEdit">

                <div class="produced-list">
                    <div v-for="result in machine.recipe.results">
                        <div class="result">{{ result.productionItem.name }} x {{ result.producedPerMinute * machine.clockSpeed }}</div>
                    </div>
                </div>

                <div class="recipe-name"><span>Recipe: </span>{{ machine.recipe.name }}</div>
                <div class="clock-speed"><span>Clockspeed:</span>{{ machine.clockSpeed }}</div>
            </div>
            
        </div>

        <div v-if="isEdit">

            <div class="edit-property">
                <div>Recipe:</div>
                <select v-model="editRecipeId">
                    <option v-for="recipe in recipes" v-bind:value="recipe.id">
                        {{recipe.name}}
                    </option>
                </select>
            </div>

            <div class="edit-property">
                <div>ClockSpeed:</div>
                <input type="text" v-model="editClockSpeed">
            </div>

            <button @click="edit">Submit</button>

        </div>

        <div v-if="isDelete">
            Machine deleted successfully
        </div>

    </div>
</template>
  
<style scoped>
    .info {
        display: flex;
        flex-direction: row;
        gap: 10px;
    }

    .name {
        color: var(--color-heading);
        font-size: 40px;
        font-weight: bold;
    }

    .action-button {
        height: 40px;
        width: 50px;
    }

    .section-name {
        font-size: 30px;
        color: var(--color-heading);
    }

    .edit-property {
        display: flex;
    }

    .result {
        color: var(--color-heading);
        font-size: 20px;
        font-weight: bold;
    }
    
</style>
  