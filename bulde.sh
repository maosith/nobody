#!/bin/bash

# make O=out ARCH=arm64 r8q_eur_openx_defconfig

export PATH=/usr/bin:$PATH

make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      r8q_defconfig

make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      Image.gz
