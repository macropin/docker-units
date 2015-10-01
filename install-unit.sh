#!/usr/bin/env bash

set -e

UNITS="$*"

for U in $UNITS; do
    echo ">> Installing $U"
    sudo install -o root -g root -m 644 $U /etc/systemd/system/ 
done

sudo systemctl daemon-reload

for U in $UNITS; do
    U=$(basename $U)
    echo ">> Activating $U"
    sudo systemctl enable $U
    sudo systemctl restart $U
done

