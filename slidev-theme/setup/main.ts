import { defineAppSetup } from '@slidev/types'

export default defineAppSetup(({ app, router }) => {
  // 3lectrify theme setup
  // Remove any default decorative elements
  if (typeof window !== 'undefined') {
    // Add global style to hide decorative background text
    const style = document.createElement('style')
    style.textContent = `
      /* Hide all Slidev default decorative backgrounds */
      .slidev-layout::before,
      .slidev-layout::after,
      .slidev-page::before,
      .slidev-page::after,
      [class*="slidev-"]::before,
      [class*="slidev-"]::after {
        content: none !important;
        display: none !important;
      }
    `
    document.head.appendChild(style)
  }
})
