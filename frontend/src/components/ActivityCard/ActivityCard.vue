<template>
  <div class="rounded bg-gray-100 m-4 p-4">
    <div class="grid grid-flow-col grid-auto-col">
      <ActivityCardTitle />
      <div class="category inline-block text-right">
        <ActivityCardPill msg="running" color="blue" />
        <span class="mr-1"></span>
        <ActivityCardPill msg="planned" color="red" />
      </div>
    </div>
    <ActivityCardBody />
    <ActivityCardRating />
  </div>
</template>

<script>
import ActivityCardTitle from "./ActivityCardTitle.vue";
import ActivityCardBody from "./ActivityCardBody.vue";
import ActivityCardPill from "./ActivityCardPill.vue";
import ActivityCardRating from "./ActivityCardRating.vue";

export default {
  name: "ActivityCard",
  components: {
    ActivityCardRating,
    ActivityCardPill,
    ActivityCardBody,
    ActivityCardTitle
  }
}
</script>
