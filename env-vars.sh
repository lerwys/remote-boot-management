#!/usr/bin/env bash

GITHUB_BASE_URL="https://github.com"
GITHUB_ORG=lnls-sirius
DOCKER_TAG=lnls
GITHUB_REPOS_PREFIX=
GITHUB_REPOS_DOCKER=( \
    "${GITHUB_REPOS_PREFIX}docker-bind" \
    "${GITHUB_REPOS_PREFIX}docker-dhcpd" \
    "${GITHUB_REPOS_PREFIX}docker-debian-base-image" \
    "${GITHUB_REPOS_PREFIX}docker-tftp-hpa" \
    "${GITHUB_REPOS_PREFIX}docker-nfs-server" \
)
# Important to keep this synch'ed with
# GITHUB_REPOS_DOCKER
DOCKER_NAMES=( \
    "bind" \
    "dhcpd" \
    "debian-base-image" \
    "tftp-hpa" \
    "nfs-server" \
)
# Special place for CA gateway
GITHUB_CA_GATEWAY_BASE_URL="https://github.com"
GITHUB_CA_GATEWAY_ORG=lnls-dig
GITHUB_REPOS_DOCKER_COMPOSED=( \
    "${GITHUB_REPOS_PREFIX}docker-registry-composed" \
    "${GITHUB_REPOS_PREFIX}docker-bind-composed" \
    "${GITHUB_REPOS_PREFIX}docker-dhcpd-composed" \
    "${GITHUB_REPOS_PREFIX}docker-tftp-hpa-composed" \
    "${GITHUB_REPOS_PREFIX}docker-nfs-server-composed" \
    "${GITHUB_REPOS_PREFIX}docker-ca-gateway-composed-deploy" \
)
GITHUB_REPOS_MISC=(\
    "${GITHUB_REPOS_PREFIX}debian-rootfs" \
)
GITHUB_REPOS=(\
    ${GITHUB_REPOS_DOCKER[@]} \
    ${GITHUB_REPOS_DOCKER_COMPOSED[@]} \
    ${GITHUB_REPOS_MISC[@]} \
)
