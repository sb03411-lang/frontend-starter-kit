<script setup>
import { ref } from 'vue'
import { useCounterStore } from '@/stores/counter'
import HelloWorld from '@/components/HelloWorld.vue'

const counter = useCounterStore()
</script>

<template>
  <div class="home">
    <HelloWorld msg="Welcome to Vue 3 Frontend Starter Kit" />
    
    <div class="counter-section">
      <h2>Pinia Store Example</h2>
      <p>Counter: {{ counter.count }}</p>
      <div class="button-group">
        <button @click="counter.increment">Increment</button>
        <button @click="counter.decrement">Decrement</button>
        <button @click="counter.reset">Reset</button>
      </div>
      <p class="info">Double: {{ counter.doubleCount }}</p>
    </div>
  </div>
</template>

<style scoped>
.home {
  text-align: center;
}

.counter-section {
  margin-top: 3rem;
  padding: 2rem;
  background: white;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.counter-section h2 {
  color: #42b883;
  margin-bottom: 1rem;
}

.counter-section p {
  font-size: 1.5rem;
  margin: 1rem 0;
}

.button-group {
  display: flex;
  gap: 1rem;
  justify-content: center;
  margin: 1.5rem 0;
}

button {
  background-color: #42b883;
  color: white;
  border: none;
  padding: 0.75rem 1.5rem;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1rem;
  font-weight: 500;
  transition: background-color 0.3s;
}

button:hover {
  background-color: #35495e;
}

.info {
  color: #666;
  font-size: 1rem;
}
</style>
