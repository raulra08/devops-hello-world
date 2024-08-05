#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 CONTAINER_TAG[:<VERSION>]"
  echo "Example: docker-run-container.sh app:v1.0"
  exit 1
fi

function run_app_container() {
    TAG="$1"
    docker run --name app ${TAG}
}

CONTAINER_TAG="$1"

run_app_container ${CONTAINER_TAG}