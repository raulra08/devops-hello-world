#!/bin/bash

PYTHON_VENV_PATH=$(pwd)/out

function cleanup() {
    rm -rf "${PYTHON_VENV_PATH}"
    rm -rf "$(pwd)/.pytest_cache"
    rm -rf "$(pwd)/.coverage"
    find "$(pwd)/" -name __pycache__ | xargs rm -fr
}

cleanup