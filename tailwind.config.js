/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html",
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./app.vue",
    "./error.vue",
    "./src/**/*.{vue,js,ts}",
     "./node_modules/flowbite/**/*.{js,ts}"
  ],
  theme: {
    extend: {
      colors: {
        "dodgeroll-gold": "#F79F1A",
        "apple-green": "#046E1B",
        "dire-wolf": "#292727",
      },
    },
   
    container: {
      center: true,
      padding: "2rem",
    },
  },
  plugins: [
    // require('@tailwindcss/typography'),
    require('flowbite/plugin')
  ],
};

