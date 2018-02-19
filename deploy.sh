#!/bin/bash

set -o errexit
set -o pipefail

PROFILE=$PLUGIN_PROFILE
if [ -z "$PLUGIN_PROFILE" ]; then
    echo "No profile specified"
    exit 1
fi

SOURCE=$PLUGIN_SOURCE
if [ -z "$PLUGIN_SOURCE" ]; then
    SOURCE="./"
    echo "No source folder specified, using default: $SOURCE"
fi

USER=$PLUGIN_USER
if [ -z "$PLUGIN_USER" ]; then
    USER="root"
    echo "No user specified, using default: $USER"
fi

PROFILES=$PLUGIN_PROFILES
if [ -z "$PLUGIN_PROFILES" ]; then
    PROFILES="/profiles/"
    echo "No profiles folder specified, using default: $PROFILES"
fi

# shellcheck disable=SC1090
source "$PROFILES/$PROFILE.sh"
main
