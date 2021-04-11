<template>
  <div class="container mx-auto">
    <div class="m-4">
      <div class="mb-3">
        <Toolbar />
      </div>
      <ActivityCard />
      <div class="mb-2"></div>
      <ActivityCard />
      <div class="mb-2"></div>
      <ActivityCard />
      <div class="mb-2"></div>
      <ActivityCard />
    </div>
  </div>
</template>

<script setup>
import ActivityCard from './ActivityCard/ActivityCard.vue'
import Toolbar from './Toolbar/Toolbar.vue'
</script>

<style scoped>
</style>
