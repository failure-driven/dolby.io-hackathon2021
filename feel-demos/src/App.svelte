<style>
  :global(body) {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
  }

  .App {
    text-align: center;
  }

  .App code {
    background: #0002;
    padding: 4px 8px;
    border-radius: 4px;
  }

  .App p {
    margin: 0.4rem;
  }

  .App-header {
    background-color: #f9f6f6;
    color: #333;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    font-size: calc(10px + 2vmin);
  }

  .App-link {
    color: #ff3e00;
  }

  .App-logo {
    height: 36vmin;
    pointer-events: none;
    margin-bottom: 3rem;
    animation: App-logo-spin infinite 1.6s ease-in-out alternate;
  }

  @keyframes App-logo-spin {
    from {
      transform: scale(1);
    }
    to {
      transform: scale(1.06);
    }
  }
</style>

<script lang="ts">
  import page from 'page'

  import FeelsDark from './FeelsDark.svelte'
  import SvelteDemoApp from './SvelteDemoApp.svelte'

  import type {SvelteComponent} from 'svelte'

  let component: typeof SvelteComponent = FeelsDark

  page.redirect('/', '/feels-dark')
  page('/feels-dark', () => (component = FeelsDark))
  page('/svelte-demo-app', () => (component = SvelteDemoApp))

  page.start()
</script>

<div class="App">
  <nav class="flex items-center justify-between flex-wrap bg-teal-500 p-6">
    <ul class="flex">
      <li class="mr-6">
        <a
          href="/feels-dark"
          class="text-blue-500 hover:text-blue-800"
          class:active={component === FeelsDark}>Feels Dark</a
        >
      </li>
      <li class="mr-6">
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
