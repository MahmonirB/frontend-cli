---
to: <%=package%>/package.json
after: "lint"
inject: true
---
    "format": "npx prettier --write .",
    "type-check": "tsc --noEmit",