<template>
   
        <div   class="max-w-[750px]  py-8 px-2 flex flex-col  shadow-xl rounded-xl bg-white">
            <div class="profile flex items-center even:flex-row-reverse even:text-right">
    
       <h1>Casinos</h1>
       <!-- Loading State -->
       <p >Loading casinos...</p>
   <div v-for="casino in casinos" :key="casino.id">
           <h2>{{ casino.id }}</h2>
           <h2>{{ casino.name }}</h2>
           <p> {{ casino.city }}</p>
           <p> {{ casino.cstate }}</p>
           <p> {{ casino.casinotype }}</p>
   </div>
   </div>
   </div>
   
  
   </template>


   <script setup>
   // Fetch data from the API
   const { data: casinos } = await useFetch('/api/casinos');
   
   
   
   // Log the data for debugging
   //console.log('Casinos:', casinos);
   </script>