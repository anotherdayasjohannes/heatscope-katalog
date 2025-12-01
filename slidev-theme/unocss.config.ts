import { defineConfig, presetUno } from 'unocss'

export default defineConfig({
  presets: [
    presetUno(),
  ],
  theme: {
    colors: {
      'green': '#88C0B1',
      'orange': '#D04227',
    },
  },
})
