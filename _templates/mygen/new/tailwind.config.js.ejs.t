---
to: <%=package%>/tailwind.config.js
---
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./index.html', './src/**/*.{html,js,ts,tsx}'],
  theme: {
    extend: {},
  },
  plugins: [],
}