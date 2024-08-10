<script setup>

  import { getFactoryConnection, updateFactoryConnection, deleteFactoryConnection } from "../clients/factoryconnection"
  import { ref, watchEffect } from 'vue'

  const props = defineProps({
    factoryId: String,
    id: String
  })

  const factoryConnection = ref()
  const isEdit = ref(false)
  const isDelete = ref(false);

  const editAmount = defineModel('editAmount');

  watchEffect(
    () => fetchData(props.id)
  )

  async function fetchData(id) {
    factoryConnection.value = await getFactoryConnection(id)
    editAmount.value = factoryConnection.value.amount
  }

  async function edit() {
    factoryConnection.value = await updateFactoryConnection(props.id, editAmount.value)
    isEdit.value = false;
  }

  async function remove() {
    await deleteFactoryConnection(props.id);
    factoryConnection.value = null;
    isDelete.value = true;
  }

</script>

<template>
    <div>
        <RouterLink class="factory" :to="{ name: 'Factory', params: { id: props.factoryId } }">
            <div>Back to Factory</div>
        </RouterLink>

        <div v-if="factoryConnection">

            <div class="info">
                <div class="name">{{ factoryConnection.exportingFactory.name }} To {{ factoryConnection.importingFactory.name }}</div>
                <button class="action-button" @click="isEdit = !isEdit">Edit</button>
                <button class="action-button" @click="remove()">Delete</button>
            </div>

            <div v-if="!isEdit">
                <div><span>Production Item: </span>{{ factoryConnection.productionItem.name }}</div>
                <div><span>Amount: </span>{{ factoryConnection.amount }}</div>
            </div>
            
        </div>

        <div v-if="isEdit">

            <div class="edit-property">
                <div>Amount: </div>
                <input type="text" v-model="editAmount">
            </div>

            <button @click="edit">Submit</button>

        </div>

        <div v-if="isDelete">
            Connection deleted successfully
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
  