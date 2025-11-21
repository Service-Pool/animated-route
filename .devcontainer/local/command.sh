#!/bin/bash

# Creating a user-writable npm prefix for global installs
npm list -g --depth=0 > ~/npm-global-packages.txt
mkdir -p ~/.npm-global
npm config set prefix ~/.npm-global
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Claude Code install
npm install -g @anthropic-ai/claude-code

# Run Caddy in background
caddy run --config /etc/caddy/Caddyfile

# Keep container running
# tail -f /dev/null
