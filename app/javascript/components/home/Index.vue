<template>
  <div>
    <HeaderView v-bind:title="title" v-bind:description="description" />
    <Contents v-bind:contents="contents" />
  </div>
</template>

<script>
import HeaderView from "../HeaderView.vue";
import Contents from "./Contents.vue";
import { toRefs } from 'vue';

export default {
  components: {
     HeaderView,
     Contents
  },
  props: {
    initialData: {
      type: Object,
      default: () => {}
    }
  },
  setup(props) {
    const { title, description, contents } = toRefs(props.initialData)
    return { title, description, contents }
  }
};
</script>

<style scoped></style>