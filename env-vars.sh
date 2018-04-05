#!/usr/bin/env bash

GITHUB_BASE_URL="https://github.com"
GITHUB_ORG=lnls-sirius
DOCKER_TAG=lnls
GITHUB_REPOS_DOCKER=( \
    "docker-bind" \
    "docker-dhcpd" \
    "docker-debian-base-image" \
    "docker-tftp-hpa" \
    "docker-nfs-server" \
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
GITHUB_REPOS_DOCKER_COMPOSED=( \
    "docker-registry-composed" \
    "docker-bind-composed" \
    "docker-dhcpd-composed" \
    "docker-tftp-hpa-composed" \
    "docker-nfs-server-composed" \
)
GITHUB_REPOS_MISC=(\
    "debian-rootfs" \
)
GITHUB_REPOS=(\
    ${GITHUB_REPOS_DOCKER[@]} \
    ${GITHUB_REPOS_DOCKER_COMPOSED[@]} \
    ${GITHUB_REPOS_MISC[@]} \
)
