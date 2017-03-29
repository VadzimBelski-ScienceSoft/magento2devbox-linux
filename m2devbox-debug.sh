#!/bin/bash

ssh_port=$(docker port magento2devbox_web_d86a9542acd68410a91aec05caec3d4e 22)
ssh_port=${ssh_port#*:}

ssh -N -p $ssh_port -R 9000:localhost:9000 magento2@127.0.0.1