#!/bin/bash

deploy() {
    SSH_CMD="ssh -p 3389 -o UserKnownHostsFile=/dev/null -o LogLevel=quiet -o StrictHostKeyChecking=no $USER@keikogi.ru"
    SCP_CMD="scp -P 3390 -o UserKnownHostsFile=/dev/null -o LogLevel=quiet -o StrictHostKeyChecking=no"
    $(echo $SSH_CMD) whoami
    $(echo $SSH_CMD) hostname
}

main() {
    echo "Deploying as $PROFILE"
    deploy
    echo "Done without errors"
}
