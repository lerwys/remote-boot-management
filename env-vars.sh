#!/usr/bin/env bash

GITHUB_BASE_URL="https://github.com"
GITHUB_ORG=lerwys
DOCKER_TAG=lnlsdig
GITHUB_REPOS_DOCKER=( \
    "docker-nfs-server" \
    "docker-tftp-hpa" \
    "docker-dhcpd" \
    "docker-bind" \
)
# Important to keep this synch'ed with 
# GITHUB_REPOS_DOCKER
DOCKER_NAMES=( \
    "nfs-server" \
    "tftp-hpa" \
    "dhcpd" \
    "bind" \
)
GITHUB_REPOS_DOCKER_COMPOSED=( \
    "docker-registry-composed" \
    "docker-nfs-server-composed" \
    "docker-tftp-hpa-composed" \
    "docker-dhcpd-composed" \
    "docker-bind-composed" \
)
GITHUB_REPOS_MISC=(\
    "debian-rootfs" \
    "docker-debian-base-image" \
)
GITHUB_REPOS=(\
    ${GITHUB_REPOS_DOCKER[@]} \
    ${GITHUB_REPOS_DOCKER_COMPOSED[@]} \
    ${GITHUB_REPOS_MISC[@]} \
)
