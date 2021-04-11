<template>
  <div class="text-left">
    <router-link to="../AddActivityForm">
      <Button color="blue" msg="Add activity" />
    </router-link>
  </div>
</template>

<script>
import Button from "../Shared/Button.vue";

export default {
  name: "Toolbar",
  components: {
    Button,
  }
}
</script>
