#!/bin/bash

export PKG_DIR="python"

rm -rf ${PKG_DIR} && mkdir -p ${PKG_DIR}

docker run --rm -v $(pwd):/tmp -w /tmp lambci/lambda:build-python3.6 \
    pip install -r requirements.txt -t ${PKG_DIR}