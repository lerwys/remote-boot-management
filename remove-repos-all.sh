#!/usr/bin/env bash

set -euo pipefail

# Source common variables
. ./env-vars.sh

# Variables
CURDIR="$(dirname $(readlink -f $0))"

# CLone all repos
for repo in "${GITHUB_REPOS[@]}"; do
    rm -rf ${repo}
done
