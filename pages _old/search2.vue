<template>
    <!-- <div> -->

        <form class="flex items-center max-w-sm mx-auto">   
    <label for="simple-search" class="sr-only">Search</label>
    <div class="relative w-full">
        <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
            <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 20">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5v10M3 5a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 10a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm12 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm0 0V6a3 3 0 0 0-3-3H9m1.5-2-2 2 2 2"/>
            </svg>
        </div>
        <input v-model="searchInput" type="text" id="simple-search" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search by casino name or city " required />
    </div>
</form>




<a href="#" class="flex flex-col items-center bg-white border border-gray-200 rounded-lg shadow md:flex-row md:max-w-xl hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700">
    <img class="profile-img px-2 shadow-inner" src="https://nadia.s3.us-east-1.amazonaws.com/smallcraps.jpg" alt="">
    <div class="flex flex-col justify-between p-4 leading-normal">
        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Noteworthy technology acquisitions 2021</h5>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
    </div>
</a>








<br><br>

<div class="max-w-[750px] py-8 px-2 flex flex-col shadow-xl rounded-xl bg-white">
      <h1 class="text-2xl font-bold mb-4">Casinos</h1>
      <!-- Loading State -->
      <p v-if="!casinos">Loading casinos...</p>
      <!-- Casino Cards -->
      <div v-else class="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <div
          v-for="casino in searchResults"
          :key="casino.id"
          class="casino-card bg-white border border-gray-200 rounded-lg shadow-md"
        >
          <div class="p-5">
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
        </div>
      </div>
    </div>

    
</template>

<script setup>
    const searchInput = useState(() => null)
    const searchResults = useState(() => null)
    const {data} = await useFetch('/api/query', {
        immediate: false,
        query: {
            input: searchInput
        },
            transform: data => {
                searchResults.value = data
            }
        })
    
       
         console.log('data');
</script>
