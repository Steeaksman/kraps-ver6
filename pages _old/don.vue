
  
  <template>
    <div>
  {{ Casinos.name }}
    </div>
  </template>
  
  <script setup>
  const fetchLibrary = async () => {
    const { data } = await $fetch('/api/don')
  }
//   console.log(data.value)
  </script>
  
  <style lang="scss" scoped>
  
  </style>