<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <div>
      <img class="hero" src="@/assets/images/hero.png"/>

      <nav>
        <RouterLink to="/">Planner</RouterLink>
        <RouterLink to="/recipes">Recipes</RouterLink>
        <RouterLink to="/recipe-seeder">Recipe Seeder</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<style scoped>
header {
  display: flex;
  justify-content: center;
}

.hero {
  max-width: 80%;
}

nav {
  width: 100%;
  font-size: 20px;
  text-align: center;
  margin-top: 2rem;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
}

</style>
