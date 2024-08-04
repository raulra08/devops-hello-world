#!/bin/bash

PYTHON_VENV_PATH=$(pwd)/out
SRC_PATH="src"

PYTHON_ACTIVE_BIN="${PYTHON_VENV_PATH}/bin/activate"
SOURCE_ARTIFACT_PATH="${PYTHON_VENV_PATH}/${SRC_PATH}"

function setup_virtual_environment() {
  if [ -d "${PYTHON_VENV_PATH}" ]; then
      echo "Virtual environment already exists. Skipping setup."
      return
  fi

  echo "Creating virtual environment..."
    
  python3 -m venv "${PYTHON_VENV_PATH}"
}

function create_source_artifact() {
  if [ -d "${SOURCE_ARTIFACT_PATH}" ]; then
      echo "Source artifact directory already exists. Skipping setup."
      return
  fi
  mkdir -p "${SOURCE_ARTIFACT_PATH}"
}

function copy_artifacts_to_venv() {
  cp -r "${SRC_PATH}/"* "${SOURCE_ARTIFACT_PATH}"
}

function install_dependencies() {
  echo "Installing dependencies..."
  source "${PYTHON_ACTIVE_BIN}"
  python3 -m pip install -r "${SOURCE_ARTIFACT_PATH}/requirements.txt"
}

setup_virtual_environment
create_source_artifact
copy_artifacts_to_venv
install_dependencies