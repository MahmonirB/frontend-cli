---
to: <%=package%>/tsconfig.json
after: "jsx"
inject: true
---
    "baseUrl": "./",
    "paths": {
      "src/*": ["src/*"],
      "store/*": ["src/store/*"],
      "components/*": ["src/components/*"],
      "containers/*": ["src/containers/*"],
      "context/*": ["src/context/*"],
      "hooks/*": ["src/hooks/*"],
      "utils/*": ["src/utils/*"],
      "views/*": ["src/views/*"],
      "assets/*": ["src/assets/*"],
      "common/*": ["src/common/*"]
    },
