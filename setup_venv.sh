#!/usr/bin/env bash
set -e

SCRIPT_DIR=$(cd $(dirname $0);pwd)
VENV_DIR=${SCRIPT_DIR}/venv
PY_VERSION=3.6.2

if [ $# -lt 1 ]; then
  echo "usage: setup_venv.sh <new_environment_name>" 
  exit 1
else
  TARGET_NAME=$1
fi

# install Python if not installed
pyenv install ${PY_VERSION} -s

cd ${SCRIPT_DIR}
mkdir -p "${VENV_DIR}"; cd "${VENV_DIR}"
pyenv local ${PY_VERSION}

# create new virtual environment with venv
if [ -d "${TARGET_NAME}" ]; then
  echo "warning: ${TARGET_NAME} is already exists."
fi
python3 -m venv ${TARGET_NAME}

# enter the environment and install some packages
source ${TARGET_NAME}/bin/activate
pip install jupyter matplotlib

exit 0
