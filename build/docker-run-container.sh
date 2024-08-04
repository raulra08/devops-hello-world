#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 CONTAINER_TAG"
  echo "Example: docker-run-container.sh hello-world-app"
  exit 1
fi

function run_app_container() {
    TAG="$1"
    docker run ${TAG}
}

CONTAINER_TAG="$1"

run_app_container ${CONTAINER_TAG}