<template>
  <div>
    hello wasm
  </div>
</template>

<script setup lang="ts">
import Worker from './worker/worker.js?worker';
let worker = new Worker();
worker.postMessage({
  class:'fib',
  args: 10
});

worker.onmessage = function (event) {
  console.log('Received message ', event.data);
}
</script>

<style scoped>

</style>
