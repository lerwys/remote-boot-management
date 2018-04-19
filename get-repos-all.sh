#!/usr/bin/env bash

set -euo pipefail

# Source common variables
. ./env-vars.sh

# Variables
CURDIR="$(dirname $(readlink -f $0))"

# CLone all repos
for repo in "${GITHUB_REPOS[@]}"; do
    if [ -z "$(ls -A ${repo})" ]; then
        # Remove prefix if any
        repo_noprefix=$(echo "${repo}" | sed -e "s#^${GITHUB_REPOS_PREFIX}##g")

        # Special place for CA gateway
        if [ ! -z "$(echo ${repo} | grep "docker-ca-gateway-composed-deploy")" ]; then
            git clone --recursive ${GITHUB_CA_GATEWAY_BASE_URL}/${GITHUB_CA_GATEWAY_ORG}/${repo_noprefix}
        else
            git clone --recursive ${GITHUB_BASE_URL}/${GITHUB_ORG}/${repo_noprefix}
        fi
    else
       bash -c "\
           cd ${repo} && \
           git checkout master && \
           git pull origin master \
        "
    fi
done
