#!/bin/bash
_SOURCE_PATH=$(realpath "${BASH_SOURCE}")
_SCRIPTS_PATH=$(dirname "$_SOURCE_PATH")
_ROOT_PATH=$(dirname "$_SCRIPTS_PATH")
_ZBM_SRC="$_ROOT_PATH/zfsbootmenu"

_BUILD_ARGS=()

while read -r line; do
    if [[ "$line" ]]; then
        _BUILD_ARGS+=( '-p' "$line" )
    fi
done <"$_SCRIPTS_PATH/PKGS"

cd $_ZBM_SRC
"$_ZBM_SRC/releng/docker/image-build.sh" "${_BUILD_ARGS[@]}" "$@"
