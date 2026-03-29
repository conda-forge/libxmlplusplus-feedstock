#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

meson ${MESON_ARGS} build
meson compile -C build -v -j ${CPU_COUNT}
meson test -C build
meson install -C build
