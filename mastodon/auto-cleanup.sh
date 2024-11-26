#!/bin/sh
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl media remove --days=7
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl media remove --remove-headers --include-follows --days=0
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl preview_cards remove --days=14
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl media remove-orphans
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl statuses remove --days=21
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl accounts prune