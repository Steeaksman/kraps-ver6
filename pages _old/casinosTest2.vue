<template>
    <div class="max-w-[750px] py-8 px-2 flex flex-col shadow-xl rounded-xl bg-white">
      <div class="profile flex items-center">
        <h1>Casinos</h1>
      </div>
      <!-- Loading State -->
      <p v-if="!casinos">Loading casinos...</p>
      <div v-else>
        <div v-for="casino in casinos" :key="casino.id" class="casino-item">
          <h2>{{ casino.id }}</h2>
          <h2>{{ casino.name }}</h2>
          <p>{{ casino.city }}</p>
          <p>{{ casino.cstate }}</p>
          <p>{{ casino.casinotype }}</p>
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
  