#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]:-$0}")")"
ROOT_PATH="$(realpath "${SCRIPT_DIR}/..")"
readonly SCRIPT_DIR
readonly ROOT_PATH

cd "$ROOT_PATH"
mkdir -p build && cd build
cmake ..
cmake --build . -j $(nproc)
cmake --install .
