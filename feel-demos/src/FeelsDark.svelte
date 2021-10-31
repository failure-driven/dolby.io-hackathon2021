<style lang="postcss">
  .App {
    background-color: bg-black-900;
    min-height: 100vh;
  }
  h1 {
    color: whitesmoke;
    @apply text-4xl font-extrabold leading-tight tracking-tighter;
  }
  /* @screen md {
    .h1 {
      @apply text-5xl;
    }
  } */
</style>

<script lang="ts">
  import {onMount} from 'svelte'
</script>

<div class="App">
  <h1>Feels Dark</h1>
</div>
