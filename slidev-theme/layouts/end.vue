<template>
  <div class="slidev-layout end-layout">
    <div class="end-content">
      <h1 class="end-title">{{ title || 'Vielen Dank!' }}</h1>
      <p class="end-subtitle">{{ subtitle || 'Haben Sie Fragen?' }}</p>
      <div v-if="contact" class="contact-info">
        {{ contact }}
      </div>
    </div>
    <Logo class="end-logo" />
  </div>
</template>

<script setup lang="ts">
defineProps<{
  title?: string
  subtitle?: string
  contact?: string
}>()
</script>

<style scoped>
.end-layout {
  background: linear-gradient(135deg, var(--3l-dark-blue) 0%, var(--3l-deep-blue) 100%);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  height: 100%;
  position: relative;
}

.end-content {
  z-index: 10;
}

.end-title {
  font-size: var(--font-size-h1);
  font-weight: var(--font-weight-light);
  margin-bottom: var(--space-md);
}

.end-subtitle {
  font-size: var(--font-size-h2);
  color: var(--3l-middle-green) !important;
  font-weight: var(--font-weight-light);
  margin-bottom: var(--space-lg);
}

.contact-info {
  font-size: var(--font-size-body);
  color: var(--3l-middle-green) !important;
}

.end-logo {
  position: absolute;
  bottom: var(--space-lg);
  right: var(--space-lg);
  opacity: 0.6;
  height: 40px;
}
</style>


