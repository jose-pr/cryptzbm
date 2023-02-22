#!/bin/bash

_SOURCE_PATH=$(realpath "${BASH_SOURCE}")
_SCRIPTS_PATH=$(dirname "$_SOURCE_PATH")
_ROOT_PATH=$(dirname "$_SCRIPTS_PATH")
_ZBM_SRC="$_ROOT_PATH/zfsbootmenu"

_BUILD_DIR="$_ROOT_PATH/build"
mkdir -p "$_BUILD_DIR"

"$_ZBM_SRC/zbm-builder.sh" -i "${CRYPTZBM_TAG:-localhost/cryptzbm_embded}:${CRYPTZBM_VERSION:-latest}" -H -R "$@"