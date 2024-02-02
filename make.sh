#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

source make.env

printf '\n'

for r in ${RELEASE};do
    printf '  Building %s/%s:%s...' "${USERNAME}" "${IMAGE}" "${r}"
    docker build \
        --tag "${USERNAME}/${IMAGE}:${r}" \
        . &> /dev/null
    printf ' done.\n'

    printf '  Pushing %s/%s:%s...' "${USERNAME}" "${IMAGE}" "${r}"
    docker push "${USERNAME}/${IMAGE}:${r}" &> /dev/null
    printf ' done.\n'
    printf '\n'
done

exit 0
