<template>
  <div class="number-badge" :class="size">
    <span class="number">{{ number }}</span>
    <span v-if="label" class="label">{{ label }}</span>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  number: number | string
  label?: string
  size?: 'small' | 'medium' | 'large'
}>()
</script>

<style scoped>
.number-badge {
  display: inline-flex;
  flex-direction: column;
  align-items: center;
  gap: var(--space-xs);
}

.number {
  font-size: 6rem;
  font-weight: var(--font-weight-regular);
  color: var(--3l-middle-green);
  line-height: 1;
}

.label {
  font-size: var(--font-size-body);
  color: var(--3l-white);
  text-transform: uppercase;
  letter-spacing: 0.1em;
}

.number-badge.small .number {
  font-size: 3rem;
}

.number-badge.medium .number {
  font-size: 4.5rem;
}

.number-badge.large .number {
  font-size: 8rem;
}
</style>


