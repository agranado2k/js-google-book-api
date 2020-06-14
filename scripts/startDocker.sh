#!/bin/bash
set -e

DOCKER_IMAGE_WITH_TAG="${DOCKER_IMAGE}:${DOCKER_TAG}"
echo "Starging docker with image ${DOCKER_IMAGE_WITH_TAG}"
docker run --rm -p 80:80 "${DOCKER_IMAGE_WITH_TAG}"
