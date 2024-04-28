---
to: <%=package%>/vite.config.ts
after: "plugins"
inject: true
---
  server: {
    port: 6006,
    host: true
  },
  build: {
    // generate manifest.json in outDir
    manifest: true,
    outDir: 'build',
  },
  optimizeDeps: {
    exclude: ['js-big-decimal']
  },