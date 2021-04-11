<template>
  <span
      :class="[color === 'blue' && 'bg-blue-400 hover:bg-blue-500', color === 'red' && 'bg-red-400 hover:bg-red-500']"
      class="text-white rounded p-2 cursor-pointer duration-200"
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
