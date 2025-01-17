#!/usr/bin/env bash
set -eux

export PYENV_ROOT=$HOME/.pyenv

export PATH=${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}
pyenv global 3.10.9 3.11.1
python -m pip install --upgrade pip
pip install tox
tox -p 3 -r -e py310,py311,doc
