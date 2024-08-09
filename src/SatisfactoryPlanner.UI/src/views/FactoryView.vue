<script setup>

  import { getFactory, getFactorySummary } from "../clients/factory"
  import { ref, watchEffect } from 'vue'

  const props = defineProps({
    id: String
  })

  const factory = ref()
  const summary = ref()

  watchEffect(
    () => fetchData(props.id)
  )

  async function fetchData(id) {
    factory.value = await getFactory(id)
    summary.value = await getFactorySummary(id)
  }

</script>

<template>
    <div>
      <div class="factory" v-if="factory">
        <div class="info">
            <div class="name">{{ factory.name }}</div>
        </div>

        <div class="machine-section">
            <div class="section-name">Machines</div>
            <div class="factory-list">
                <div v-for="machine in factory.machines">
                    <RouterLink class="factory-object" :to="{ name: 'Machine', params: { id: machine.id } }">
                        <div>{{ machine.machineType }}</div>
                        <img class="factory-object-image" :src="`/src/assets/images/machines/${machine.machineType.toLowerCase()}.png`" />
                        <div class="factory-object-result-list" v-for="result in machine.recipe.results">
                            <img class="factory-output-image" :src="`/src/assets/images/production-items/${result.productionItem.name.toLowerCase()}.png`" />
                        </div>
                    </RouterLink>
                </div>
                <RouterLink class="factory-object" :to="{ name: 'NewMachine', params: { factoryId: factory.id } }">
                    <div>New Machine</div>
                    <img class="factory-object-image" :src="`/src/assets/images/plus.png`" />
                </RouterLink>
            </div>
        </div>

        <div class="miners">
            <div class="section-name">Miners</div>
            <div class="factory-list">
                <div class="factory-object" v-for="miner in factory.miners">
                    <div>Miner Mk.{{ miner.mk }}</div>
                    <img class="factory-object-image" :src="`/src/assets/images/extractors/mk${miner.mk.toLowerCase()}.png`" />
                </div>
                <div class="factory-object">
                    <div>New Miner</div>
                    <img class="factory-object-image" :src="`/src/assets/images/plus.png`" />
                </div>
            </div>
        </div>

        <div class="summary">
            <div class="section-name">Summary</div>
        </div>
      </div>
    </div>
</template>
  
<style scoped>

    .factory {
        display: flex;
        flex-direction: column;
    }

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

    .factory-list {
        display: flex;
        flex-wrap: wrap;
    }

    .factory-object {
        height: 100px;
        width: 100px;
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
        max-height: 30%;
        align-self: flex-end;
    }

    .factory-output-image {
        max-width: 100%;
        max-height: 100%;
    }

    .section-name {
        font-size: 30px;
        color: var(--color-heading);
    }
</style>
  