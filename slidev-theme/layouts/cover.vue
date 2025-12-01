<template>
  <div class="slidev-layout cover-layout">
    <div class="cover-content">
      <h1 v-if="$slidev.nav.currentSlide?.title" class="cover-title">
        {{ $slidev.nav.currentSlide.title }}
      </h1>
      <slot />
      <div v-if="subtitle" class="cover-subtitle">
        {{ subtitle }}
      </div>
    </div>
    <Logo class="cover-logo" />
  </div>
</template>

<script setup lang="ts">
defineProps<{
  subtitle?: string
}>()
</script>

<style scoped>
.cover-layout {
  background: var(--3l-deep-blue) !important;
  position: relative;
  overflow: hidden;
  width: 100%;
  height: 100%;
}

/* Hide any default Slidev decorative background text */
.cover-layout::before,
.cover-layout::after {
  display: none !important;
  content: none !important;
}

.cover-content {
  position: relative;
  z-index: 10;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  height: 100%;
  padding: var(--space-xl);
}

.cover-logo {
  position: absolute;
  bottom: var(--space-lg);
  right: var(--space-lg);
  opacity: 0.6;
  height: 40px;
}

.cover-title {
  font-size: var(--font-size-h1);
  font-weight: var(--font-weight-light);
  line-height: 1.21;
  margin-bottom: var(--space-xl);
  max-width: 80%;
  position: relative;
  z-index: 20;
}

/* Prevent any shadow/duplicate rendering of the title */
.cover-title::before,
.cover-title::after {
  display: none !important;
  content: none !important;
}

.cover-subtitle {
  font-size: var(--font-size-h2);
  color: var(--3l-middle-green);
  font-weight: var(--font-weight-light);
  margin-top: var(--space-xl);
}

/* Add spacing between any slot content (copy) and title */
.cover-content > * + * {
  margin-top: var(--space-lg);
}
</style>


