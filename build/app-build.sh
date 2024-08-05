#!/bin/bash

PYTHON_VENV_PATH=$(pwd)/out
SRC_PATH="src"

PYTHON_ACTIVE_BIN="${PYTHON_VENV_PATH}/bin/activate"
OUT_ARTIFACT_PATH="${PYTHON_VENV_PATH}/${SRC_PATH}"

function setup_virtual_environment() {
  if [ -d "${PYTHON_VENV_PATH}" ]; then
      echo "Virtual environment already exists. Skipping setup."
      return
  fi

  echo "Creating virtual environment..."
    
  python3 -m venv "${PYTHON_VENV_PATH}"
}

function create_out_artifact() {
  if [ -d "${OUT_ARTIFACT_PATH}" ]; then
      echo "Out artifact directory already exists. Skipping step."
      return
  fi
  mkdir -p "${OUT_ARTIFACT_PATH}"
}

function copy_artifacts_to_venv() {
  cp -r requirements.txt "${PYTHON_VENV_PATH}"
  cp -r "${SRC_PATH}/"* "${OUT_ARTIFACT_PATH}"
}

function install_dependencies() {
  echo "Installing dependencies..."
  source "${PYTHON_ACTIVE_BIN}"
  python3 -m pip install -r "${PYTHON_VENV_PATH}/requirements.txt"
}

setup_virtual_environment
create_out_artifact
copy_artifacts_to_venv
install_dependencies