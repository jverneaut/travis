#!/bin/bash
git config --global push.default matching
git remote add deploy ssh://git@$IP:$PORT$DEPLOY_DIR
git push deploy master

ssh root@$IP << EOF
    cd $DEPLOY_DIR
EOF
