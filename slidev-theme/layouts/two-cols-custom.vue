<script setup lang="ts">
import SlideHeader from '../components/SlideHeader.vue'
</script>

<template>
  <div class="slidev-layout two-cols-layout">
    <SlideHeader />
    <div class="cols-wrapper">
      <div class="left-col">
        <slot name="left" />
      </div>
      <div class="right-col">
        <slot name="right" />
      </div>
    </div>
  </div>
</template>

<style>
.two-cols-layout {
  height: 100%;
  position: relative;
}

.cols-wrapper {
  display: grid;
  grid-template-columns: 60% 40%;
  gap: var(--space-lg);
  padding: calc(var(--slide-header-height) + 1rem) var(--slide-spacing-horizontal) var(--slide-spacing-bottom) var(--slide-spacing-horizontal);
  height: 100%;
  align-items: flex-start;
}

.left-col {
  padding-right: var(--space-md);
}

.left-col h1 {
  font-size: var(--slide-h1);
  font-weight: var(--font-weight-light);
  line-height: 1.21;
  margin-bottom: var(--slide-h1-margin);
  color: var(--3l-white) !important;
}

.left-col h2 {
  font-size: var(--slide-h2);
  font-weight: var(--font-weight-light);
  line-height: 1.28;
  margin-bottom: var(--space-md);
  color: var(--3l-white) !important;
}

.left-col h3 {
  font-size: var(--font-size-h3);
  font-weight: var(--font-weight-regular);
  line-height: 1.7;
  margin-bottom: var(--space-sm);
  color: var(--3l-white) !important;
}

.left-col p {
  margin-bottom: var(--space-sm);
}

.left-col ul {
  margin-top: var(--space-md);
}

.right-col {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
</style>


