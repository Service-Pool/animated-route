FROM caddy:2-alpine

RUN apk add --no-cache bash git nodejs npm docker-cli

CMD ["bash", "/tmp/app/command.sh"]
