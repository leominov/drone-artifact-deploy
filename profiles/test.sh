#!/bin/bash

deploy() {
    CMD="hostname && date && whoami"
    eval "$CMD"
}

main() {
    echo "Deploying as $PROFILE"
    deploy
    echo "Done without errors"
}
