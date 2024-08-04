#!/bin/bash

PYTHON_VENV_PATH=$(pwd)/out

function cleanup() {
    rm -rf "${PYTHON_VENV_PATH}"
}

cleanup