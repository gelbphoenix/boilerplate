# Forgejo via docker

> [!NOTE]
> Forgejo is developed by the Forgejo community and the licence of Forgejo is applicable for this.

## How to setup?

### What do I need?

- A computer on which this can be installed (can be a Raspberry Pi or a small VPS)
- A Linux OS (recommended: Ubuntu or Debian)
- Docker (v27.3.1 or higher) and Docker Compose (v2.29.7 or higher)
- A domain for your Forgejo instance
- git

### Setup

1. Copy the `compose.yml` into the directory where Forgejo shall be (for example `/opt/forgejo`)

2. Copy `.env.example` into the same directory and rename it to `.env`

3. Edit `compose.yml` and `.env` to fit your needs. (You definitely should change "CHANGEME" to a secure password)

4. Create the needed directories

5. Copy `forgejo-shell` into `/usr/local/bin/` and make it executable

6. Create the git user. Replace `[FORGEJO_DATA_DIRECTORY]` with the host path to the git directory within the forgejo data directory

```bash
sudo adduser --system --group --shell /usr/local/bin/forgejo-shell --home [FORGEJO_DATA_DIRECTORY] git
```

7. Create `/etc/ssh/sshd_config.d/forgejo.conf` with following content:

```
Match User git
  AuthorizedKeysCommandUser git
  AuthorizedKeysCommand /usr/bin/docker exec -i -u git forgejo /usr/local/bin/forgejo keys -e git -u %u -t %t -k %k
  PasswordAuthentication no
```

8. Set `USERID` and `GROUPID` in `.env` to the uid and gid of the git user (lookup via `id git`).

9. (If you use the Caddy web server) Copy the content of `forgejo` in a way that Caddy can use it. (Either directly into `/etc/caddy/Caddyfile` or with `sites-available/` and `sites-enabled/` folders in `/etc/caddy/`) Replace `[FORGEJO DOMAIN]` with the domain you want to use for Forgejo.

10. Start the Forgejo container:

```bash
docker compose up -d
```

11. Finish setup in the browser
