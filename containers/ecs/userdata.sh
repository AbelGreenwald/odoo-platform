#!/bin/bash
echo ECS_CLUSTER=AbelsWork >> /etc/ecs/ecs.config
yum -y upgrade
yum install -y nfs-utils nano tree bind-utils
mkdir /mnt/efs 
mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-ed768d94.efs.us-east-2.amazonaws.com:/ /mnt/