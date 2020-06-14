#!/bin/bash
set -e

DOCKER_TAG=$1
DOCKER_IMAGE_WITH_TAG="${DOCKER_IMAGE}:${DOCKER_TAG}"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
echo "Pushing Docker image ${DOCKER_IMAGE_WITH_TAG}"
docker push "${DOCKER_IMAGE_WITH_TAG}"
