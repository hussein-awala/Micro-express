#!/bin/bash
source ~/.bashrc # to access "docker-compose" alias in production
root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$root"/api-gateway
docker-compose down
cd "$root"/auth
docker-compose -f docker-compose-hub.yaml -f docker-compose.local.yaml -f docker-compose.hot-reload.yaml down
cd "$root"/article
docker-compose -f docker-compose-hub.yaml -f docker-compose.local.yaml -f docker-compose.hot-reload.yaml down
cd "$root"/cart
docker-compose -f docker-compose-hub.yaml -f docker-compose.local.yaml -f docker-compose.hot-reload.yaml down
cd "$root"/documentation
docker-compose -f docker-compose-hub.yaml -f docker-compose.local.yaml -f docker-compose.hot-reload.yaml down
cd "$root"/user
docker-compose -f docker-compose-hub.yaml -f docker-compose.local.yaml -f docker-compose.hot-reload.yaml down
cd "$root"/kafka
docker-compose down