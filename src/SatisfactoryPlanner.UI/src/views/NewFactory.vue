<script setup>

import { createFactory } from "../clients/factory"
import { ref } from 'vue'

const factory = ref()
const name = defineModel('name');

async function create() {
    factory.value = await createFactory('71a6eeda-f574-4b85-a822-475ed5dcf099', name.value)
}

</script>

<template>
    <div>
        <RouterLink :to="{ name: 'planner' }">
            <div>Back to Factories</div>
        </RouterLink>
        <div v-if="!factory">
            <div class="section-name">Create New Factory</div>
            <div>
                <div class="create-property">
                    <div>Name:</div>
                    <input type="text" v-model="name">
                </div>

                <button v-if="name" @click="create">Submit</button>
            </div>
        </div>
        <div v-if="factory">
            Factory created successfully
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