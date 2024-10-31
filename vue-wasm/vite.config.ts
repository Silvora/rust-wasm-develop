import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import wasmPlugin from 'vite-plugin-wasm';
// https://vite.dev/config/
export default defineConfig({
  plugins: [vue(),wasmPlugin()],
})
