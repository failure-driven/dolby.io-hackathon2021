<style lang="postcss">
  h1 {
    @apply text-4xl font-extrabold tracking-wider;
  }
  main {
    color: greenyellow;
    @apply w-full items-center flex-col flex h-full;
  }
  .container {
    border: 1px solid greenyellow;
    @apply relative items-center min-h-full; /* how to @apply sm:w-4/6 */
  }
  .content {
    border: 1px solid greenyellow;
    @apply h-full pt-10 pb-10;
  }
  header {
    @apply absolute w-full;
  }
  footer {
    @apply absolute bottom-0 w-full;
  }
  footer nav {
    max-width: 100%;
    overflow-y: hidden;
    @apply flex place-items-center;
  }
  footer nav button {
    border: 1px solid greenyellow;
    @apply p-5 m-3;
  }
  .face-container {
    min-width: 25%;
    padding: 5px;
    @apply grid justify-items-center;
  }
  .face {
    border: 1px solid greenyellow;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    @apply flex justify-around flex-col;
  }
</style>

<script lang="ts">
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
  <div class="container w-full sm:w-4/6 md:w-3/6 lg:w-4/12 ">
    <header>
      <h1>Feels Swipe</h1>
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
    <footer>
      <nav>
        {#each [...buttons].map((_, index) => index + 2) as count}
          <div>
            <button on:click={() => changeView(count)}>{count}</button>
          </div>
        {/each}
      </nav>
    </footer>
  </div>
</main>
