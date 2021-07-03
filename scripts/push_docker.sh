#!/usr/bin/env bash
set -e pipefail

source ../config/.env
TAG="$(git describe --tags)"

echo "TAG:                   $TAG"
echo "DOCKER_IMAGE:          $DOCKER_IMAGE"
echo "HTTP_PORT:             $HTTP_PORT"
echo "HTTPS_PORT:             $HTTPS_PORT"

docker compose -f docker-compose.yml build
docker tag "$DOCKER_IMAGE" "$DOCKER_IMAGE:$TAG"
docker tag "$DOCKER_IMAGE" "$DOCKER_IMAGE:latest"
docker push --all-tags "$DOCKER_IMAGE"

echo "pushed $DOCKER_IMAGE:$TAG as latest ✅"
