import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    port: 3000,
    open: 'http://localhost:3000', // Specify full URL with localhost
    host: 'localhost' // Ensure host is set to localhost
  },
})
