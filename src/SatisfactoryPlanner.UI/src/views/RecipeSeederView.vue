<script setup>

import { searchProductionItems } from "../clients/productionitem"
import { getGuid } from "@/clients/recipe";
import { ref, watchEffect } from 'vue'

const productionItems = ref();
const recipeGuid = ref();

const recipeName = defineModel('recipeName');
const madeIn = defineModel('madeIn');

const ingredientProductionItemId = defineModel('ingredientProductionItemId');
const ingredientAmount = defineModel('ingredientAmount');

const resultProductionItemId = defineModel('resultProductionItemId');
const resultAmount = defineModel('resultAmount');

const recipeInsertOutput = defineModel('recipeInsertOutput');

const machineTypes = {
    1: "Smelter",
    2: "Foundry",
    3: "Constructor",
    4: "Assembler",
    5: "Manufacturer",
    6: "Refinery",
    7: "Packager",
    8: "Blender",
    9: "Particle Accelerator"
}

watchEffect(
    () => fetchData()
)

async function fetchData(id) {
    productionItems.value = await searchProductionItems();
}

async function generate() {
    recipeGuid.value = await getGuid();
    recipeInsertOutput.value = `INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('${recipeGuid.value}', '${recipeName.value}', ${madeIn.value});`
}

async function addIngredient() {
    let ingredientGuid = await getGuid();
    recipeInsertOutput.value += `\nINSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('${ingredientGuid}', '${recipeGuid.value}', '${ingredientProductionItemId.value}', ${ingredientAmount.value});`
}

async function addResult() {
    let resultGuid = await getGuid();
    recipeInsertOutput.value += `\nINSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('${resultGuid}', '${recipeGuid.value}', '${resultProductionItemId.value}', ${resultAmount.value});`
}

</script>

<template>
    <div>
        
        <div class="create-property">
            <div>Recipe Name:</div>
            <input type="text" v-model="recipeName">
        </div>

        <div class="create-property">
            <div>Made In:</div>

            <select v-model="madeIn">
                <option v-for="(item, key) in machineTypes" :value="key">
                    {{item}}
                </option>
            </select>
        </div>

        <button v-if="recipeName && madeIn" @click="generate">Submit</button>

        <div class="create-property">
            <div>Ingredient Item:</div>
            <input type="number" v-model="ingredientAmount">
            <select v-model="ingredientProductionItemId">
                <option v-for="productionItem in productionItems" v-bind:value="productionItem.id">
                    {{ productionItem.name }}
                </option>
            </select>
            <button v-if="ingredientAmount && ingredientProductionItemId" @click="addIngredient">Add Ingredient</button>
        </div>

        <div class="create-property">
            <div>Result Item:</div>
            <input type="number" v-model="resultAmount">
            <select v-model="resultProductionItemId">
                <option v-for="productionItem in productionItems" v-bind:value="productionItem.id">
                    {{ productionItem.name }}
                </option>
            </select>
            <button v-if="resultAmount && resultProductionItemId" @click="addResult">Add Result</button>
        </div>

        <div v-if="recipeInsertOutput">
            <textarea class="output" v-model="recipeInsertOutput"></textarea>
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

.create-property {
    display: flex;
}

.output {
    height: 500px;
    width: 1000px;
}

</style>
