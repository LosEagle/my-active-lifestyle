<template>
  <span
      :class="[color === 'blue' && 'bg-blue-400', color === 'red' && 'bg-red-400']"
      class="text-white rounded p-2"
  >
    {{ msg }}
  </span>
</template>

<script>
export default {
  name: 'ActivityCardPill',
  props: {
    msg: String,
    color: String,
    blue: String
  }
};
</script>
