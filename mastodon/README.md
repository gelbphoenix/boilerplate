# Mastodon via docker

> [!NOTE]
> Mastodon is developed by the Mastodon gGmbH and the licence of Mastodon is applicable for this.

## How to setup?

### What do I need?

- a VPS with 4 CPU cores and 50+ GB storage (for example: [Hetzner CX32](https://www.hetzner.com/cloud/))
- a Linux-based operating system (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- a web server (I recommend [caddy](https://caddyserver.com/))
- a Domain
- a SMTP server

### To setup

1. Secure and prepare your system (Follow the [Mastodon docs](https://docs.joinmastodon.org/admin/prerequisites/) for this)

2. Create a folder for Mastodon (e.g. `/opt/mastodon`).

```bash
mkdir /opt/mastodon
```

3. Copy `compose.yml` and `auto-cleanup.sh` into that folder. Make the .sh file executeable.

4. (If you use the Caddy web server) Copy the content of `mastodon` in a way that Caddy can use it. (Either directly into `/etc/caddy/Caddyfile` or with `sites-available/` and `sites-enabled/` folders in `/etc/caddy/`)

5. Change the `/opt/mastodon/compose.yml` in the `auto-cleanup.sh` to reflect the path of your `compose.yml`.

6. (Optional) Edit the `compose.yml`.

7. Pull the needed images.

```bash
docker compose pull
```

8. Create the `public/` (the path must reflect the path in the `compose.yml`) directory and change the ownership to `991:991`.

```bash
mkdir public
chown -R 911:911 public/
```

9. Move `robots.txt` into the `public/` directory.

```bash
mv robots.txt ./public/
```

10. Use the mastodon:setup task to generate a basic configuration. Copy the configration the task will output into a file named `.env.production`.

```bash
docker compose run --rm console rake mastodon:setup

# Use for PostgreSQL
PostgreSQL host: db
PostgreSQL port: 5432
Name of PostgreSQL database: postgres
Name of PostgreSQL user: postgres
Password of PostgreSQL user:

# Use for Redis
Redis host: redis
Redis port: 6379
Redis password:
```

11. (Optional) Enable Elasticsearch (the es service in the docker-compose.yml): Add the following into the `.env.production`.

```
ES_ENABLED=true
ES_HOST=es
ES_PORT=9200
```

12. Add the following to the crontab of the root user

```crontab
0 0 * * * /path/to/auto-cleanup.sh
```

13. Start the Mastodon server

```bash
docker compose up -d
```
