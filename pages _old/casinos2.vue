<template>
  <div>
    <h1>Casinos</h1>
    <!-- Loading State -->
    <p >Loading casinos...</p>
<li v-for="casino in foos" :key="casino.id">
        <h2>{{ casino.id }}</h2>
        <h2>{{ casino.name }}</h2>
        <p> {{ casino.city }}</p>
        <p> {{ casino.cstate }}</p>
        <p> {{ casino.casinotype }}</p>
</li>
    <!-- Display List of Casinos -->
    <!-- <ul v-if="casinos.length > 0">
      <li v-for="casino in casinos" :key="casino.id">
        <h2>{{ casino.name }}</h2>
        <p>Location: {{ casino.location }}</p>
      </li>
    </ul> -->

    

    <!-- Error Message -->
   
  </div>
</template>

<script setup>
// Fetch data from the API and store it in a variable called `casinos`.
const { data: foos } = await useFetch('/api/casinos');

// Deconstruct the data for easier access
//const casinos = response?.value?.data || [];

// Log the data for debugging
//console.log('Casinos:', casinos);
</script>
