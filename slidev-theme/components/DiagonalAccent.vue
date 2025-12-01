<template>
  <div class="diagonal-accent-element" :class="variant">
    <div class="diagonal-shape"></div>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  variant?: 'top-right' | 'bottom-left' | 'full'
}>()
</script>

<style scoped>
.diagonal-accent-element {
  position: absolute;
  overflow: hidden;
  pointer-events: none;
  z-index: 1;
}

.diagonal-accent-element.top-right {
  top: 0;
  right: 0;
  width: 50%;
  height: 100%;
}

.diagonal-accent-element.bottom-left {
  bottom: 0;
  left: 0;
  width: 50%;
  height: 100%;
}

.diagonal-accent-element.full {
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.diagonal-shape {
  position: absolute;
  width: 200%;
  height: 200%;
  background: linear-gradient(
    var(--diagonal-angle, 135deg),
    transparent 30%,
    rgba(60, 80, 103, 0.3) 50%,
    transparent 70%
  );
  transform: skewX(-15deg);
  top: -50%;
  right: -50%;
}

.bottom-left .diagonal-shape {
  left: -50%;
  bottom: -50%;
  top: auto;
  right: auto;
}
</style>


