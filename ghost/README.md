# Ghost via docker

> [!NOTE]
> Uptime Kuma is developed by louislam and the licence of Uptime Kuma is applicable for this.

## How to setup?

### What do I need?

- A computer on which this can be installed (can be a Raspberry Pi or a small VPS)
- A Linux OS (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- a web server (I recommend [caddy](https://caddyserver.com/))

### Setup

1. Move or copy the `docker-compose.yml` into the directory where Uptime Kuma shall be
2. Change the `changeMe` value in the `docker-compose.yml` to a strong password and (optional) edit the file
3. (If you use the Caddy web server) Copy the content of `ghost` in a way that Caddy can use it. (Either directly into `/etc/caddy/Caddyfile` or with `sites-available/` and `sites-enabled/` folders in `/etc/caddy/`)
4. Start Uptime Kuma and complete setup in the browser

```bash
docker compose up -d
```
