#!/bin/bash

deploy() {
    CMD="date"
    "$CMD"
}

main() {
    echo "Deploying as $PROFILE"
    deploy
    echo "Done without errors"
}
