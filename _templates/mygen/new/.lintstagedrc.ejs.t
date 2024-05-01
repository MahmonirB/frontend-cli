---
to: <%=package%>/.lintstagedrc
---
{
  "**/*.{js,jsx,ts,tsx}": ["yarn lint", "yarn format"]
}