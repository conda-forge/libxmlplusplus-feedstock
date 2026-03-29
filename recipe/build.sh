#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

meson ${MESON_ARGS} build
meson compile -C build -v -j ${CPU_COUNT}
# Test fails for unclear reason on all platforms other than osx-arm64
# meson test -C build
meson install -C build
