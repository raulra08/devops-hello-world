#!/bin/bash

PYTHON_VENV_PATH=$(pwd)/out
PYTHON_ACTIVE_BIN="${PYTHON_VENV_PATH}/bin/activate"

function run() {
    source "${PYTHON_ACTIVE_BIN}"
    python3 -m src.main
}

run