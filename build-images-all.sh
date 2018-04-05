#!/usr/bin/env bash

set -euo pipefail

# Source common variables
. ./env-vars.sh

# Variables
CURDIR="$(dirname $(readlink -f $0))"
NUM_REPOS=${#GITHUB_REPOS[@]}

# CLone all repos
for i in `seq 1 ${NUM_REPOS}`; do
    bash -c "\
        cd ${GITHUB_REPOS[$i]} && \
        docker build -t ${DOCKER_TAG}/${DOCKER_NAMES[$i]} .
    "
done
