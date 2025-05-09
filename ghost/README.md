# Ghost via docker

> [!NOTE]
> Ghost is developed by the Ghost Foundation and the licence of Ghost is applicable for this.

## How to setup?

### What do I need?

- A computer on which this can be installed (can be a Raspberry Pi or a small VPS)
- A Linux OS (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- a web server (I recommend [caddy](https://caddyserver.com/))
- A domain for your Ghost instance

### Setup

1. Move or copy the `docker-compose.yml` into the directory where Uptime Kuma shall be
2. Change the `changeMe` value in the `docker-compose.yml` to a strong password and `https://blog.example.com` to your domain
3. (Optional) Edit the `docker-compose.yml`
4. (If you use the Caddy web server) Copy the content of `ghost` in a way that Caddy can use it. Change `example.com` to your domain. (Either directly into `/etc/caddy/Caddyfile` or with `sites-available/` and `sites-enabled/` folders in `/etc/caddy/`)
5. Start Ghost and complete setup in the browser

```bash
docker compose up -d
```
