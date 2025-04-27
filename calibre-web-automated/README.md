# Calibre-Web Automated via docker

> [!NOTE] > [Calibre-Web Automated](https://github.com/crocodilestick/Calibre-Web-Automated) is developed by [crocodilestick](https://github.com/crocodilestick) and the licence of the project is applicable for this.

## How to setup?

### What do I need?

- A computer on which this can be installed (can be a Raspberry Pi or a small VPS)
- A Linux OS (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- a web server (I recommend [caddy](https://caddyserver.com/))
- A domain for your Calibre-Web Automated instance (So that we can use a domain instead of IP:PORT)

### Setup

1. Move or copy the `docker-compose.yml` into the directory where Uptime Kuma shall be
2. Edit the `docker-compose.yml`. Change the TZ value to **YOUR** time zone.
3. (If you use the Caddy web server) Copy the content of `calibre-web-automated` in a way that Caddy can use it. Change `[YOUR CALIBRE-WEB AUTOMATED DOMAIN]` to your domain. (Either directly into `/etc/caddy/Caddyfile` or with `sites-available/` and `sites-enabled/` folders in `/etc/caddy/`)
4. Start Calibre-Web Automated

```bash
docker compose up -d
```

6. Log into Calibre-Web Automated, change the admin password and setup.

### Default login credentials:

Username

```
admin
```

Password:

```
admin123
```
