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
    echo "No source folder specified, using default './'"
    SOURCE="./"
fi

USER=$PLUGIN_USER
if [ -z "$PLUGIN_USER" ]; then
    echo "No user specified, using root"
    USER="root"
fi

PROFILES=$PLUGIN_PROFILES
if [ -z "$PLUGIN_PROFILES" ]; then
    echo "No profiles folder specified, using default '/profiles/'"
    PROFILES="/profiles/"
fi

source "$PROFILES/$PROFILE.sh"
main
