#!/bin/bash

# Substitute runtime env vars into static JS (Caddy templates doesn't cover .js by default)
sed -i "s|{{env \"CARTO_API_KEY\"}}|${CARTO_API_KEY}|g" /app/js/classes/managers/MapManager.js

# Start supervisord
exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
