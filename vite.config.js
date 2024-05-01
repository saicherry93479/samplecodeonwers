import { defineConfig } from "vite";
import react from "@vitejs/plugin-react-swc";


const port = import.meta.env.CONTAINER_PORT || 5000;

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
	host: '0.0.0.0',
    port: port,
  },
  // base: "/hometopia/",
});
