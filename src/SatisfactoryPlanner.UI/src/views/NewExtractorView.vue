<script setup>

import { createExtractor, getExtractorProductionItems  } from "../clients/extractor"
import { ref, watchEffect } from 'vue'

const props = defineProps({
    factoryId: String
})

const extractor = ref()
const extractorProductionItems = ref()

const extractorType = defineModel('extractorType');
const nodePurity = defineModel('nodePurity');
const productionItemId = defineModel('productionItemId');
const clockSpeed = defineModel('clockSpeed', { default: "1"});

const extractorTypes = {
    "MinerMk1" : "MinerMk1",
    "MinerMk2" : "MinerMk2",
    "MinerMk3" : "MinerMk3",
    "OilExtractor" : "Oil Extractor",
    "WaterExtractor" : "Water Extractor",
    "ResourceWellPressurizer" : "Resource Well Pressurizer",
    "ResourceWellExtractor" : "ResourceWellExtractor"
}

const extractorTypesRequirePurity = [
    "MinerMk1", "MinerMk2", "MinerMk3", "OilExtractor", "ResourceWellExtractor"
]

const nodePurityTypes = {
    "Impure" : "Impure",
    "Normal" : "Normal",
    "Pure" : "Pure"
}

watchEffect(
    () => fetchData(extractorType.value)
)

async function fetchData(id) {
    if (extractorType.value) {
        extractorProductionItems.value = await getExtractorProductionItems(extractorType.value)
        nodePurity.value = null
    }
}

async function create() {
    extractor.value = await createExtractor(props.factoryId, extractorType.value, nodePurity.value, productionItemId.value, clockSpeed.value)
}

</script>

<template>
    <div>
        <RouterLink class="factory" :to="{ name: 'Factory', params: { id: props.factoryId } }">
            <div>Back to Factory</div>
        </RouterLink>
        <div v-if="!extractor">
            <div class="section-name">Create New Extractor</div>
            <div>
                <div class="extractor-property">
                    <div>Extractor Type:</div>

                    <select v-model="extractorType">
                        <option v-for="(item, key) in extractorTypes" :value="key">
                            {{ item }}
                        </option>
                    </select>
                </div>
                <div v-if="extractorType">
                    <div class="extractor-property">
                        <div>Extraction Item:</div>
                        <select v-model="productionItemId">
                            <option v-for="extractorProductionItem in extractorProductionItems" v-bind:value="extractorProductionItem.productionItem.id">
                                {{ extractorProductionItem.productionItem.name }}
                            </option>
                        </select>
                    </div>

                    <div v-if="extractorTypesRequirePurity.includes(extractorType)" class="extractor-property">
                        <div>Node Purity:</div>
                        <select v-model="nodePurity">
                            <option v-for="(item, key) in nodePurityTypes" v-bind:value="key">
                                {{ item }}
                            </option>
                        </select>
                    </div>

                    <div class="extractor-property">
                        <div>Clockspeed:</div>
                        <input type="text" v-model="clockSpeed">
                    </div>

                    <button v-if="extractorType && productionItemId && clockSpeed && (!extractorTypesRequirePurity.includes(extractorType) || nodePurity)" @click="create">Submit</button>
                </div>
            </div>
        </div>
        <div v-if="extractor">
            {{ extractor.extractorType }} created successfully
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

.extractor-property {
    display: flex;
}
</style>