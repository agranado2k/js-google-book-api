const env = process.env.NODE_ENV || "production";
const config: Record<string, any> = {
  production: {
    port: 80
  },
  dev: {
    port: 80
  }
};

export default config[env];