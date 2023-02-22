_SOURCE_PATH=$(realpath "${BASH_SOURCE}")
_SCRIPTS_PATH=$(dirname "$_SOURCE_PATH")
_ROOT_PATH=$(dirname "$_SCRIPTS_PATH")
_ZBM_SRC="$_ROOT_PATH/zfsbootmenu"

tag="cryptzbm_embded"

container="$(buildah from cryptzbm)"
buildah copy "${container}" "$_ZBM_SRC" /zbm
buildah commit --rm "${container}" "${tag}"
