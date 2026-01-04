<script setup>
import { ref } from 'vue'

defineProps({
  msg: String
})

const count = ref(0)
</script>

<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <p class="tagline">
      A modern Vue 3 starter kit with Vite, Vue Router, and Pinia
    </p>
    
    <div class="demo-section">
      <h3>Component Demo</h3>
      <p>You clicked {{ count }} times</p>
      <button @click="count++">Click me</button>
    </div>

    <div class="docs">
      <h3>Quick Start</h3>
      <p>Edit <code>src/App.vue</code> or <code>src/views/HomeView.vue</code> and save to hot-reload.</p>
      <div class="links">
        <a href="https://vuejs.org/" target="_blank" rel="noopener">Vue 3 Docs</a>
        <a href="https://vitejs.dev/" target="_blank" rel="noopener">Vite Docs</a>
        <a href="https://router.vuejs.org/" target="_blank" rel="noopener">Vue Router Docs</a>
        <a href="https://pinia.vuejs.org/" target="_blank" rel="noopener">Pinia Docs</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.hello {
  padding: 2rem;
}

h1 {
  font-size: 3rem;
  color: #42b883;
  margin-bottom: 1rem;
}

.tagline {
  font-size: 1.3rem;
  color: #666;
  margin-bottom: 2rem;
}

.demo-section {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  margin-bottom: 2rem;
}

.demo-section h3 {
  color: #35495e;
  margin-bottom: 1rem;
}

.demo-section p {
  font-size: 1.2rem;
  margin: 1rem 0;
}

.demo-section button {
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

.demo-section button:hover {
  background-color: #35495e;
}

.docs {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.docs h3 {
  color: #35495e;
  margin-bottom: 1rem;
}

.docs p {
  margin-bottom: 1.5rem;
  line-height: 1.6;
}

.links {
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
  justify-content: center;
}

.links a {
  display: inline-block;
  padding: 0.5rem 1rem;
  background-color: #f0f0f0;
  color: #42b883;
  text-decoration: none;
  border-radius: 4px;
  font-weight: 500;
  transition: all 0.3s;
}

.links a:hover {
  background-color: #42b883;
  color: white;
}
</style>
