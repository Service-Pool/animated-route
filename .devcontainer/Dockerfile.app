FROM caddy:2-alpine

RUN apk add --no-cache bash git nodejs npm docker-cli openssh-client supervisor python3 py3-pip

# Install Multivisor RPC component only
RUN pip3 install --break-system-packages multivisor[rpc]
RUN mkdir -p /var/log/supervisor

COPY _configs/Caddyfile /etc/caddy/Caddyfile
COPY _configs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["bash", "/tmp/app/cmd-animated-route.sh"]