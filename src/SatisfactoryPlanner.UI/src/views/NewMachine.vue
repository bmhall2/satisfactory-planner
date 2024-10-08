<script setup>

  import { createMachine } from "../clients/machine"
  import { searchRecipes } from "../clients/recipe"
  import { ref, watchEffect } from 'vue'

  const props = defineProps({
    factoryId: String
  })

  const machine = ref()
  const recipes = ref()

  const machineType = defineModel('machineType');
  const recipeId = defineModel('recipeId');
  const clockSpeed = defineModel('clockSpeed', { default: "1"});
  const number = defineModel('number', { default: 1 });

  const machineTypes = {
    "Smelter" : "Smelter",
    "Foundry" : "Foundry",
    "Constructor" : "Constructor",
    "Assembler" : "Assembler",
    "Manufacturer" : "Manufacturer",
    "Refinery" : "Refinery",
    "Packager" : "Packager",
    "Blender" : "Blender",
    "ParticleAccelerator" : "Particle Accelerator",
    "BiomassBurner" : "Biomass Burner",
    "CoalGenerator" : "Coal Generator",
    "FuelGenerator" : "Fuel Generator",
    "NuclearPowerPlant" : "Nuclear Power Plant"
  }

  watchEffect(
    () => fetchData(machineType.value)
  )

  async function fetchData(id) {
    if (machineType.value) {
        recipes.value = await searchRecipes(null, machineType.value)
    }
  }

  async function create() {
    for (let i = 0; i < number.value; i++) {
        machine.value = await createMachine(props.factoryId, machineType.value, recipeId.value, clockSpeed.value)
    }
  }

</script>

<template>
    <div>
        <RouterLink class="factory" :to="{ name: 'Factory', params: { id: props.factoryId } }">
            <div>Back to Factory</div>
        </RouterLink>
        <div v-if="!machine">
            <div class="section-name">Create New Machine</div>
            <div>
                <div class="machine-property">
                    <div>Machine Type:</div>

                    <select v-model="machineType">
                        <option v-for="(item, key) in machineTypes" :value="key">
                            {{item}}
                        </option>
                    </select>
                </div>
                <div v-if="machineType">
                    <div class="machine-property">
                        <div>Recipe:</div>
                        <select v-model="recipeId">
                            <option v-for="recipe in recipes" v-bind:value="recipe.id">
                                {{recipe.name}}
                            </option>
                        </select>
                    </div>

                    <div class="machine-property">
                        <div>Clockspeed:</div>
                        <input type="text" v-model="clockSpeed">
                    </div>

                    <div class="machine-property">
                        <div>Number:</div>
                        <input type="number" v-model="number">
                    </div>

                    <button v-if="recipeId && clockSpeed && number" @click="create">Submit</button>
                </div>
            </div>
        </div>
        <div v-if="machine">
            {{ machine.machineType }} created successfully
        </div>
        
    </div>
</template>
  
<style scoped>
    .info {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .section-name {
        font-size: 30px;
        color: var(--color-heading);
    }

    .section-name {
        font-size: 30px;
        color: var(--color-heading);
    }

    .machine-property {
        display: flex;
    }
</style>
  