#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 CONTAINER_TAG"
  echo "Example: docker-build-container.sh hello-world-app"
  exit 1
fi

function build_app_container() {
    TAG="$1"
    docker build -t ${TAG} .
}

CONTAINER_TAG="$1"

build_app_container ${CONTAINER_TAG}