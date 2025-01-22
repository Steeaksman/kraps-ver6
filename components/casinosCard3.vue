<template>
  <div   class=" max-w-[600px]  py-7 px-2 flex  mt-14.5  shadow-xl rounded-xl justify-between bg-white">
    <div class= "flex-col">
       
        
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
        <img src="https://nadia.s3.us-east-1.amazonaws.com/smallcraps.jpg" class="profile-img px-2 shadow-inner">
      </div>
      
      
   
    
    







</template>
