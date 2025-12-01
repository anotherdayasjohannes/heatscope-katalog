<template>
  <div class="slide-header">
    <div class="header-spacer"></div>
    <Logo class="header-logo" />
  </div>
</template>

<style>
.slide-header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: var(--slide-header-height);
  background: var(--3l-dark-blue);
  display: flex;
  align-items: center;
  justify-content: flex-end;
  padding: 0 var(--slide-spacing-horizontal);
  z-index: 100;
  border-bottom: 1px solid rgba(136, 192, 177, 0.1);
}

.header-spacer {
  flex: 1;
}

.header-logo {
  opacity: 0.6;
  padding: 16px 0;
  height: 24px;
}
</style>
