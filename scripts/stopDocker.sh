#!/bin/bash
set -e

DOCKER_IMAGE_WITH_TAG="${DOCKER_IMAGE}:${DOCKER_TAG}"
echo "Stoping docker with image ${DOCKER_IMAGE_WITH_TAG}"
docker stop $(docker ps -a -q --filter ancestor=${DOCKER_IMAGE_WITH_TAG} --format="{{.ID}}")
