<script setup>

import { getFactory, getFactorySummary, deleteFactory } from "../clients/factory"
import { ref, watchEffect } from 'vue'

const props = defineProps({
    id: String
})

const factory = ref()
const summary = ref()
const isDelete = ref(false);

watchEffect(
    () => fetchData(props.id)
)

async function fetchData(id) {
    factory.value = await getFactory(id)
    summary.value = await getFactorySummary(id)
}

async function remove() {
    await deleteFactory(props.id);
    factory.value = null;
    summary.value = null;
    isDelete.value = true;
  }

</script>

<template>
    <div>
        <RouterLink :to="{ name: 'planner' }">
            <div>Back to Factories</div>
        </RouterLink>
        <div class="factory-section" v-if="factory">
            <div class="info">
                <div class="header-name">{{ factory.name }}</div>
                <button class="action-button" @click="remove()">Delete</button>
            </div>

            <div>
                <div class="section-name">Machines</div>
                <div class="factory-list">
                    <div v-for="machine in factory.machines">
                        <RouterLink class="factory-object"
                            :to="{ name: 'Machine', params: { factoryId: props.id, id: machine.id } }">

                            <div>{{ machine.machineType }}</div>

                            <img class="factory-object-image"
                                :src="`/src/assets/images/machines/${machine.machineType}.png`" />

                            <div class="factory-object-result-list">

                                <div v-for="result in machine.recipe.results">
                                    <img class="factory-output-image"
                                        :src="`/src/assets/images/production-items/${result.productionItem.name}.png`" />
                                </div>

                            </div>

                        </RouterLink>
                    </div>
                    <RouterLink class="factory-object" :to="{ name: 'NewMachine', params: { factoryId: factory.id } }">
                        <div>New Machine</div>
                        <img class="factory-object-image" :src="`/src/assets/images/plus.png`" />
                    </RouterLink>
                </div>
            </div>

            <div>
                <div class="section-name">Extractors</div>
                <div class="factory-list">
                    <div v-for="extractor in factory.extractors">
                        <RouterLink class="factory-object"
                            :to="{ name: 'Extractor', params: { factoryId: props.id, id: extractor.id } }">
                            <div>{{ extractor.extractorType }}</div>
                            <img class="factory-object-image"
                                :src="`/src/assets/images/extractors/${extractor.extractorType}.png`" />
                            <div class="factory-object-result-list">
                                <img class="factory-output-image"
                                    :src="`/src/assets/images/production-items/${extractor.productionItem.name.replaceAll('.', '')}.png`" />
                            </div>
                        </RouterLink>
                    </div>
                    <RouterLink class="factory-object"
                        :to="{ name: 'NewExtractor', params: { factoryId: factory.id } }">
                        <div>New Extractor</div>
                        <img class="factory-object-image" :src="`/src/assets/images/plus.png`" />
                    </RouterLink>
                </div>
            </div>

        </div>

        <div v-if="summary" class="factory-section">

            <div class="header-name">Summary</div>

            <div v-if="summary.balances.length > 0">
                <div class="section-name">Balances</div>

                <div class="factory-list">
                    <div class="balance" v-for="balance in summary.balances" :title="`${balance.productionItem.name}`">
                        <div class="surplus" v-if="balance.amount > 0">{{ balance.amount }}</div>
                        <div class="deficit" v-if="balance.amount < 0">{{ -balance.amount }}</div>
                        <img class="factory-object-image"
                            :src="`/src/assets/images/production-items/${balance.productionItem.name.replaceAll('.', '')}.png`" />
                    </div>
                </div>
            </div>

            <div v-if="(!summary.balances || summary.balances.length == 0)">No Balances</div>

            <div>
                <div class="section-name">Imports</div>

                <div class="factory-list">
                    <div v-for="factoryImport in factory.importConnections">

                        <RouterLink class="factory-object"
                            :to="{ name: 'Connection', params: { factoryId: props.id, id: factoryImport.id } }">

                            <div>{{ factoryImport.amount }}</div>

                            <img class="factory-object-image"
                                :src="`/src/assets/images/production-items/${factoryImport.productionItem.name.replaceAll('.', '')}.png`" />

                        </RouterLink>

                    </div>

                    <RouterLink class="factory-object" :to="{ name: 'NewImport', params: { factoryId: factory.id } }">
                        <div>New Import</div>
                        <img class="factory-object-image" :src="`/src/assets/images/plus.png`" />
                    </RouterLink>
                </div>
            </div>

            <div>
                <div class="section-name">Exports</div>

                <div class="factory-list">

                    <div v-for="factoryExport in factory.exportConnections">

                        <RouterLink class="factory-object"
                            :to="{ name: 'Connection', params: { factoryId: props.id, id: factoryExport.id } }">

                            <div>{{ factoryExport.amount }}</div>

                            <img class="factory-object-image"
                                :src="`/src/assets/images/production-items/${factoryExport.productionItem.name.replaceAll('.', '')}.png`" />

                        </RouterLink>

                    </div>

                    <RouterLink class="factory-object" :to="{ name: 'NewExport', params: { factoryId: factory.id } }">
                        <div>New Export</div>
                        <img class="factory-object-image" :src="`/src/assets/images/plus.png`" />
                    </RouterLink>
                </div>
            </div>
        </div>

        <div v-if="isDelete">
            Machine deleted successfully
        </div>

    </div>
</template>

<style scoped>
.factory-section {
    display: flex;
    flex-direction: column;
}

.info {
    display: flex;
    align-items: center;
    gap: 10px;
}

.header-name {
    color: var(--color-heading);
    font-size: 40px;
    font-weight: bold;
}

.factory-list {
    display: flex;
    flex-wrap: wrap;
}

.factory-object {
    height: 150px;
    width: 150px;
    margin: 5px 5px;

    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    border: 1px solid var(--vt-c-ghost);
    border-radius: 10px;
}

.balance {
    height: 158px;
    width: 158px;
    margin: 5px 5px;

    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    border: 1px solid var(--vt-c-ghost);
    border-radius: 10px;
}

.factory-object-image {
    max-width: 90%;
    max-height: 80%;
}

.factory-object-result-list {
    margin-top: -25px;
    height: 30px;
    width: 100%;

    display: flex;
    flex-flow: row-reverse;
}

.factory-output-image {
    width: 30px;
    height: 30px;
}

.section-name {
    font-size: 30px;
    color: var(--color-heading);
}

.balance-list {
    display: flex;
    flex-wrap: wrap;
}

.surplus {
    font-weight: bold;
    color: chartreuse
}

.deficit { font-weight: bold;
    color: red
}

</style>