#!/bin/bash
set -e

export $(grep -v '^#' .env | xargs)

CONTAINER_NAME="${COMPOSE_PROJECT_NAME}-App"

docker exec $CONTAINER_NAME npm install
docker exec $CONTAINER_NAME supervisorctl start caddy
