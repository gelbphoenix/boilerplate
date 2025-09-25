# Open WebUI via docker

> [!NOTE]
> [Open WebUI](https://github.com/open-webui/open-webui) is developed by [Open WebUI](https://github.com/open-webui) and the licence of the project is applicable for this.

## How to setup?

### What do I need?

- A computer on which this can be installed (can be a Raspberry Pi or a VPS – small if you only use either small local LLMs or APIs or large)
- A Linux OS (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- A web server (I recommend [caddy](https://caddyserver.com/))
- Optionally a domain

### Setup

1. Copy the `compose.yml` into the directory where Open WebUI shall be
2. Copy the `.env.example` into the same directory and rename it to `.env`
3. [OPTIONAL] Edit `compose.yml` and `.env` to fit your needs
4. Create the needed directories
5. Let the comtainers run for 10 seconds so that SearXNG can create it's config folders
6. Add `- json` to `formats:` and the valkey server to `valkey > url` in searxng/settings.yml
7. Start the containers back up
8. Create the admin account
