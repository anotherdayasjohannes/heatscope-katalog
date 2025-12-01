<script setup lang="ts">
import SlideHeader from '../components/SlideHeader.vue'
</script>

<template>
  <div class="slidev-layout center-layout">
    <SlideHeader />
    <div class="center-content">
      <slot />
    </div>
  </div>
</template>

<style>
.center-layout {
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  height: 100%;
  padding: calc(var(--slide-header-height) + var(--slide-spacing-top)) var(--slide-spacing-horizontal) var(--slide-spacing-bottom) var(--slide-spacing-horizontal);
  position: relative;
}

.center-content {
  max-width: 80%;
}

.center-content h1 {
  font-size: var(--slide-h1);
  font-weight: var(--font-weight-light);
  line-height: 1.21;
  margin-bottom: var(--slide-h1-margin);
  color: var(--3l-white) !important;
}

.center-content h2 {
  font-size: var(--slide-h2);
  font-weight: var(--font-weight-light);
  line-height: 1.28;
  margin-bottom: var(--space-md);
  color: var(--3l-white) !important;
}

.center-content h3 {
  font-size: var(--font-size-h3);
  font-weight: var(--font-weight-regular);
  line-height: 1.7;
  margin-bottom: var(--space-sm);
  color: var(--3l-white) !important;
}
</style>


