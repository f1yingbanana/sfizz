#!/bin/bash
set -ex

mkdir -p build/${INSTALL_DIR} && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DSFIZZ_JACK=OFF -DSFIZZ_TESTS=OFF -DSFIZZ_SHARED=OFF -DSFIZZ_STATIC_LIBSNDFILE=ON ..
make -j$(nproc)
