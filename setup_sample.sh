#!/usr/bin/env bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0);pwd)
TARGET_DIRNAME=deep_learning_from_scratch
JUPYTER_NB_CONFDIR="${HOME}/.jupyter"
JUPYTER_NB_CONFIG=${JUPYTER_NB_CONFDIR}/jupyter_notebook_config.py

cd ${SCRIPT_DIR}

if [ ! -d ${TARGET_DIRNAME} ]; then
  git clone https://github.com/oreilly-japan/deep-learning-from-scratch.git ${TARGET_DIRNAME}
fi

if [ ! -f ${JUPYTER_NB_CONFIG} ]; then
  mkdir -p ${JUPYTER_NB_CONFDIR}
  echo "c.NotebookApp.browser = u'Safari'" >> ${JUPYTER_NB_CONFIG}
fi

exit 0
