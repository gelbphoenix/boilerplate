# Shlink via docker

> [!NOTE]
> Shlink is developed by Alejandro Celaya and the licence of Shlink is applicable for this.

## How to setup?

### What do I need?

- A computer on which this can be installed (can be a Raspberry Pi or a small VPS)
- A Linux OS (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- A web server (I recommend [caddy](https://caddyserver.com/))
- A domain which will be used for the link shortener

### Setup

1. Move or copy the `docker-compose.yml` into the directory where Shlink shall be
2. Replace `short.link` with your domain and `changeme` and `changemeRoot` with strong passwords in the `docker-compose.yml`
3. Replace `geolite_key` with your [GeoLite2](https://www.maxmind.com/en/geolite2/signup) license key (this is free, see the [shlink documentation](https://shlink.io/documentation/geolite-license-key/) if you need helf with this step)
4. (Optional) Edit the `docker-compose.yml`
5. (If you use the Caddy web server) Copy the content of `uptimekuma` in a way that Caddy can use it. Change the `short.link` to your domain. (Either directly into `/etc/caddy/Caddyfile` or with `sites-available/` and `sites-enabled/` folders in `/etc/caddy/`)
6. Start Shlink

```bash
docker compose up -d
```

7. Execute the following command to get an API key for the shlink server **(Save this! You'll need it for the web client)**

```bash
docker-compose exec shlink shlink api-key:generate
```
