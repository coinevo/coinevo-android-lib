#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/coinevo/coinevo"
version="v1.0.1-evo"

if [ ! -d "coinevo" ]; then
  git clone ${url} -b ${version}
  cd coinevo
  git submodule update --recursive --init
else
  cd coinevo
  git checkout ${version}
  git pull
  git submodule update --recursive --init
fi
