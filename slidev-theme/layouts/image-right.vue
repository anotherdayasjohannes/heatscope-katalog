<script setup lang="ts">
import SlideHeader from '../components/SlideHeader.vue'

defineProps<{
  image?: string
}>()
</script>

<template>
  <div class="slidev-layout image-right-layout">
    <SlideHeader />
    <div class="content-wrapper">
      <div class="content-left">
        <slot />
      </div>
      <div class="image-right" :style="{ backgroundImage: `url(${image})` }">
        <slot name="image" />
      </div>
    </div>
  </div>
</template>

<style>
.image-right-layout {
  height: 100%;
  position: relative;
  padding: 0 !important;
}

/* Override Slidev's default slide padding */
.slidev-layout.image-right-layout {
  padding: 0 !important;
  margin: 0 !important;
}

.image-right-layout .slidev-page {
  padding: 0 !important;
}

.content-wrapper {
  display: flex;
  height: calc(100% - var(--slide-header-height));
  margin-top: var(--slide-header-height);
  padding: 0;
  margin-left: 0;
  margin-right: 0;
}

.content-left {
  flex: 0 0 55%;
  padding: var(--slide-spacing-top) var(--slide-spacing-horizontal) var(--slide-spacing-bottom) var(--slide-spacing-horizontal);
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.content-left h1 {
  font-size: var(--slide-h1);
  font-weight: var(--font-weight-light);
  line-height: 1.21;
  margin-bottom: var(--slide-h1-margin);
  color: var(--3l-white) !important;
}

.content-left h2 {
  font-size: var(--slide-h2);
  font-weight: var(--font-weight-light);
  line-height: 1.28;
  margin-bottom: var(--space-md);
  color: var(--3l-white) !important;
}

.content-left h3 {
  font-size: var(--font-size-h3);
  font-weight: var(--font-weight-regular);
  line-height: 1.7;
  margin-bottom: var(--space-sm);
  color: var(--3l-white) !important;
}

.content-left ul {
  margin-top: var(--space-md);
}

.image-right {
  flex: 1;
  background-size: cover;
  background-position: top center;
  background-repeat: no-repeat;
  margin: 0;
  padding: 0;
}
</style>


