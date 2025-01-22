<template>
    <div class="max-w-[750px] py-8 px-2 flex flex-col shadow-xl rounded-xl bg-white">
      <h1 class="text-2xl font-bold mb-4">Casinos</h1>
      <!-- Loading State -->
      <p v-if="!casinos">Loading casinos...</p>
      <!-- Casino Cards -->
      <div v-else class="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <div
          v-for="casino in casinos"
          :key="casino.id"
          class="casino-card p-4 shadow-lg rounded-lg bg-gray-50"
        >
          <h2 class="text-lg font-semibold">{{ casino.name }}</h2>
          <p class="text-sm text-gray-600">{{ casino.city }}, {{ casino.cstate }}</p>
          <p class="text-sm mt-2"><strong>Type:</strong> {{ casino.casinotype }}</p>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { ref } from 'vue';
  
  const casinos = ref(null);
  
  // Fetch data from the API
  async function fetchCasinos() {
    const { data } = await useFetch('/api/casinos');
    casinos.value = data.value;
  }
  
  fetchCasinos();
  </script>
  