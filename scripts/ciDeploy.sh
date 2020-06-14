#bin/bash
set -e

RELEASE_VERSION="$1"
DOCKER_IMAGE_WITH_TAG="${DOCKER_IMAGE}:${DOCKER_TAG}"
RELEASE_DOCKER_IMAGE_WITH_TAG="${DOCKER_IMAGE}:${RELEASE_VERSION}"
HEROKU_RELEASE="${HEROKU_REGISTRY}/${HEROKU_APP}/web"

echo "Pull image ${DOCKER_IMAGE_WITH_TAG}"
docker pull "${DOCKER_IMAGE_WITH_TAG}"

echo "Tag image to release version ${RELEASE_DOCKER_IMAGE_WITH_TAG}"
docker tag "$DOCKER_IMAGE_WITH_TAG" "$RELEASE_DOCKER_IMAGE_WITH_TAG"
echo "Logging to Dockerhub..."
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
echo "Updating tag ${RELEASE_DOCKER_IMAGE_WITH_TAG}..."
docker push "$RELEASE_DOCKER_IMAGE_WITH_TAG"

echo "Deploy to Heroku release version ${RELEASE_DOCKER_IMAGE_WITH_TAG}..."
docker tag "$RELEASE_DOCKER_IMAGE_WITH_TAG" "$HEROKU_RELEASE"
docker login -u="$HEROKU_USERNAME" --password="$HEROKU_TOKEN" "$HEROKU_REGISTRY" 
docker push "$HEROKU_RELEASE"
heroku container:release web --app $HEROKU_APP
