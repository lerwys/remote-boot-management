#!/usr/bin/env bash

set -euo pipefail

# Source common variables
. ./env-vars.sh

# Variables
CURDIR="$(dirname $(readlink -f $0))"

# CLone all repos
for repos in "${GITHUB_REPOS_DOCKER_COMPOSED[@]}"; do
    bash -c "\
        cd ${repos} && \
        docker-compose down
    "
done
