Collection of scripts to help managin remote boot containers
================

## Usage

Modify the env-vars.sh file according to your needs.
Specially important is the GITHUB_REPOS_PREFIX
variable, in that you can refer to existing repos,
instead of using just the ones clone inside here

### Clone all related repositories

    get-repos-all.sh

### Remove all related repositories

    remove-repos-all.sh

### Start Composed ervices

    run-composed-all.sh

### Stop all Composed services

    stop-composed-all.sh
