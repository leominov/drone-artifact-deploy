# Drone artifact deploy

Deploy application like a boss and nobody's watching at you

## Usage

`/opt/drone/drone-agent/profiles/my-deploy.sh`:

```shell
#!/bin/bash

deploy() {
    SSH_CMD="ssh -p 3389 -o UserKnownHostsFile=/dev/null -o LogLevel=quiet -o StrictHostKeyChecking=no $USER@server.com"
    SCP_CMD="scp -r -o UserKnownHostsFile=/dev/null -o LogLevel=quiet -o StrictHostKeyChecking=no"
    "$SCP_CMD" "$SOURCE/" "$USER@server.com:/opt/application/"
    "$SSH_CMD" systemctl restart applocation
}

main() {
    echo "Deploying as $PROFILE"
    deploy
    echo "Done without errors"
}
```

`.drone.yml`:

```yaml
---
pipeline:
  deploy:
    image: drone-artifact-deploy:latest
    profile: my-deploy
    user: buildagent
    volumes:
      - /opt/drone/drone-agent/.ssh:/root/.ssh
      - /opt/drone/drone-agent/profiles:/profiles
```
