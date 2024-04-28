---
to: <%=package%>/vite.config.ts
after: "import { defineConfig } from 'vite'"
inject: true
---
import svgr from 'vite-plugin-svgr'
import tsconfigPaths from 'vite-tsconfig-paths'