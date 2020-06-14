const env = process.env.NODE_ENV || "production";
const config: Record<string, any> = {
  production: {
    port: 8080
  },
  dev: {
    port: 8080
  }
};

export default config[env];