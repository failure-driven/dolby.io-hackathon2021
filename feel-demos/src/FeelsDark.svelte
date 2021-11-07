<style lang="postcss">
  h1 {
    @apply text-4xl font-extrabold tracking-wider;
  }
  main {
    color: greenyellow;
    border: 1px solid greenyellow;
    @apply w-full items-center flex-col flex h-full;
  }
  .content {
    @apply w-full;
  }
  .face-container {
    @apply grid justify-items-center;
  }
  .face {
    border: 1px solid greenyellow;
    width: 200px;
    height: 200px;
    @apply flex justify-around flex-col;
  }
  header nav {
    max-width: 100%;
    overflow-y: hidden;
    @apply flex place-items-center;
  }
  header nav button {
    border: 1px solid greenyellow;
    @apply p-5 m-3;
  }
</style>

<script lang="ts">
  import App from './App.svelte'
  import FeelsSwipe from './FeelsSwipe.svelte'

  let portal = 5

  // {#each [...new Array(portal)].map((_, index) => index + 1) as count}
  let faces: Array<number> = new Array(portal) as Array<number>
  let buttons: Array<number> = new Array(7) as Array<number>

  function changeView(count: number): void {
    portal = count
    faces = new Array(portal) as Array<number>
    buttons = new Array(7) as Array<number>
  }
</script>

<main>
  <header>
    <h1>Feels Dark</h1>
    <nav>
      {#each [...buttons].map((_, index) => index + 2) as count}
        <div>
          <button on:click={() => changeView(count)}>{count}</button>
        </div>
      {/each}
    </nav>
  </header>
  <div class="content">
    <div class="flex flex-wrap">
      {#each [...faces].map((_, index) => index + 1) as count}
        <div class="face-container">
          <div class="face">
            <div>
              User: {count}
            </div>
          </div>
        </div>
      {/each}
    </div>
  </div>
</main>
