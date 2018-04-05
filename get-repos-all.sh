#!/usr/bin/env bash

set -euo pipefail

# Source common variables
. ./env-vars.sh

# Variables
CURDIR="$(dirname $(readlink -f $0))"

# CLone all repos
for repo in "${GITHUB_REPOS[@]}"; do
    if [ -z "$(ls -A ${repo})" ]; then
        git clone --recursive ${GITHUB_BASE_URL}/${GITHUB_ORG}/${repo}
    else
       bash -c "\
           cd ${repo} && \
           git checkout master && \
           git pull origin master \
        "
    fi
done
