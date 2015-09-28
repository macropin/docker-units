#!/usr/bin/env bash

set -e

UNITS="$1"



for U in $UNITS; do
    echo ">> Installing $U"
    sudo install -o root -g root -m 644 $U /etc/systemd/system/ 
done

sudo systemctl daemon-reload

for U in $UNITS; do
    echo ">> Activating $U"
    sudo systemctl enable $U
    sudo systemctl start $U
done

