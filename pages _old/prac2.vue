<template>
    <div class="bg-slate-50 min-h-screen p-8">
      <h1 class="text-2xl font-bold mb-4">Casinos</h1>
      <h1 class="text-2xl  mb-4">Here is a list of all casinos in the US. If you have an idea of what you are looking for,
        you can narrow your choices by searching for a particular casino by  city ,state or casino name  here.</h1>
      <!-- Loading State -->
      <p v-if="!casinos">Loading casinos...</p>
      <!-- Casino Cards -->
      <div v-else class="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <!-- Loop thru the casinos ref -->
        <div
          v-for="casino in casinos"
          :key="casino.id"
          class="flex max-w-[600px]  py-5 px-2  mt-14.5  shadow-xl rounded-xl justify-between bg-white">
          <div class= "flex-col">
          
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">
              {{ casino.name }}
            </h5>
            <p class="font-normal text-gray-700">
              {{ casino.city }}, {{ casino.cstate }}
            </p>
            <p class="mt-2 font-normal text-gray-700">
              <strong>Website:</strong> {{ casino.website }}
            </p>
            <p class="mt-2 font-normal text-gray-700">
              <strong>Has Craps Table:</strong> {{ casino.crapstables }}
            </p>
         </div>

        <div class="flex"> 
         <img src="https://nadia.s3.us-east-1.amazonaws.com/smallcraps.jpg" class="profile-img px-2 shadow-inner">
         </div>

          </div>
        </div>
      </div>
   

  </template>
<script setup>


  import { ref } from 'vue';
  
  //Set casinos const as a ref
  const casinos = ref(null);
  
  // Fetch data from the API with this function.
  async function fetchCasinos() {
    const { data } = await useFetch('/api/casinos');
    //This line assigns the fetched data (data.value) to the reactive
    //casinos variable.
    casinos.value = data.value;
  }
  

  //Run the function that fetches the data and assigns the ref casinos.value.

  fetchCasinos();
  </script>
  



<style lang="scss" scoped>

</style>