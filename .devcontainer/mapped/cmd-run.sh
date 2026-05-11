#!/bin/bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR"

export $(grep -v '^#' .env | xargs)

CONTAINER_NAME="${COMPOSE_PROJECT_NAME}-App"

docker exec $CONTAINER_NAME npm install
docker exec $CONTAINER_NAME supervisorctl start caddy
