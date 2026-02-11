# Ghost via docker

> [!NOTE]
> Ghost is developed by the Ghost Foundation and the licence of Ghost is applicable for this.

## How to setup?

### What do I need?

- A computer on which this can be installed (can be a Raspberry Pi or a small VPS)
- A Linux OS (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- A domain for your Ghost instance
- git

### Setup

1. Clone the official docker-ghost repo from Github with git

```bash
git clone https://github.com/TryGhost/ghost-docker
# or via ssh
git clone git@github.com:TryGhost/ghost-docker.git
```

2. Copy the here included `.env` into the cloned repo folder and replace [GHOST_DOMAIN] with your domain.

3. Follow the steps from `TINYBIRD.md` if you want to use Ghost's included analytic tools. (If not remove "analytics," from the COMPOSE_PROFILES variable and comment the Tinybird variables out in .env)

4. Start Ghost

```bash
docker compose up -d
```

4. Finish the setup in the Browser under `https://[GHOST_DOMAIN]/ghost`

If you want or need you can use `social-web-modal` and replace `[GHOST_AP_HANDLE]` with your own handle (which is visible under `https://[GHOST_DOMAIN]/ghost/#/activitypub/profile`)
