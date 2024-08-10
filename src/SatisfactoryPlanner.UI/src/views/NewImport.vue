<script setup>

import { createFactoryConnection  } from "../clients/factoryconnection"
import { searchProductionItems  } from "../clients/productionitem"
import { getFactory, getFactoriesByPlaythrough } from "../clients/factory"
import { ref, watchEffect } from 'vue'

const props = defineProps({
    factoryId: String
})

const importConnection = ref()
const productionItems = ref()
const factory = ref()
const factories = ref()

const exportingFactoryId = defineModel('exportingFactoryId');
const productionItemId = defineModel('productionItemId');
const amount = defineModel('amount', { default: "0"});

watchEffect(
    () => fetchData(props.factoryId)
)

async function fetchData(id) {
    factory.value = await getFactory(id);
    productionItems.value = await searchProductionItems();
    factories.value = await getFactoriesByPlaythrough('71a6eeda-f574-4b85-a822-475ed5dcf099');
}

async function create() {
    importConnection.value = await createFactoryConnection(exportingFactoryId.value, props.factoryId, productionItemId.value, amount.value)
}

</script>

<template>
    <div v-if="factory && factories && productionItems">
        <RouterLink class="factory" :to="{ name: 'Factory', params: { id: props.factoryId } }">
            <div>Back to Factory</div>
        </RouterLink>
        <div v-if="!importConnection">
            <div class="section-name">Create New Import Connection for {{ factory.name }}</div>
            <div>
                <div class="create-property" v-if="factories">
                    <div>Exporting Factory:</div>

                    <select v-model="exportingFactoryId">
                            <option v-for="exportingFactory in factories.filter((f) => f.id != props.factoryId)" v-bind:value="exportingFactory.id">
                                {{ exportingFactory.name }}
                            </option>
                    </select>
                </div>

                <div class="create-property">
                    <div>Production Item:</div>
                    <select v-model="productionItemId">
                        <option v-for="productionItem in productionItems" v-bind:value="productionItem.id">
                            {{ productionItem.name }}
                        </option>
                    </select>
                </div>

                <div class="create-property">
                    <div>Amount:</div>
                    <input type="text" v-model="amount">
                </div>

                <button v-if="exportingFactoryId && productionItemId && amount" @click="create">Submit</button>
                
            </div>
        </div>
        <div v-if="importConnection">
            Import connection created successfully
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
</style>
