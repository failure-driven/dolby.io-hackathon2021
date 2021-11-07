<style lang="postcss">
  .App {
    text-align: center;
    @apply h-screen relative;
  }
  nav {
    @apply absolute flex items-center justify-between flex-wrap p-6;
  }
  ul {
    @apply flex;
  }
  li {
    @apply mr-6;
  }
  main {
    @apply h-full pt-20;
  }
</style>

<script lang="ts">
  import page from 'page'

  import FeelsDark from './FeelsDark.svelte'
  import FeelsSwipe from './FeelsSwipe.svelte'
  import SvelteDemoApp from './SvelteDemoApp.svelte'

  import type {SvelteComponent} from 'svelte'

  let component: typeof SvelteComponent = FeelsDark

  page.redirect('/', '/feels-dark')
  page('/feels-dark', () => (component = FeelsDark))
  page('/feels-swipe', () => (component = FeelsSwipe))
  page('/svelte-demo-app', () => (component = SvelteDemoApp))

  page.start()
</script>

<div class="App">
  <nav>
    <ul>
      <li>
        <a
          href="/feels-dark"
          class="text-blue-500 hover:text-blue-800"
          class:active={component === FeelsDark}>Feels Dark</a
        >
      </li>
      <li>
        <a
          href="/feels-swipe"
          class="text-blue-500 hover:text-blue-800"
          class:active={component === FeelsSwipe}>Feels Swipe</a
        >
      </li>
      <li>
        <a
          href="/svelte-demo-app"
          class="text-blue-500 hover:text-blue-800"
          class:active={component === SvelteDemoApp}>Svelte Demo App</a
        >
      </li>
    </ul>
  </nav>
  <main>
    <svelte:component this={component} />
  </main>
</div>
