<script setup>
import { ref } from 'vue'

const features = ref([
  {
    title: 'Vue 3',
    description: 'Latest version of Vue with Composition API',
    icon: '🚀'
  },
  {
    title: 'Vite',
    description: 'Lightning fast build tool and dev server',
    icon: '⚡'
  },
  {
    title: 'Vue Router',
    description: 'Official router for Vue.js with SPA support',
    icon: '🛤️'
  },
  {
    title: 'Pinia',
    description: 'Type-safe state management for Vue',
    icon: '🍍'
  }
])
</script>

<template>
  <div class="about">
    <h1>About This Starter Kit</h1>
    <p class="description">
      This is a Vue 3 frontend starter kit built with modern tools and best practices.
      It provides a solid foundation for building scalable web applications.
    </p>

    <div class="features">
      <div v-for="feature in features" :key="feature.title" class="feature-card">
        <div class="icon">{{ feature.icon }}</div>
        <h3>{{ feature.title }}</h3>
        <p>{{ feature.description }}</p>
      </div>
    </div>

    <div class="tech-stack">
      <h2>Technology Stack</h2>
      <ul>
        <li><strong>Vue 3:</strong> Progressive JavaScript framework</li>
        <li><strong>Vite:</strong> Next generation frontend tooling</li>
        <li><strong>Vue Router:</strong> Official routing library</li>
        <li><strong>Pinia:</strong> Intuitive state management</li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
.about {
  max-width: 900px;
  margin: 0 auto;
}

h1 {
  color: #42b883;
  font-size: 2.5rem;
  margin-bottom: 1rem;
  text-align: center;
}

.description {
  font-size: 1.2rem;
  line-height: 1.6;
  color: #666;
  text-align: center;
  margin-bottom: 3rem;
}

.features {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
  margin-bottom: 3rem;
}

.feature-card {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  text-align: center;
  transition: transform 0.3s, box-shadow 0.3s;
}

.feature-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.feature-card h3 {
  color: #35495e;
  margin-bottom: 0.5rem;
}

.feature-card p {
  color: #666;
  line-height: 1.5;
}

.tech-stack {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.tech-stack h2 {
  color: #35495e;
  margin-bottom: 1.5rem;
  text-align: center;
}

.tech-stack ul {
  list-style: none;
  padding: 0;
}

.tech-stack li {
  padding: 1rem;
  margin-bottom: 0.5rem;
  background: #f9f9f9;
  border-radius: 4px;
  line-height: 1.6;
}

.tech-stack li strong {
  color: #42b883;
}
</style>
