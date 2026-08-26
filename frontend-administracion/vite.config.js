import { defineConfig, loadEnv } from 'vite';
import react from '@vitejs/plugin-react';
import { fileURLToPath, URL } from 'node:url';

export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, '..', '');
  return {
    envDir: '..',
    plugins: [react()],
    resolve: { alias: { '@': fileURLToPath(new URL('./src', import.meta.url)) } },
    server: { port: Number(env.ADMIN_PORT || 5177), host: '0.0.0.0' },
    preview: { port: Number(env.ADMIN_PORT || 5177), host: '0.0.0.0' },
  };
});
