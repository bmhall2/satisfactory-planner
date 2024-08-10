<script setup>

  import { getExtractor, updateExtractor, deleteExtractor } from "../clients/extractor"
  import { ref, watchEffect } from 'vue'

  const props = defineProps({
    factoryId: String,
    id: String
  })

  const extractor = ref();
  const isEdit = ref(false);
  const isDelete = ref(false);

  const editClockSpeed = defineModel('editClockSpeed');

  watchEffect(
    () => fetchData(props.id)
  )

  async function fetchData(id) {
    extractor.value = await getExtractor(id);
    editClockSpeed.value = extractor.value.clockSpeed;
  }

  async function edit() {
    extractor.value = await updateExtractor(props.id, editClockSpeed.value);
    isEdit.value = false;
  }

  async function remove() {
    await deleteExtractor(props.id);
    extractor.value = null;
    isDelete.value = true;
  }

</script>

<template>
    <div>
        <RouterLink class="factory" :to="{ name: 'Factory', params: { id: props.factoryId } }">
            <div>Back to Factory</div>
        </RouterLink>
        <div v-if="extractor">
            <div class="info">
                <div class="name">{{ extractor.extractorType }}</div>
                <button class="action-button" @click="isEdit = !isEdit">Edit</button>
                <button class="action-button" @click="remove()">Delete</button>
            </div>

            <div v-if="!isEdit">
                <div><span>Extracts: </span>{{ extractor.productionItem.name }}</div>
                <div v-if="extractor.nodePurity"><span>Purity: </span>{{ extractor.nodePurity }}</div>
                <div><span>ClockSpeed:</span>{{ extractor.clockSpeed }}</div>
            </div>
            
        </div>
        <div v-if="isEdit">
            <div class="edit-property">
                <div>ClockSpeed:</div>
                <input type="text" v-model="editClockSpeed">
            </div>
            <button @click="edit">Submit</button>
        </div>
        <div v-if="isDelete">
            Extractor deleted successfully
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
</style>
  