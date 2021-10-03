#!/bin/sh 

echo "Adding user $CONTAINER_USER"

useradd -m -G users $CONTAINER_USER

echo "Launching TFTPd on port $SELECTED_PORT"

in.tftpd -L \
    --address 0.0.0.0:$SELECTED_PORT \
    --create \
    --secure \
    -vvv \
    -R 20000:20005 \
    --user $CONTAINER_USER \
    /data/
