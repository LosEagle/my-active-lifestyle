<template>
  <div class="rounded bg-gray-100 p-4">
    <div class="grid grid-flow-col grid-auto-col">
      <ActivityCardTitle />
      <div class="category inline-block text-right">
        <Button msg="running" color="blue" />
        <span class="mr-1"></span>
        <Button msg="planned" color="red" />
      </div>
    </div>
    <ActivityCardBody />
    <ActivityCardRating />
  </div>
</template>

<script>
import ActivityCardTitle from "./ActivityCardTitle.vue";
import ActivityCardBody from "./ActivityCardBody.vue";
import Button from "../Shared/Button.vue";
import ActivityCardRating from "./ActivityCardRating.vue";

export default {
  name: "ActivityCard",
  components: {
    ActivityCardRating,
    Button,
    ActivityCardBody,
    ActivityCardTitle
  }
}
</script>
