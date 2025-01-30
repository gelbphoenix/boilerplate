#!/bin/sh
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl media remove
docker compose -f /opt/mastodon/docker-compose.yml run --rm console bin/tootctl preview_cards remove