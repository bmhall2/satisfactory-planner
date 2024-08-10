<script setup>

import { getFactoriesByPlaythrough } from "../clients/factory"
import { ref, watchEffect } from 'vue'

const factories = ref()

watchEffect(
  () => fetchData()
)

async function fetchData() {
  factories.value = await getFactoriesByPlaythrough('71a6eeda-f574-4b85-a822-475ed5dcf099')
}

</script>

<template>
  <div>
    <div v-if="factories">
      <h1>Factories</h1>
      <div class="factories">
        <div v-for="factory in factories">
          <RouterLink class="factory" :to="{ name: 'Factory', params: { id: factory.id } }">
            <div>{{ factory.name }}</div>
            <img class="factory-image" src="@/assets/images/factory.png" />
          </RouterLink>
        </div>
        <RouterLink class="factory" :to="{ name: 'NewFactory' }">
            <div>New Factory</div>
            <img class="factory-image" :src="`/src/assets/images/plus.png`" />
        </RouterLink>
      </div>
    </div>
  </div>
</template>

<style scoped>
h1 {
  color: var(--color-heading);
}

.factories {
  display: flex;
  flex-flow: row wrap;
}

.factory {
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

.factory-image {
  max-width: 90%
}
</style>